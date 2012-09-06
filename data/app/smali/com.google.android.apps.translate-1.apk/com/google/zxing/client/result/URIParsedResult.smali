.class public final Lcom/google/zxing/client/result/URIParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "URIParsedResult.java"


# instance fields
.field private final title:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "uri"
    .parameter "title"

    .prologue
    .line 28
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 29
    invoke-static {p1}, Lcom/google/zxing/client/result/URIParsedResult;->massageURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private containsUser()Z
    .registers 8

    .prologue
    const/16 v6, 0x2f

    .line 55
    iget-object v4, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 56
    .local v2, hostStart:I
    add-int/lit8 v2, v2, 0x1

    .line 58
    iget-object v4, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 59
    .local v3, uriLength:I
    :goto_12
    if-ge v2, v3, :cond_1f

    iget-object v4, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_1f

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 62
    :cond_1f
    iget-object v4, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 63
    .local v1, hostEnd:I
    if-gez v1, :cond_28

    .line 64
    move v1, v3

    .line 66
    :cond_28
    iget-object v4, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 67
    .local v0, at:I
    if-lt v0, v2, :cond_36

    if-ge v0, v1, :cond_36

    const/4 v4, 0x1

    :goto_35
    return v4

    :cond_36
    const/4 v4, 0x0

    goto :goto_35
.end method

.method private static isColonFollowedByPortNumber(Ljava/lang/String;I)Z
    .registers 7
    .parameter "uri"
    .parameter "protocolEnd"

    .prologue
    const/4 v2, 0x0

    .line 97
    const/16 v3, 0x2f

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 98
    .local v0, nextSlash:I
    if-gez v0, :cond_f

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 101
    :cond_f
    add-int/lit8 v3, p1, 0x1

    if-gt v0, v3, :cond_14

    .line 109
    :cond_13
    :goto_13
    return v2

    .line 104
    :cond_14
    add-int/lit8 v1, p1, 0x1

    .local v1, x:I
    :goto_16
    if-ge v1, v0, :cond_2b

    .line 105
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_13

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_13

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 109
    :cond_2b
    const/4 v2, 0x1

    goto :goto_13
.end method

.method private static massageURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 82
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 83
    .local v0, protocolEnd:I
    if-gez v0, :cond_1c

    .line 85
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    :goto_1b
    return-object p0

    .line 86
    :cond_1c
    invoke-static {p0, v0}, Lcom/google/zxing/client/result/URIParsedResult;->isColonFollowedByPortNumber(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 88
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    .line 91
    :cond_36
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1b
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .registers 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 72
    .local v0, result:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/URIParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 73
    iget-object v1, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/URIParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isPossiblyMaliciousURI()Z
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/zxing/client/result/URIParsedResult;->containsUser()Z

    move-result v0

    return v0
.end method
