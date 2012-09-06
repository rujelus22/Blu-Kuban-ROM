.class Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;
.super Ljava/lang/Object;
.source "GCommService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->onMucEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

.field final synthetic val$hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

.field final synthetic val$nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;Lcom/google/android/apps/plus/service/Hangout$Info;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;->this$1:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;->val$hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;->val$nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;->this$1:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->stopRingback()V

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;->this$1:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/16 v1, 0x33

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;->val$hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;->this$1:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    new-instance v1, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2$1;-><init>(Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;)V

    #setter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService;->access$102(Lcom/google/android/apps/plus/hangout/GCommService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;->this$1:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->access$200(Lcom/google/android/apps/plus/hangout/GCommService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;->this$1:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommService;->access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    return-void
.end method
