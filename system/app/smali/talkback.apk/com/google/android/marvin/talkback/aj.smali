.class final Lcom/google/android/marvin/talkback/aj;
.super Landroid/os/Handler;


# instance fields
.field private a:Landroid/view/accessibility/AccessibilityEvent;

.field private final b:Ljava/lang/Runnable;

.field private synthetic c:Lcom/google/android/marvin/talkback/an;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/marvin/talkback/an;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/marvin/talkback/aj;-><init>(Lcom/google/android/marvin/talkback/an;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/marvin/talkback/an;B)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/marvin/talkback/aj;->c:Lcom/google/android/marvin/talkback/an;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/google/android/marvin/talkback/al;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/al;-><init>(Lcom/google/android/marvin/talkback/aj;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/aj;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/aj;)Landroid/view/accessibility/AccessibilityEvent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/aj;->a:Landroid/view/accessibility/AccessibilityEvent;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/aj;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/aj;->a:Landroid/view/accessibility/AccessibilityEvent;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/aj;->c:Lcom/google/android/marvin/talkback/an;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/an;->b(Lcom/google/android/marvin/talkback/an;)Lcom/google/android/marvin/talkback/l;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/google/android/marvin/talkback/aj;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/l;->a(ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/marvin/talkback/aj;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/aj;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/aj;->a:Landroid/view/accessibility/AccessibilityEvent;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/marvin/talkback/aj;->c:Lcom/google/android/marvin/talkback/an;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/an;->b(Lcom/google/android/marvin/talkback/an;)Lcom/google/android/marvin/talkback/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/aj;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/l;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/aj;->a:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/aj;->a:Landroid/view/accessibility/AccessibilityEvent;

    :cond_1b
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v2, p0, Lcom/google/android/marvin/talkback/aj;->c:Lcom/google/android/marvin/talkback/an;

    invoke-static {v2}, Lcom/google/android/marvin/talkback/an;->a(Lcom/google/android/marvin/talkback/an;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/marvin/talkback/a/g;->a(Landroid/content/Context;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/marvin/talkback/aj;->c:Lcom/google/android/marvin/talkback/an;

    invoke-static {v1}, Lcom/google/android/marvin/talkback/an;->b(Lcom/google/android/marvin/talkback/an;)Lcom/google/android/marvin/talkback/l;

    move-result-object v1

    sget-object v3, Lcom/google/android/marvin/talkback/t;->b:Lcom/google/android/marvin/talkback/t;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/marvin/talkback/l;->a(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/t;)V

    :cond_2e
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_5

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
