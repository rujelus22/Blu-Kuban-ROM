.class Lcom/sec/android/socialhub/service/SocialHubService$3;
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
    .line 140
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubService$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 146
    const-string v0, "SocialHubService"

    const-string v1, "onChange()"

    const-string v2, "IM Provider is changed!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    const/4 v1, 0x4

    const/4 v2, 0x1

    #calls: Lcom/sec/android/socialhub/service/SocialHubService;->setDirtFlag(IZ)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$000(Lcom/sec/android/socialhub/service/SocialHubService;IZ)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    const-string v1, "4_SevenIM"

    #calls: Lcom/sec/android/socialhub/service/SocialHubService;->sendDbSyncMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubService;->access$100(Lcom/sec/android/socialhub/service/SocialHubService;Ljava/lang/String;)V

    .line 151
    return-void
.end method
