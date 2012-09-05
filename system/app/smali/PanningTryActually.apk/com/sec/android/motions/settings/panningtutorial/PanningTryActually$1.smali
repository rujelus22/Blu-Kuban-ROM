.class Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;
.super Landroid/os/Handler;
.source "PanningTryActually.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;


# direct methods
.method constructor <init>(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;->removeMessages(I)V

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    .line 95
    :cond_a
    :goto_a
    return-void

    .line 84
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    #getter for: Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->access$100(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    #getter for: Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIconResources:[I
    invoke-static {v1}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->access$000(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)[I

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    #getter for: Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIconResources:[I
    invoke-static {v3}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->access$000(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)[I

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    #getter for: Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->mIsLongPressed:Z
    invoke-static {v0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->access$200(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 86
    const/4 v0, 0x1

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a

    .line 89
    :pswitch_38
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    #calls: Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->stopPanning()V
    invoke-static {v0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->access$300(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->showDialog(I)V

    goto :goto_a

    .line 82
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_b
        :pswitch_38
    .end packed-switch
.end method
