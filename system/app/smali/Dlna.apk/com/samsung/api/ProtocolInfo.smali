.class public Lcom/samsung/api/ProtocolInfo;
.super Ljava/lang/Object;
.source "ProtocolInfo.java"


# instance fields
.field private mDlnaFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFirst:Ljava/lang/String;

.field private mFourth:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mSecond:Ljava/lang/String;

.field private mThird:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/api/ProtocolInfo;->mDlnaFeatures:Ljava/util/HashMap;

    .line 75
    return-void
.end method

.method public static ParseProtocolInfo(Ljava/lang/String;)Lcom/samsung/api/ProtocolInfo;
    .registers 9
    .parameter "protocol"

    .prologue
    const/4 v7, 0x0

    .line 49
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ":"

    invoke-direct {v3, p0, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    .local v3, st:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_11

    .line 51
    const/4 v2, 0x0

    .line 70
    :cond_10
    return-object v2

    .line 53
    :cond_11
    new-instance v2, Lcom/samsung/api/ProtocolInfo;

    invoke-direct {v2}, Lcom/samsung/api/ProtocolInfo;-><init>()V

    .line 55
    .local v2, pinfo:Lcom/samsung/api/ProtocolInfo;
    iput-object p0, v2, Lcom/samsung/api/ProtocolInfo;->mProtocol:Ljava/lang/String;

    .line 56
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/samsung/api/ProtocolInfo;->mFirst:Ljava/lang/String;

    .line 57
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/samsung/api/ProtocolInfo;->mSecond:Ljava/lang/String;

    .line 58
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/samsung/api/ProtocolInfo;->mThird:Ljava/lang/String;

    .line 59
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/samsung/api/ProtocolInfo;->mFourth:Ljava/lang/String;

    .line 61
    new-instance v3, Ljava/util/StringTokenizer;

    .end local v3           #st:Ljava/util/StringTokenizer;
    iget-object v4, v2, Lcom/samsung/api/ProtocolInfo;->mFourth:Ljava/lang/String;

    const-string v5, ";"

    invoke-direct {v3, v4, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    .restart local v3       #st:Ljava/util/StringTokenizer;
    :cond_39
    :goto_39
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 64
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, feature:Ljava/lang/String;
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, features:[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_39

    .line 67
    iget-object v4, v2, Lcom/samsung/api/ProtocolInfo;->mDlnaFeatures:Ljava/util/HashMap;

    aget-object v5, v1, v7

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39
.end method


# virtual methods
.method public get1stField()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/api/ProtocolInfo;->mFirst:Ljava/lang/String;

    return-object v0
.end method

.method public get2ndField()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/api/ProtocolInfo;->mSecond:Ljava/lang/String;

    return-object v0
.end method

.method public get3rdField()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/api/ProtocolInfo;->mThird:Ljava/lang/String;

    return-object v0
.end method

.method public getDlnaPN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/api/ProtocolInfo;->mDlnaFeatures:Ljava/util/HashMap;

    const-string v1, "DLNA.ORG_PN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
