.class final Lcom/dropbox/android/activity/bQ;
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
    .line 290
    iput-object p1, p0, Lcom/dropbox/android/activity/bQ;->a:Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/dropbox/android/activity/bQ;->b:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/dropbox/android/activity/bQ;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/dropbox/android/activity/bQ;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 294
    iget-object v0, p0, Lcom/dropbox/android/activity/bQ;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 295
    iget-object v0, p0, Lcom/dropbox/android/activity/bQ;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    invoke-static {}, Lcom/dropbox/android/util/h;->k()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "cameraupload.usedataplan"

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 297
    return-void
.end method
