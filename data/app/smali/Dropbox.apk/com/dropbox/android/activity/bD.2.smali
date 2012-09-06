.class final Lcom/dropbox/android/activity/bD;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Landroid/widget/RadioButton;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/dropbox/android/activity/bD;->a:Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/dropbox/android/activity/bD;->b:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/dropbox/android/activity/bD;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/dropbox/android/activity/bD;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 304
    iget-object v0, p0, Lcom/dropbox/android/activity/bD;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 305
    iget-object v0, p0, Lcom/dropbox/android/activity/bD;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-static {}, Lcom/dropbox/android/util/h;->k()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "cameraupload.usedataplan"

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 307
    return-void
.end method
