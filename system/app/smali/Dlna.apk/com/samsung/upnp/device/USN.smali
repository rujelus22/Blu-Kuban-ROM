.class public Lcom/samsung/upnp/device/USN;
.super Ljava/lang/Object;
.source "USN.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUDN(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "usnValue"

    .prologue
    .line 39
    if-nez p0, :cond_5

    .line 40
    const-string v2, ""

    .line 45
    :goto_4
    return-object v2

    .line 41
    :cond_5
    const-string v2, "::"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 42
    .local v0, idx:I
    if-gez v0, :cond_12

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 44
    :cond_12
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 45
    .local v1, udnValue:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static final getUUID(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "usnValue"

    .prologue
    .line 50
    if-nez p0, :cond_5

    .line 51
    const-string v1, ""

    .line 59
    :goto_4
    return-object v1

    .line 53
    :cond_5
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ":"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v0, st:Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_16

    .line 56
    const-string v1, ""

    goto :goto_4

    .line 58
    :cond_16
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method
