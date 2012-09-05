.class Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;
.super Ljava/lang/Object;
.source "AddinActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/AddinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dlna/ui/AddinActivity;Lcom/sec/android/app/dlna/ui/AddinActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1124
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1127
    const-wide/16 v1, 0x3e8

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_39

    .line 1132
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$700(Lcom/sec/android/app/dlna/ui/AddinActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x44d

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1134
    :goto_12
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3e

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->mStopAnimation:Z
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$600(Lcom/sec/android/app/dlna/ui/AddinActivity;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1136
    const-wide/16 v1, 0x1f4

    :try_start_30
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_12

    .line 1137
    :catch_34
    move-exception v0

    .line 1138
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_12

    .line 1128
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_39
    move-exception v0

    .line 1129
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 1142
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3e
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;->this$0:Lcom/sec/android/app/dlna/ui/AddinActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->access$700(Lcom/sec/android/app/dlna/ui/AddinActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x44c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1143
    return-void
.end method
