.class Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 101
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStartedTimeMil:J
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$000(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    .line 121
    :goto_c
    return-void

    .line 104
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIncrement:Z
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$100(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->changeCurrent(I)V

    .line 112
    :cond_20
    :goto_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 114
    .local v0, curTime:J
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mIsSpeedVariable:Z
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$300(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 115
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$500(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mStartedTimeMil:J
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$000(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    #calls: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->calculateSpeed(F)J
    invoke-static {v3, v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$400(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;F)J

    move-result-wide v3

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 107
    .end local v0           #curTime:J
    :cond_48
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDecrement:Z
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$200(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->changeCurrent(I)V

    goto :goto_20

    .line 119
    .restart local v0       #curTime:J
    :cond_5c
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$500(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mSpeed:J
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$600(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)J

    move-result-wide v3

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c
.end method
