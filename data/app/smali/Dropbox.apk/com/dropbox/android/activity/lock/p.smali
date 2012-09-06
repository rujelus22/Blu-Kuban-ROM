.class final Lcom/dropbox/android/activity/lock/p;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/dropbox/android/activity/lock/p;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput p2, p0, Lcom/dropbox/android/activity/lock/p;->b:I

    .line 636
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/p;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/p;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->e(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/p;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->f(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/p;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

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
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x43

    const/16 v5, 0x39

    const/16 v4, 0x30

    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 641
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getNumber()C

    move-result v1

    .line 642
    if-eq p2, v6, :cond_32

    if-lt v1, v4, :cond_12

    if-le v1, v5, :cond_32

    :cond_12
    invoke-static {p2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_32

    const/16 v2, 0x73

    if-eq p2, v2, :cond_32

    const/16 v2, 0x74

    if-eq p2, v2, :cond_32

    const/16 v2, 0x8f

    if-eq p2, v2, :cond_32

    const/16 v2, 0x52

    if-eq p2, v2, :cond_32

    if-eq p2, v3, :cond_32

    const/4 v2, 0x3

    if-eq p2, v2, :cond_32

    const/16 v2, 0x54

    if-eq p2, v2, :cond_32

    .line 679
    :cond_31
    :goto_31
    return v0

    .line 655
    :cond_32
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_71

    .line 656
    if-ne p2, v6, :cond_51

    .line 658
    iget v1, p0, Lcom/dropbox/android/activity/lock/p;->b:I

    if-le v1, v0, :cond_31

    .line 659
    iget-object v1, p0, Lcom/dropbox/android/activity/lock/p;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    iget v2, p0, Lcom/dropbox/android/activity/lock/p;->b:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)Landroid/widget/EditText;

    move-result-object v1

    .line 660
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 661
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_31

    .line 664
    :cond_51
    if-lt v1, v4, :cond_71

    if-gt v1, v5, :cond_71

    .line 665
    iget v1, p0, Lcom/dropbox/android/activity/lock/p;->b:I

    if-ge v1, v3, :cond_73

    .line 667
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/p;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    iget v1, p0, Lcom/dropbox/android/activity/lock/p;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)Landroid/widget/EditText;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_6e

    .line 669
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 671
    :cond_6e
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 679
    :cond_71
    :goto_71
    const/4 v0, 0x0

    goto :goto_31

    .line 674
    :cond_73
    iget-object v1, p0, Lcom/dropbox/android/activity/lock/p;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)V

    .line 675
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/p;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_71
.end method
