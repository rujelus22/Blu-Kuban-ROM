.class Lcom/sec/android/socialhub/service/SocialHubService$2;
.super Landroid/database/ContentObserver;
.source "SocialHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/SocialHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/service/SocialHubService;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/service/SocialHubService;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubService$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x1

    .line 108
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 110
    const-string v0, "SocialHubService"

    const-string v1, "onChange()"

    const-string v2, "Telephony Provider is changed!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #calls: Lcom/sec/android/socialhub/service/SocialHubService;->setDirtFlag(IZ)V
    invoke-static {v0, v3, v3}, Lcom/sec/android/socialhub/service/SocialHubService;->access$000(Lcom/sec/android/socialhub/service/SocialHubService;IZ)V

    .line 125
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getMessageInterface()Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;->isSupport(I)Z

    move-result v0

    if-ne v0, v3, :cond_2e

    .line 127
    const-string v0, "SocialHubService"

    const-string v1, "onChange()"

    const-string v2, "sendMessage to db sync"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    const-string v1, "1_Messaging"

    #calls: Lcom/sec/android/socialhub/service/SocialHubService;->sendDbSyncMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubService;->access$100(Lcom/sec/android/socialhub/service/SocialHubService;Ljava/lang/String;)V

    .line 136
    :goto_2d
    return-void

    .line 133
    :cond_2e
    const-string v0, "SocialHubService"

    const-string v1, "onChange()"

    const-string v2, "sync doesn\'t support only notify"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2d
.end method
