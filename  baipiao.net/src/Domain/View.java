package Domain;

import java.util.Date;

public class View {
    private  String view;
    private String author;
    private Date date;

    public String getView() {
        return view;
    }

    public void setView(String view) {
        this.view = view;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "View{" +
                "view='" + view + '\'' +
                ", author='" + author + '\'' +
                ", date=" + date +
                '}';
    }
}
