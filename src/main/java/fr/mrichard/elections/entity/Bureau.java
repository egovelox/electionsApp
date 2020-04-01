package fr.mrichard.elections.entity;

public class Bureau {
    private int idbureau;
    private String codebureau;
    private String lieubureau;
    private String adressebureau;
    private int inscrits;
    private int votants;
    private int nuls;
    private int exprimes;
    private int procurations;
    private int idarrondissement;
    private String flag;


    public Bureau() {
    }

    // FULL CSTRCTOR
    public Bureau(int idbureau, String codebureau, String lieubureau, String adressebureau, int inscrits, int votants, int nuls, int exprimes, int procurations, int idarrondissement, String flag ) {
        this.idbureau = idbureau;
        this.codebureau = codebureau;
        this.lieubureau = lieubureau;
        this.adressebureau = adressebureau;
        this.inscrits = inscrits;
        this.votants = votants;
        this.nuls = nuls;
        this.exprimes = exprimes;
        this.procurations = procurations;
        this.idarrondissement = idarrondissement;
        this.flag = flag;
    }

    // WITHOUD ID PROP
    public Bureau(String codebureau, String lieubureau, String adressebureau, int inscrits, int votants, int nuls, int exprimes, int procurations, int presidentbureau, int idarrondissement, String flag) {
        this.codebureau = codebureau;
        this.lieubureau = lieubureau;
        this.adressebureau = adressebureau;
        this.inscrits = inscrits;
        this.votants = votants;
        this.nuls = nuls;
        this.exprimes = exprimes;
        this.procurations = procurations;
        this.idarrondissement = idarrondissement;
        this.flag = flag;
    }

    // New Bureau from JTable
    public Bureau(String flag){
        this.flag = flag;
        this.lieubureau = "edit";
        this.adressebureau = "edit";
        this.codebureau = "edit";
        this.inscrits = 0;
    }

    public void setIdbureau(int idbureau) {
        this.idbureau = idbureau;
    }

    public void setCodebureau(String codebureau) {
        this.codebureau = codebureau;
    }

    public void setLieubureau(String lieubureau) {
        this.lieubureau = lieubureau;
    }

    public void setAdressebureau(String adressebureau) {
        this.adressebureau = adressebureau;
    }

    public void setInscrits(int inscrits) {
        this.inscrits = inscrits;
    }

    public void setVotants(int votants) {
        this.votants = votants;
    }

    public void setNuls(int nuls) {
        this.nuls = nuls;
    }

    public void setExprimes(int exprimes) {
        this.exprimes = exprimes;
    }

    public void setProcurations(int procurations) {
        this.procurations = procurations;
    }

    public void setIdarrondissement(int idarrondissement) {
        this.idarrondissement = idarrondissement;
    }

    public void setFlag(String flag) {this.flag = flag; }

    public int getIdbureau() {
        return idbureau;
    }

    public String getCodebureau() {
        return codebureau;
    }

    public String getLieubureau() {
        return lieubureau;
    }

    public String getAdressebureau() {
        return adressebureau;
    }

    public int getInscrits() {
        return inscrits;
    }

    public int getVotants() {
        return votants;
    }

    public int getNuls() {
        return nuls;
    }

    public int getExprimes() {
        return exprimes;
    }

    public int getProcurations() {
        return procurations;
    }

    public int getIdarrondissement() {
        return idarrondissement;
    }

    public String getFlag() {return flag; }

    @Override
    public String toString() {
        return "Bureau{" + "idbureau=" + idbureau + ", codebureau=" + codebureau + ", lieubureau=" + lieubureau + ", adressebureau=" + adressebureau + ", inscrits=" + inscrits + ", votants=" + votants + ", nuls=" + nuls + ", exprimes=" + exprimes + ", procurations=" + procurations + ", idarrondissement=" + idarrondissement + ", flag=" + flag + '}';
    }
}
