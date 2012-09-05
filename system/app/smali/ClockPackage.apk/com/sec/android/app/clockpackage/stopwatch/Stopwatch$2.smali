.class Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$2;
.super Ljava/lang/Object;
.source "Stopwatch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$2;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$2;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    #setter for: Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->isTouchOperation:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->access$002(Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;Z)Z

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$2;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->setViewState()V

    .line 161
    :cond_19
    :goto_19
    return v4

    .line 137
    :cond_1a
    const-string v0, "Stopwatch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v.getId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    goto :goto_19

    .line 142
    :pswitch_3e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$2;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->start(Landroid/view/View;)V

    goto :goto_19

    .line 145
    :pswitch_44
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$2;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->stop(Landroid/view/View;)V

    goto :goto_19

    .line 149
    :pswitch_4a
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$2;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->addLap(Landroid/view/View;)V

    goto :goto_19

    .line 152
    :pswitch_50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$2;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->restart(Landroid/view/View;)V

    goto :goto_19

    .line 156
    :pswitch_56
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$2;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->reset(Landroid/view/View;)V

    goto :goto_19

    .line 139
    :pswitch_data_5c
    .packed-switch 0x7f0e00f9
        :pswitch_3e
        :pswitch_44
        :pswitch_4a
        :pswitch_50
        :pswitch_56
        :pswitch_56
        :pswitch_4a
    .end packed-switch
.end method
