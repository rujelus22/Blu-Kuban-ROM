.class Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;
.super Ljava/lang/Object;
.source "MainActivityTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)V
    .registers 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;-><init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/16 v5, 0x3f0

    const/4 v4, 0x1

    .line 243
    const-wide/16 v1, 0x12c

    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_3e

    .line 248
    :goto_8
    const-string v1, "animation thread started.. MainActivity"

    invoke-static {v4, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    iget-object v1, v1, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mGuiHandler:Landroid/os/Handler;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    iget-object v1, v1, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mGuiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 252
    :goto_1f
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$100(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mStopAnimation:Z
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$500(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 254
    const-wide/16 v1, 0x12c

    :try_start_35
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_1f

    .line 255
    :catch_39
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1f

    .line 244
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_3e
    move-exception v0

    .line 245
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .line 259
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_43
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #setter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mStopAnimation:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$502(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;Z)Z

    .line 260
    const-string v1, "AnimationThread stoped.. MainActivity"

    invoke-static {v4, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    iget-object v1, v1, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mGuiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    iget-object v1, v1, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mGuiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 263
    return-void
.end method