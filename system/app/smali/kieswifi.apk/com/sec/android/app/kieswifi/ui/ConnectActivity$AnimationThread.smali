.class Lcom/sec/android/app/kieswifi/ui/ConnectActivity$AnimationThread;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;Lcom/sec/android/app/kieswifi/ui/ConnectActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$AnimationThread;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x3f0

    .line 512
    const-wide/16 v1, 0x12c

    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_32

    .line 517
    :goto_8
    const-string v1, "animation thread started.."

    invoke-static {v5, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    iget-object v1, v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mGuiHandler:Landroid/os/Handler;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 519
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    iget-object v1, v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mGuiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 521
    :goto_1f
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->result:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->access$000(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    .line 523
    const-wide/16 v1, 0x1f4

    :try_start_29
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_1f

    .line 524
    :catch_2d
    move-exception v0

    .line 525
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1f

    .line 513
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_32
    move-exception v0

    .line 514
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .line 528
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_37
    :goto_37
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ClientStart_Check()I

    move-result v1

    if-nez v1, :cond_4a

    .line 530
    const-wide/16 v1, 0x1f4

    :try_start_41
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_37

    .line 531
    :catch_45
    move-exception v0

    .line 532
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_37

    .line 536
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4a
    const-wide/16 v1, 0x7d0

    :try_start_4c
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4f} :catch_68

    .line 540
    :goto_4f
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    #calls: Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->notifyBar()V
    invoke-static {v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->access$400(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V

    .line 541
    const-string v1, "AnimationThread stpped.."

    invoke-static {v5, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    iget-object v1, v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mGuiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$AnimationThread;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    iget-object v1, v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mGuiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 544
    return-void

    .line 537
    :catch_68
    move-exception v0

    .line 538
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4f
.end method
