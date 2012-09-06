.class final Lcom/dropbox/android/activity/delegate/o;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/e/l;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dropbox/android/activity/delegate/n;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/delegate/n;Landroid/widget/Button;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dropbox/android/activity/delegate/o;->c:Lcom/dropbox/android/activity/delegate/n;

    iput-object p2, p0, Lcom/dropbox/android/activity/delegate/o;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/dropbox/android/activity/delegate/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 176
    invoke-static {}, Lcom/dropbox/android/util/h;->T()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 177
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/o;->c:Lcom/dropbox/android/activity/delegate/n;

    iget-object v0, v0, Lcom/dropbox/android/activity/delegate/n;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 178
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/o;->c:Lcom/dropbox/android/activity/delegate/n;

    iget-object v0, v0, Lcom/dropbox/android/activity/delegate/n;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/dropbox/android/activity/D;

    if-eqz v0, :cond_21

    .line 179
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/o;->c:Lcom/dropbox/android/activity/delegate/n;

    iget-object v0, v0, Lcom/dropbox/android/activity/delegate/n;->a:Landroid/app/Activity;

    check-cast v0, Lcom/dropbox/android/activity/D;

    .line 180
    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/o;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dropbox/android/activity/D;->a(Ljava/lang/String;)V

    .line 182
    :cond_21
    return-void
.end method

.method public final a(Ldbxyzptlk/e/m;)V
    .registers 5
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/o;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/o;->c:Lcom/dropbox/android/activity/delegate/n;

    iget-object v0, v0, Lcom/dropbox/android/activity/delegate/n;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/o;->c:Lcom/dropbox/android/activity/delegate/n;

    iget-object v0, v0, Lcom/dropbox/android/activity/delegate/n;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/o;->c:Lcom/dropbox/android/activity/delegate/n;

    iget-object v1, v1, Lcom/dropbox/android/activity/delegate/n;->f:Lcom/dropbox/android/activity/delegate/m;

    invoke-static {v1, p1}, Lcom/dropbox/android/activity/delegate/m;->a(Lcom/dropbox/android/activity/delegate/m;Ldbxyzptlk/e/m;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/o;->c:Lcom/dropbox/android/activity/delegate/n;

    iget-object v0, v0, Lcom/dropbox/android/activity/delegate/n;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/o;->c:Lcom/dropbox/android/activity/delegate/n;

    iget-object v1, v1, Lcom/dropbox/android/activity/delegate/n;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/o;->c:Lcom/dropbox/android/activity/delegate/n;

    iget-object v0, v0, Lcom/dropbox/android/activity/delegate/n;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    return-void
.end method
