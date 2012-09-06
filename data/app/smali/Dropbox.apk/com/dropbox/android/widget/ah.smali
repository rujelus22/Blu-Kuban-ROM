.class final Lcom/dropbox/android/widget/ah;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/ak;

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/dropbox/android/widget/ag;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/ag;Lcom/dropbox/android/widget/ak;Landroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/dropbox/android/widget/ah;->c:Lcom/dropbox/android/widget/ag;

    iput-object p2, p0, Lcom/dropbox/android/widget/ah;->a:Lcom/dropbox/android/widget/ak;

    iput-object p3, p0, Lcom/dropbox/android/widget/ah;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/android/widget/ah;->a:Lcom/dropbox/android/widget/ak;

    invoke-virtual {v0, p3}, Lcom/dropbox/android/widget/ak;->a(I)Landroid/content/Intent;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/dropbox/android/widget/ah;->c:Lcom/dropbox/android/widget/ag;

    invoke-static {v1}, Lcom/dropbox/android/widget/ag;->a(Lcom/dropbox/android/widget/ag;)Lcom/dropbox/android/widget/aj;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 118
    iget-object v1, p0, Lcom/dropbox/android/widget/ah;->c:Lcom/dropbox/android/widget/ag;

    invoke-static {v1}, Lcom/dropbox/android/widget/ag;->a(Lcom/dropbox/android/widget/ag;)Lcom/dropbox/android/widget/aj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dropbox/android/widget/aj;->a(Landroid/content/Intent;)V

    .line 120
    :cond_17
    iget-object v0, p0, Lcom/dropbox/android/widget/ah;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 121
    return-void
.end method
