.class public Lcom/sec/android/app/sns/response/data/SnsResponsePhotoUploadBody;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponsePhotoUploadBody.java"


# instance fields
.field photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 35
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

    .line 26
    iget-object v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    iput-object v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoUploadBody;->photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 37
    return-void
.end method


# virtual methods
.method public checkPhotoUploadData()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoUploadBody;->getRespType()I

    move-result v1

    if-ne v1, v0, :cond_18

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoUploadBody;->photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    if-eqz v1, :cond_18

    const-string v1, "error"

    iget-object v2, p0, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoUploadBody;->photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 73
    const/4 v0, 0x0

    .line 76
    :cond_18
    return v0
.end method

.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 10
    .parameter "context"
    .parameter "req"

    .prologue
    const/4 v6, 0x1

    .line 48
    const/4 v4, 0x0

    .line 49
    .local v4, uri:Landroid/net/Uri;
    const/16 v2, 0x1771

    .line 52
    .local v2, internalCode:I
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoUploadBody;->getRespType()I

    move-result v5

    if-ne v5, v6, :cond_22

    .line 53
    iget-object v3, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 55
    .local v3, photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 57
    invoke-virtual {v0, p2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v4

    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 61
    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcom/sec/android/app/sns/util/SnsUtil;->setIsFirstActRetrieveAfterPhotoUpload(Landroid/content/Context;Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_28

    .line 67
    .end local v0           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v3           #photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    :cond_22
    :goto_22
    new-instance v5, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v5, v4, v2}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v5

    .line 63
    :catch_28
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method
