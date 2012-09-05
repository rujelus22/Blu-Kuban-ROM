.class Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup$2;
.super Ljava/lang/Object;
.source "DurationViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public modeChanged(II)V
    .registers 7
    .parameter "mode"
    .parameter "subMode"

    .prologue
    .line 58
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->access$0()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v0

    #getter for: Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->access$0()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    #getter for: Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->access$1(Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 60
    return-void
.end method
