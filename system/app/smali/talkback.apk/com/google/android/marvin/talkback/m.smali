.class final Lcom/google/android/marvin/talkback/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/talkback/ao;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/marvin/talkback/l;

.field private final c:Lcom/google/android/marvin/talkback/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/l;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/marvin/talkback/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/marvin/talkback/m;->b:Lcom/google/android/marvin/talkback/l;

    new-instance v0, Lcom/google/android/marvin/talkback/r;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/r;-><init>(Lcom/google/android/marvin/talkback/m;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/m;->c:Lcom/google/android/marvin/talkback/r;

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/m;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 11

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v2

    if-ltz v0, :cond_17

    if-gez v2, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    if-eq v0, v1, :cond_1c

    if-gez v1, :cond_3b

    :cond_1c
    iget-object v1, p0, Lcom/google/android/marvin/talkback/m;->a:Landroid/content/Context;

    const v3, 0x7f07003f

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_33
    iget-object v1, p0, Lcom/google/android/marvin/talkback/m;->b:Lcom/google/android/marvin/talkback/l;

    sget-object v2, Lcom/google/android/marvin/talkback/t;->b:Lcom/google/android/marvin/talkback/t;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/marvin/talkback/l;->a(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/t;)V

    goto :goto_17

    :cond_3b
    iget-object v3, p0, Lcom/google/android/marvin/talkback/m;->a:Landroid/content/Context;

    const v4, 0x7f07003e

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/m;->c:Lcom/google/android/marvin/talkback/r;

    invoke-virtual {v1, v2}, Lcom/google/android/marvin/talkback/r;->removeMessages(I)V

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-static {p1}, Lcom/google/android/marvin/talkback/ae;->a(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/marvin/talkback/m;->c:Lcom/google/android/marvin/talkback/r;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/marvin/talkback/r;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/r;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_e
.end method
