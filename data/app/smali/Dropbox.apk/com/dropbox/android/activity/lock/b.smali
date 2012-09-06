.class final Lcom/dropbox/android/activity/lock/b;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/lock/LockCodeActivity;


# direct methods
.method private constructor <init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/dropbox/android/activity/lock/b;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;Lcom/dropbox/android/activity/lock/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/lock/b;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 725
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/b;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    .line 726
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/b;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/b;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)Landroid/widget/EditText;

    move-result-object v0

    .line 727
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 728
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 730
    :cond_1f
    return-void
.end method
