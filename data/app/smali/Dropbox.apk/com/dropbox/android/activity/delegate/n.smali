.class final Lcom/dropbox/android/activity/delegate/n;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/app/AlertDialog;

.field final synthetic d:Landroid/widget/ProgressBar;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Lcom/dropbox/android/activity/delegate/m;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/delegate/m;Landroid/app/Activity;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/dropbox/android/activity/delegate/n;->f:Lcom/dropbox/android/activity/delegate/m;

    iput-object p2, p0, Lcom/dropbox/android/activity/delegate/n;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/dropbox/android/activity/delegate/n;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/dropbox/android/activity/delegate/n;->c:Landroid/app/AlertDialog;

    iput-object p5, p0, Lcom/dropbox/android/activity/delegate/n;->d:Landroid/widget/ProgressBar;

    iput-object p6, p0, Lcom/dropbox/android/activity/delegate/n;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/n;->a:Landroid/app/Activity;

    check-cast v0, Lcom/dropbox/android/activity/D;

    .line 153
    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/n;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/dropbox/android/activity/D;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/n;->c:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    iget-object v2, p0, Lcom/dropbox/android/activity/delegate/n;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/dropbox/android/activity/delegate/n;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dropbox/android/activity/delegate/n;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/dropbox/android/util/aW;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v2, p0, Lcom/dropbox/android/activity/delegate/n;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v2, p0, Lcom/dropbox/android/activity/delegate/n;->e:Landroid/widget/TextView;

    const v3, 0x7f090092

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v2, p0, Lcom/dropbox/android/activity/delegate/n;->a:Landroid/app/Activity;

    instance-of v2, v2, Lcom/dropbox/android/activity/D;

    if-eqz v2, :cond_6f

    .line 163
    new-instance v2, Lcom/dropbox/android/activity/delegate/o;

    invoke-direct {v2, p0, v1, v0}, Lcom/dropbox/android/activity/delegate/o;-><init>(Lcom/dropbox/android/activity/delegate/n;Landroid/widget/Button;Ljava/lang/String;)V

    .line 185
    new-instance v1, Ldbxyzptlk/e/j;

    iget-object v3, p0, Lcom/dropbox/android/activity/delegate/n;->a:Landroid/app/Activity;

    invoke-direct {v1, v3, v0, v2}, Ldbxyzptlk/e/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ldbxyzptlk/e/l;)V

    .line 186
    invoke-virtual {v1}, Ldbxyzptlk/e/j;->e()V

    .line 187
    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Ldbxyzptlk/e/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 189
    :cond_6f
    return-void
.end method
