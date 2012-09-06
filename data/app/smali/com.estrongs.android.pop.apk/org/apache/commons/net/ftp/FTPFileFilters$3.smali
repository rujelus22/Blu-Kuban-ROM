.class Lorg/apache/commons/net/ftp/FTPFileFilters$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/net/ftp/FTPFileFilter;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
