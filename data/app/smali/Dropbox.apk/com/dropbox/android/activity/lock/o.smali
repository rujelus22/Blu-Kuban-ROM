.class final Lcom/dropbox/android/activity/lock/o;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/dropbox/android/activity/lock/o;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput p2, p0, Lcom/dropbox/android/activity/lock/o;->b:I

    .line 620
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 624
    if-eqz p2, :cond_10

    .line 625
    check-cast p1, Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/o;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    iget v1, p0, Lcom/dropbox/android/activity/lock/o;->b:I

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)I

    .line 628
    :cond_10
    return-void
.end method
