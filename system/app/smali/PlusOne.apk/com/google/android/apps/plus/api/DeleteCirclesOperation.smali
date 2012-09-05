.class public Lcom/google/android/apps/plus/api/DeleteCirclesOperation;
.super Lcom/google/android/apps/plus/api/ContactsOperation;
.source "DeleteCirclesOperation.java"


# instance fields
.field private final mCircleIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "intent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "POST"

    invoke-static {}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->createContactsActionRequestUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/ContactsOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 42
    iput-object p3, p0, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->mCircleIds:Ljava/util/ArrayList;

    .line 43
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
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->appendIntegrationParameters(Ljava/lang/StringBuilder;)V

    .line 52
    const-string v2, "&a=dc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v2, "&del="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    iget-object v2, p0, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->mCircleIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 55
    if-eqz v0, :cond_22

    .line 56
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    :cond_22
    iget-object v2, p0, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->mCircleIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 60
    :cond_30
    new-instance v2, Lcom/google/android/apps/plus/network/StreamBuilder;

    invoke-direct {v2, v1}, Lcom/google/android/apps/plus/network/StreamBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v2
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
    .registers 7
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    move-result-object v0

    .line 70
    .local v0, response:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->getResponseCode()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    if-eq v1, v2, :cond_29

    .line 71
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not perform delete circles request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->getResponseCode()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->onStartResultProcessing()V

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/api/DeleteCirclesOperation;->mCircleIds:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->removeDeletedCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;)V

    .line 78
    return-void
.end method
