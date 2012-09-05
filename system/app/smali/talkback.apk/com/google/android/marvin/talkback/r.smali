.class final Lcom/google/android/marvin/talkback/r;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/m;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/marvin/talkback/m;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/marvin/talkback/r;-><init>(Lcom/google/android/marvin/talkback/m;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/marvin/talkback/m;B)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/marvin/talkback/r;->a:Lcom/google/android/marvin/talkback/m;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/r;->a:Lcom/google/android/marvin/talkback/m;

    invoke-static {v1, v0}, Lcom/google/android/marvin/talkback/m;->a(Lcom/google/android/marvin/talkback/m;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_5

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
