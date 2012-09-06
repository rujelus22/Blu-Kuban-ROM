.class Lcom/google/android/apps/plus/hangout/StressMode$4;
.super Ljava/lang/Object;
.source "StressMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/StressMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/StressMode;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/StressMode;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/StressMode$4;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 112
    const-string v0, "StressMode: disconnect"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$4;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$600(Lcom/google/android/apps/plus/hangout/StressMode;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->disconnect()V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$4;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$100(Lcom/google/android/apps/plus/hangout/StressMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode$4;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->launchGreenRoomRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/StressMode;->access$300(Lcom/google/android/apps/plus/hangout/StressMode;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void
.end method
