package lv.tsi.javaweb.seabatle.model;

import java.util.HashMap;
import java.util.Map;

public class Field {
    private Map<String, CellContent> content = new HashMap<>();
    private boolean invalid;

    /** // documentation
     * this metod
     * @return true if there are some ships
     */
    public boolean hasMoreShips() {
        return content.containsValue(CellContent.SHIP); // nashli pervij korablj
    }

    public void setShip(String addr) {
        content.put(addr, CellContent.SHIP);
    }

    public boolean hasShip(String addr) {
        return content.get(addr) == CellContent.SHIP;
    }

    public CellContent getCell(String addr) {
        return content.getOrDefault(addr, CellContent.EMPTY);
    }

    public void clear() {
        content.clear();
    }

    public void validate() {
        this.invalid = content.size() != 20;
    }

    public boolean IsInvalid() {
        return invalid;
    }

    public void setCell(String addr, CellContent value) {
        content.put(addr, value);
    }
}
