.class Lcom/sec/android/app/kieswifi/ui/MainActivity$AnimationThread;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/kieswifi/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/kieswifi/ui/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/kieswifi/ui/MainActivity;Lcom/sec/android/app/kieswifi/ui/MainActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/sec/android/app/kieswifi/ui/MainActivity$AnimationThread;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/16 v5, 0x3f0

    const/4 v4, 0x1

    .line 277
    const-wide/16 v1, 0x12c

    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_42

    .line 281
    :goto_8
    const-string v1, "animation thread started.. MainActivity"

    invoke-static {v4, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mGuiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$1500(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mGuiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$1500(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x61a8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    :goto_23
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mStopAnimation:Z
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$700(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 287
    const-wide/16 v1, 0x12c

    :try_start_39
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_23

    .line 288
    :catch_3d
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_23

    .line 278
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_42
    move-exception v0

    .line 279
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .line 292
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_47
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #setter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mStopAnimation:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$702(Lcom/sec/android/app/kieswifi/ui/MainActivity;Z)Z

    .line 293
    const-string v1, "AnimationThread stpped.. MainActivity"

    invoke-static {v4, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mGuiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$1500(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mGuiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$1500(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    return-void
.end method
