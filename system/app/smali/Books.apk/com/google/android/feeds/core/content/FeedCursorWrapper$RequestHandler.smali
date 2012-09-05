.class Lcom/google/android/feeds/core/content/FeedCursorWrapper$RequestHandler;
.super Landroid/os/Handler;
.source "FeedCursorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feeds/core/content/FeedCursorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/feeds/core/content/FeedCursorWrapper;


# direct methods
.method public constructor <init>(Lcom/google/android/feeds/core/content/FeedCursorWrapper;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper$RequestHandler;->this$0:Lcom/google/android/feeds/core/content/FeedCursorWrapper;

    .line 550
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 551
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 555
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1a

    .line 569
    :goto_5
    return-void

    .line 557
    :pswitch_6
    iget-object v2, p0, Lcom/google/android/feeds/core/content/FeedCursorWrapper$RequestHandler;->this$0:Lcom/google/android/feeds/core/content/FeedCursorWrapper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/feeds/core/provider/FeedCommand;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1, v3}, Lcom/google/android/feeds/core/content/FeedCursorWrapper;->handleQuery(Lcom/google/android/feeds/core/provider/FeedCommand;I)V

    goto :goto_5

    .line 565
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/feeds/core/content/FeedCursorWrapper$RequestHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 566
    .local v0, looper:Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_5

    .line 555
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_12
    .end packed-switch
.end method
