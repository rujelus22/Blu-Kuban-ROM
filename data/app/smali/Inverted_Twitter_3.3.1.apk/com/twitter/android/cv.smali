.class final Lcom/twitter/android/cv;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/cv;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    :goto_5
    return-void

    :pswitch_6
    new-instance v1, Lcom/twitter/android/v;

    iget-object v0, p0, Lcom/twitter/android/cv;->a:Lcom/twitter/android/PostActivity;

    iget-object v2, p0, Lcom/twitter/android/cv;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {v1, v0, v2}, Lcom/twitter/android/v;-><init>(Landroid/app/Activity;Lcom/twitter/android/w;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/android/v;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_5

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
