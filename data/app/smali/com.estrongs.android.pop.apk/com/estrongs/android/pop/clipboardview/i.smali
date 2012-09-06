.class Lcom/estrongs/android/pop/clipboardview/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/clipboardview/i;->a:Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;Lcom/estrongs/android/pop/clipboardview/i;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/clipboardview/i;-><init>(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/i;->a:Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;

    invoke-static {v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;)V

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x3e8
        :pswitch_6
    .end packed-switch
.end method
