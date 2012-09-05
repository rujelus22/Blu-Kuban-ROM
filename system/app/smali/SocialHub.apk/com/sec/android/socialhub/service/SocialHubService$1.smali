.class Lcom/sec/android/socialhub/service/SocialHubService$1;
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
    .line 91
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubService$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 96
    const-string v0, "SocialHubService"

    const-string v1, "onChange()"

    const-string v2, "Badge Provider is changed!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubService;->updateBadge(Landroid/content/Context;)V

    .line 98
    return-void
.end method
