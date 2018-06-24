<?php
class ModelCatalogCity extends Model {
	public function addCity($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "city SET name = '" . $this->db->escape($data['name']) . "', pincodes = '" . $this->db->escape($data['pincodes']) . "', status = '" . (int)$data['status'] . "' ");

		return $city_id;
	}

	public function editCity($city_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "city SET name = '" . $this->db->escape($data['name']) . "', pincodes = '" . $this->db->escape($data['pincodes']) . "', status = '" . (int)$data['status'] . "' WHERE city_id = '" . (int)$city_id . "'");
	}

	public function deleteCity($city_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "city WHERE city_id = '" . (int)$city_id . "'");
	}

	public function getCity($city_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "city WHERE city_id = '" . (int)$city_id . "'");

		return $query->row;
	}

	public function getCitys($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "city r WHERE 1 ";

		if (!empty($data['filter_name'])) {
			$sql .= " AND name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}

		if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
			$sql .= " AND status = '" . (int)$data['filter_status'] . "'";
		}

		$sort_data = array(
			'name',
			'status'			
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY name";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getTotalCitys($data = array()) {
		$sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "city WHERE 1 ";

		if (!empty($data['filter_name'])) {
			$sql .= " AND name LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}

		if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
			$sql .= " AND status = '" . (int)$data['filter_status'] . "'";
		}

		$query = $this->db->query($sql);

		return $query->row['total'];
	}
}