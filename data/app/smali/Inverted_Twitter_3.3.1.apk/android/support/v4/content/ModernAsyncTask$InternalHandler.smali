.class Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
.super Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/ModernAsyncTask$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    :goto_9
    return-void

    :pswitch_a
    iget-object v1, v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroid/support/v4/content/ModernAsyncTask;

    iget-object v0, v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    #calls: Landroid/support/v4/content/ModernAsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Landroid/support/v4/content/ModernAsyncTask;->access$500(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V

    goto :goto_9

    :pswitch_15
    iget-object v1, v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroid/support/v4/content/ModernAsyncTask;

    iget-object v0, v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/ModernAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_9

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method
