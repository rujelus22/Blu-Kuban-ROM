.class public Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;
.super Lcom/google/android/apps/plus/api/ContactsOperation;
.source "SetCircleMembershipOperation.java"


# instance fields
.field private final mCirclesToAdd:[Ljava/lang/String;

.field private final mCirclesToRemove:[Ljava/lang/String;

.field private final mPersonId:Ljava/lang/String;

.field private final mPersonName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "personName"
    .parameter "circlesToAdd"
    .parameter "circlesToRemove"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 46
    const-string v2, "POST"

    invoke-static {}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->createContactsActionRequestUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/ContactsOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 48
    iput-object p3, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mPersonId:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mPersonName:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToAdd:[Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToRemove:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method private writeCircleIdsToBuilder([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "circleIds"
    .parameter "sb"

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_13

    .line 78
    if-eqz v0, :cond_b

    .line 79
    const/16 v1, 0x2c

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    :cond_b
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_13
    return-void
.end method


# virtual methods
.method protected createPostData()Lorg/apache/http/HttpEntity;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->appendIntegrationParameters(Ljava/lang/StringBuilder;)V

    .line 61
    const-string v1, "&a=am&idtype=a&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mPersonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mPersonName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 63
    const-string v1, "&name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mPersonName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_2a
    iget-object v1, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToRemove:[Ljava/lang/String;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToRemove:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3d

    .line 66
    const-string v1, "&remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToRemove:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->writeCircleIdsToBuilder([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 69
    :cond_3d
    iget-object v1, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToAdd:[Ljava/lang/String;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToAdd:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_50

    .line 70
    const-string v1, "&add="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToAdd:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->writeCircleIdsToBuilder([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 73
    :cond_50
    new-instance v1, Lcom/google/android/apps/plus/network/StreamBuilder;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/network/StreamBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/ContactsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8
    .parameter "inputStream"
    .parameter "contentType"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->onStartResultProcessing()V

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mPersonId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToAdd:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/SetCircleMembershipOperation;->mCirclesToRemove:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->setCircleMembership(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    return-void
.end method
