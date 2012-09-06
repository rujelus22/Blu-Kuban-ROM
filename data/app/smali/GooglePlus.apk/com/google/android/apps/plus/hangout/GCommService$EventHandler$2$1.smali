.class Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2$1;
.super Ljava/lang/Object;
.source "GCommService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;)V
    .registers 2
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2$1;->this$2:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2$1;->this$2:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;->val$nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMemberCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2$1;->this$2:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;->this$1:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeeting()V

    .line 255
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2$1;->this$2:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler$2;->this$1:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommService;->access$102(Lcom/google/android/apps/plus/hangout/GCommService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 256
    return-void
.end method
