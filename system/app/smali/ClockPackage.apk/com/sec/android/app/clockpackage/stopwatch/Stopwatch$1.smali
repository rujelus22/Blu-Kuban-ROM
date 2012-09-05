.class Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$1;
.super Ljava/lang/Object;
.source "Stopwatch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 92
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$1;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$1;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    #getter for: Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->isTouchOperation:Z
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->access$000(Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    .line 117
    :goto_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$1;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->setViewState()V

    .line 119
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$1;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->isTouchOperation:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->access$002(Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;Z)Z

    .line 121
    return-void

    .line 97
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$1;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->start(Landroid/view/View;)V

    goto :goto_11

    .line 100
    :pswitch_23
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$1;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->stop(Landroid/view/View;)V

    goto :goto_11

    .line 104
    :pswitch_29
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$1;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->addLap(Landroid/view/View;)V

    goto :goto_11

    .line 107
    :pswitch_2f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$1;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->restart(Landroid/view/View;)V

    goto :goto_11

    .line 111
    :pswitch_35
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch$1;->this$0:Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/stopwatch/Stopwatch;->reset(Landroid/view/View;)V

    goto :goto_11

    .line 95
    nop

    :pswitch_data_3c
    .packed-switch 0x7f0e00f9
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_2f
        :pswitch_35
        :pswitch_35
        :pswitch_29
    .end packed-switch
.end method
