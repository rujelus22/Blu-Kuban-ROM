.class public abstract Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/net/ftp/FTPFileEntryParser;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preParse(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
