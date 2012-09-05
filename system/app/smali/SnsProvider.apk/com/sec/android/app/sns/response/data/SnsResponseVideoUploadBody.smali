.class public Lcom/sec/android/app/sns/response/data/SnsResponseVideoUploadBody;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseVideoUploadBody.java"


# instance fields
.field video:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 32
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getID()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getReqType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getInternalCode()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getHttpStatusCode()I

    move-result v5

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sns/response/data/SnsResponse;-><init>(IIIIILjava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;

    iput-object v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponseVideoUploadBody;->video:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;

    .line 34
    return-void
.end method


# virtual methods
.method public checkVideoUploadData()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseVideoUploadBody;->getRespType()I

    move-result v1

    if-ne v1, v0, :cond_18

    .line 49
    iget-object v1, p0, Lcom/sec/android/app/sns/response/data/SnsResponseVideoUploadBody;->video:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;

    if-eqz v1, :cond_18

    const-string v1, "error"

    iget-object v2, p0, Lcom/sec/android/app/sns/response/data/SnsResponseVideoUploadBody;->video:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 50
    const/4 v0, 0x0

    .line 53
    :cond_18
    return v0
.end method

.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 6
    .parameter "context"
    .parameter "req"

    .prologue
    .line 44
    new-instance v0, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v0
.end method
