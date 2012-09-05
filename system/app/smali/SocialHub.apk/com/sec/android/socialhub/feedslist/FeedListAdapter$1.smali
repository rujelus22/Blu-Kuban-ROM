.class Lcom/sec/android/socialhub/feedslist/FeedListAdapter$1;
.super Ljava/lang/Object;
.source "FeedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feedslist/FeedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/feedslist/FeedListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$1;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "view"
    .parameter "event"

    .prologue
    .line 363
    const-string v0, "FeedListAdapter"

    const-string v1, "onTouch()"

    const-string v2, "inside"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 373
    const-string v0, "FeedListAdapter"

    const-string v1, "onTouch()"

    const-string v2, "up"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :goto_19
    const/4 v0, 0x0

    return v0

    .line 367
    :pswitch_1b
    const-string v0, "FeedListAdapter"

    const-string v1, "onTouch()"

    const-string v2, "down"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 364
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method
