package Domain;

public class Game {
    private String gamename;
    private String gameuid;
    private String description;
    private String imgurl;
    private String gametag;
    private String company;
    private String videourl;
    private String downloadurl;
    private String gametype;
    private String gamepassword;
    private String updatetime;

    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    public String getGamepassword() {
        return gamepassword;
    }

    public void setGamepassword(String gamepassword) {
        this.gamepassword = gamepassword;
    }

    public String getGamename() {
        return gamename;
    }

    public void setGamename(String gamename) {
        this.gamename = gamename;
    }

    public String getGameuid() {
        return gameuid;
    }

    public void setGameuid(String gameuid) {
        this.gameuid = gameuid;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public String getGametag() {
        return gametag;
    }

    public void setGametag(String gametag) {
        this.gametag = gametag;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getVideourl() {
        return videourl;
    }

    public void setVideourl(String videourl) {
        this.videourl = videourl;
    }

    public String getDownloadurl() {
        return downloadurl;
    }

    public void setDownloadurl(String downloadurl) {
        this.downloadurl = downloadurl;
    }

    public String getGametype() {
        return gametype;
    }

    public void setGametype(String gametype) {
        this.gametype = gametype;
    }

    @Override
    public String toString() {
        return "Game{" +
                "gamename='" + gamename + '\'' +
                ", gameuid='" + gameuid + '\'' +
                ", description='" + description + '\'' +
                ", imgurl='" + imgurl + '\'' +
                ", gametag='" + gametag + '\'' +
                ", company='" + company + '\'' +
                ", videourl='" + videourl + '\'' +
                ", downloadurl='" + downloadurl + '\'' +
                ", gametype='" + gametype + '\'' +
                ", gamepassword='" + gamepassword + '\'' +
                ", updatetime='" + updatetime + '\'' +
                '}';
    }
}
