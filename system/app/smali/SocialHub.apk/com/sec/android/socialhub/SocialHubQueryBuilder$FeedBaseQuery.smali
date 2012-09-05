.class public Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedBaseQuery;
.super Lcom/sec/android/socialhub/SocialHubQueryBuilder;
.source "SocialHubQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/SocialHubQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedBaseQuery"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;-><init>(Landroid/content/Context;)V

    .line 394
    return-void
.end method


# virtual methods
.method public addAdditonalQuery(Ljava/lang/StringBuffer;)V
    .registers 3
    .parameter "buffer"

    .prologue
    .line 435
    const-string v0, " and ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    const-string v0, "Upper("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    const-string v0, "application"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    const-string v0, ") != \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const-string v0, "QUESTIONS"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    const-string v0, "\' or "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    const-string v0, "application"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    const-string v0, " IS NULL )"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    return-void
.end method

.method public getQuery(Ljava/lang/Object;)Ljava/lang/String;
    .registers 10
    .parameter "account"

    .prologue
    .line 399
    move-object v2, p1

    check-cast v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 401
    .local v2, cast_account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, buffer:Ljava/lang/StringBuffer;
    if-eqz v2, :cond_16

    const-string v4, "0_All"

    iget-object v5, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 405
    :cond_16
    iget-object v4, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mSnsService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-static {v4, v5}, Lcom/sec/android/socialhub/util/SocialHubUtil;->getValidSession(Landroid/content/Context;Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;)Ljava/util/ArrayList;

    move-result-object v3

    .line 406
    .local v3, session:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;>;"
    const-string v4, "activity_id"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    const-string v4, " != \'\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedBaseQuery;->addAdditonalQuery(Ljava/lang/StringBuffer;)V

    .line 409
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "service_provider"

    invoke-virtual {p0, v4, v3, v5}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedBaseQuery;->makeSelection(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .local v1, buffer:Ljava/lang/StringBuffer;
    move-object v0, v1

    .line 430
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #session:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;>;"
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    :goto_3b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3f
    return-object v4

    .line 413
    :cond_40
    iget-object v4, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mSnsService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    iget-object v6, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/socialhub/util/SocialHubUtil;->checkSession(Landroid/content/Context;Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;IZ)Z

    move-result v4

    if-nez v4, :cond_75

    .line 415
    const-string v4, "SocialHubQueryBuilder"

    const-string v5, "getQuery()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sp{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "} is expired. so don\'t get data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/4 v4, 0x0

    goto :goto_3f

    .line 420
    :cond_75
    const-string v4, "service_provider"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 423
    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    const-string v4, "activity_id"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    const-string v4, " != \'\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedBaseQuery;->addAdditonalQuery(Ljava/lang/StringBuffer;)V

    goto :goto_3b
.end method
