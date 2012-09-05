.class public Lcom/sec/android/app/sns/response/data/SnsResponseActivityForward;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseActivityForward.java"


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

    .line 37
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 15
    .parameter "context"
    .parameter "req"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 47
    const-string v1, "SnsResponse"

    const-string v2, "SnsResponseActivityForward : disposeData() : ACTIVITY_FORWARD = [SUCCESS!]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v11, 0x0

    .line 50
    .local v11, uri:Landroid/net/Uri;
    const/16 v10, 0x1771

    .line 52
    .local v10, internalCode:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseActivityForward;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v8

    .line 54
    .local v8, accountMgr:Lcom/sec/android/app/sns/account/SnsAccountMgr;
    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/String;

    .line 55
    .local v7, account:[Ljava/lang/String;
    invoke-virtual {v8, v3}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sns/account/SnsAccount;->getUserID()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v4

    .line 56
    invoke-virtual {v8, v3}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sns/account/SnsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    .line 57
    invoke-virtual {v8, v3}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sns/account/SnsAccount;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    .line 60
    :try_start_32
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseActivityForward;->getRespType()I

    move-result v1

    if-ne v1, v5, :cond_59

    .line 61
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 63
    const/4 v1, 0x2

    check-cast p2, Lcom/sec/android/app/sns/request/data/SnsRequestActivityForward;

    .end local p2
    invoke-virtual {p2}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityForward;->getActivityID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v7, v4

    const/4 v5, 0x1

    aget-object v5, v7, v5

    const/4 v6, 0x2

    aget-object v6, v7, v6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateForwardable(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 66
    const/4 v10, 0x0

    .line 67
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_59} :catch_5f

    .line 73
    .end local v0           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    :cond_59
    :goto_59
    new-instance v1, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v1, v11, v10}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v1

    .line 69
    :catch_5f
    move-exception v9

    .line 70
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59
.end method
