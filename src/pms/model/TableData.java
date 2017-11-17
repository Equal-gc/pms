package pms.model;

import java.util.List;
import java.util.Map;

/**
 * Created by user on 2017/5/8.
 */
public class TableData {
    private int total;
    private List<Map<String,Object>> data;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<Map<String, Object>> getData() {
        return data;
    }

    public void setData(List<Map<String, Object>> data) {
        this.data = data;
    }
}
