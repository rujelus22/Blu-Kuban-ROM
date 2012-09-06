.class final Lcom/dropbox/android/activity/lock/q;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/dropbox/android/activity/lock/q;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p2, p0, Lcom/dropbox/android/activity/lock/q;->b:Ljava/lang/String;

    .line 695
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/q;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/q;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->e(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/q;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->f(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/q;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 699
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/q;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/q;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/q;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_37

    .line 702
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/q;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/q;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)Landroid/widget/EditText;

    move-result-object v0

    .line 703
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_33

    .line 704
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 706
    :cond_33
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 712
    :goto_36
    return-void

    .line 709
    :cond_37
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/q;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/q;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)V

    .line 710
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/q;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_36
.end method
