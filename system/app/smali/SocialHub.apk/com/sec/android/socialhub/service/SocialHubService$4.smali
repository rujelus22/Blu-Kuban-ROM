.class Lcom/sec/android/socialhub/service/SocialHubService$4;
.super Ljava/lang/Object;
.source "SocialHubService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/service/SocialHubService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/service/SocialHubService;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/service/SocialHubService;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubService$4;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService$4;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.socialhub.REMOVE_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 208
    return-void
.end method
