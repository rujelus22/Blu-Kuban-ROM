.class public Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;
.super Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;
.source "ApiaryPreviewOperation.java"


# instance fields
.field private mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

.field private final mSourceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "sourceUrl"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->mSourceUrl:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    const-string v0, "oauth2:https://www.googleapis.com/auth/plus.stream.write"

    return-object v0
.end method

.method public performApiaryCalls(Lcom/google/api/services/plus/Plus;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V
    .registers 10
    .parameter "plus"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/google/api/services/plus/model/Activity;

    invoke-direct {v0}, Lcom/google/api/services/plus/model/Activity;-><init>()V

    .line 49
    .local v0, activity:Lcom/google/api/services/plus/model/Activity;
    new-instance v4, Lcom/google/api/services/plus/model/ActivityObject;

    invoke-direct {v4}, Lcom/google/api/services/plus/model/ActivityObject;-><init>()V

    .line 50
    .local v4, plusObject:Lcom/google/api/services/plus/model/ActivityObject;
    new-instance v1, Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    invoke-direct {v1}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;-><init>()V

    .line 51
    .local v1, attachments:Lcom/google/api/services/plus/model/ActivityObjectAttachments;
    iget-object v5, p0, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/api/services/plus/model/ActivityObjectAttachments;->setUrl(Ljava/lang/String;)Lcom/google/api/services/plus/model/ActivityObjectAttachments;

    .line 52
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 53
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plus/model/ActivityObjectAttachments;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v4, v3}, Lcom/google/api/services/plus/model/ActivityObject;->setAttachments(Ljava/util/List;)Lcom/google/api/services/plus/model/ActivityObject;

    .line 55
    invoke-virtual {v0, v4}, Lcom/google/api/services/plus/model/Activity;->setPlusObject(Lcom/google/api/services/plus/model/ActivityObject;)Lcom/google/api/services/plus/model/Activity;

    .line 57
    invoke-virtual {p1}, Lcom/google/api/services/plus/Plus;->activities()Lcom/google/api/services/plus/Plus$Activities;

    move-result-object v5

    const-string v6, "me"

    invoke-virtual {v5, v6, v0}, Lcom/google/api/services/plus/Plus$Activities;->insert(Ljava/lang/String;Lcom/google/api/services/plus/model/Activity;)Lcom/google/api/services/plus/Plus$Activities$Insert;

    move-result-object v2

    .line 58
    .local v2, insert:Lcom/google/api/services/plus/Plus$Activities$Insert;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/api/services/plus/Plus$Activities$Insert;->setPreview(Ljava/lang/Boolean;)Lcom/google/api/services/plus/Plus$Activities$Insert;

    .line 60
    invoke-virtual {v2}, Lcom/google/api/services/plus/Plus$Activities$Insert;->execute()Lcom/google/api/services/plus/model/Activity;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_40

    .line 63
    invoke-static {v0}, Lcom/google/android/apps/plus/network/ApiaryActivityFactory;->getApiaryActivity(Lcom/google/api/services/plus/model/Activity;)Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 65
    :cond_40
    return-void
.end method
