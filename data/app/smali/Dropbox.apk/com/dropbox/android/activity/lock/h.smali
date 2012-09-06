.class final Lcom/dropbox/android/activity/lock/h;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/activity/lock/a;)V
    .registers 2
    .parameter

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 736
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    .line 737
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 739
    :cond_a
    const/4 v0, 0x0

    return v0
.end method
