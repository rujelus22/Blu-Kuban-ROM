.class public Lorg/cups4j/PrintRequestResult;
.super Ljava/lang/Object;
.source "PrintRequestResult.java"


# instance fields
.field private jobId:I

.field private resultCode:Ljava/lang/String;

.field private resultDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lch/ethz/vppserver/ippclient/IppResult;)V
    .registers 3
    .parameter "ippResult"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/cups4j/PrintRequestResult;->resultCode:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lorg/cups4j/PrintRequestResult;->resultDescription:Ljava/lang/String;

    .line 33
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lch/ethz/vppserver/ippclient/IppResult;->getHttpStatusResponse()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cups4j/PrintRequestResult;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 40
    :cond_17
    :goto_17
    return-void

    .line 36
    :cond_18
    invoke-direct {p0, p1}, Lorg/cups4j/PrintRequestResult;->initializeFromHttpStatusResponse(Lch/ethz/vppserver/ippclient/IppResult;)V

    .line 37
    invoke-virtual {p1}, Lch/ethz/vppserver/ippclient/IppResult;->getIppStatusResponse()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 38
    invoke-direct {p0, p1}, Lorg/cups4j/PrintRequestResult;->initializeFromIppStatusResponse(Lch/ethz/vppserver/ippclient/IppResult;)V

    goto :goto_17
.end method

.method private initializeFromHttpStatusResponse(Lch/ethz/vppserver/ippclient/IppResult;)V
    .registers 5
    .parameter "ippResult"

    .prologue
    .line 52
    const-string v2, "HTTP/1.0 (\\d+) (.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 53
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Lch/ethz/vppserver/ippclient/IppResult;->getHttpStatusResponse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 54
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 55
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/cups4j/PrintRequestResult;->resultCode:Ljava/lang/String;

    .line 56
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/cups4j/PrintRequestResult;->resultDescription:Ljava/lang/String;

    .line 58
    :cond_22
    return-void
.end method

.method private initializeFromIppStatusResponse(Lch/ethz/vppserver/ippclient/IppResult;)V
    .registers 5
    .parameter "ippResult"

    .prologue
    .line 43
    const-string v2, "Status Code:(0x\\d+)(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 44
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Lch/ethz/vppserver/ippclient/IppResult;->getIppStatusResponse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 45
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 46
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/cups4j/PrintRequestResult;->resultCode:Ljava/lang/String;

    .line 47
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/cups4j/PrintRequestResult;->resultDescription:Ljava/lang/String;

    .line 49
    :cond_22
    return-void
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .registers 4
    .parameter "string"

    .prologue
    .line 61
    if-eqz p1, :cond_10

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method


# virtual methods
.method public getJobId()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lorg/cups4j/PrintRequestResult;->jobId:I

    return v0
.end method

.method public getResultCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/cups4j/PrintRequestResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/cups4j/PrintRequestResult;->resultDescription:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessfulResult()Z
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lorg/cups4j/PrintRequestResult;->resultCode:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/cups4j/PrintRequestResult;->resultCode:Ljava/lang/String;

    const-string v1, "0x00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected setJobId(I)V
    .registers 2
    .parameter "jobId"

    .prologue
    .line 81
    iput p1, p0, Lorg/cups4j/PrintRequestResult;->jobId:I

    .line 82
    return-void
.end method
