.class public Ljcifs/smb/i;
.super Ljava/net/URLStreamHandler;


# static fields
.field static final a:Ljava/net/URLStreamHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljcifs/smb/i;

    invoke-direct {v0}, Ljcifs/smb/i;-><init>()V

    sput-object v0, Ljcifs/smb/i;->a:Ljava/net/URLStreamHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .registers 2

    const/16 v0, 0x1bd

    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3

    new-instance v0, Ljcifs/smb/ba;

    invoke-direct {v0, p1}, Ljcifs/smb/ba;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .registers 15

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smb://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    const-string p2, "smb:////"

    add-int/lit8 p4, p4, 0x2

    :cond_10
    :goto_10
    invoke-super {p0, p1, p2, p3, p4}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_34
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_3f

    invoke-virtual {p0}, Ljcifs/smb/i;->getDefaultPort()I

    move-result v4

    :cond_3f
    const-string v2, "smb"

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Ljcifs/smb/i;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_58
    const-string v1, "smb://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p4, p4, 0x2

    goto :goto_10
.end method
