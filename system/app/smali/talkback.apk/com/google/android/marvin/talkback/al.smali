.class final Lcom/google/android/marvin/talkback/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/aj;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/al;->a:Lcom/google/android/marvin/talkback/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/marvin/talkback/al;->a:Lcom/google/android/marvin/talkback/aj;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/aj;->a(Lcom/google/android/marvin/talkback/aj;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/al;->a:Lcom/google/android/marvin/talkback/aj;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/marvin/talkback/aj;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/al;->a:Lcom/google/android/marvin/talkback/aj;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/marvin/talkback/aj;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8
.end method
