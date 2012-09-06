.class final Lcom/dropbox/android/widget/G;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/dropbox/android/activity/delegate/x;

.field final synthetic c:Lcom/dropbox/android/widget/FileItemView;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/FileItemView;Landroid/app/Activity;Lcom/dropbox/android/activity/delegate/x;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/dropbox/android/widget/G;->c:Lcom/dropbox/android/widget/FileItemView;

    iput-object p2, p0, Lcom/dropbox/android/widget/G;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/dropbox/android/widget/G;->b:Lcom/dropbox/android/activity/delegate/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 790
    iget-object v0, p0, Lcom/dropbox/android/widget/G;->c:Lcom/dropbox/android/widget/FileItemView;

    invoke-static {v0}, Lcom/dropbox/android/widget/FileItemView;->c(Lcom/dropbox/android/widget/FileItemView;)Lcom/dropbox/android/widget/Q;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 793
    iget-object v0, p0, Lcom/dropbox/android/widget/G;->c:Lcom/dropbox/android/widget/FileItemView;

    invoke-static {v0}, Lcom/dropbox/android/widget/FileItemView;->c(Lcom/dropbox/android/widget/FileItemView;)Lcom/dropbox/android/widget/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/widget/G;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/dropbox/android/widget/G;->b:Lcom/dropbox/android/activity/delegate/x;

    invoke-interface {v0, v1, v2}, Lcom/dropbox/android/widget/Q;->a(Landroid/app/Activity;Lcom/dropbox/android/activity/delegate/x;)[Lcom/dropbox/android/widget/quickactions/a;

    move-result-object v0

    .line 794
    iget-object v1, p0, Lcom/dropbox/android/widget/G;->c:Lcom/dropbox/android/widget/FileItemView;

    iget-object v1, v1, Lcom/dropbox/android/widget/FileItemView;->F:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    iget-object v2, p0, Lcom/dropbox/android/widget/G;->c:Lcom/dropbox/android/widget/FileItemView;

    iget-object v2, v2, Lcom/dropbox/android/widget/FileItemView;->n:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(Landroid/widget/CheckBox;[Lcom/dropbox/android/widget/quickactions/a;)V

    .line 796
    :cond_21
    return-void
.end method
