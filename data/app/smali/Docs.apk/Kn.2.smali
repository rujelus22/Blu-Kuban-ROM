.class public LKn;
.super Ljava/lang/Object;
.source "KixWebViewActivity.java"

# interfaces
.implements LdY;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, LKn;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 222
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 217
    return-void
.end method

.method public a(Lmu;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmu",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, LKn;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b:Landroid/os/Handler;

    new-instance v1, LKo;

    invoke-direct {v1, p0, p1}, LKo;-><init>(LKn;Lmu;)V

    invoke-interface {p1, v0, v1}, Lmu;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public a(Lna;)V
    .registers 5
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, LKn;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)Lld;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/fragment/CommentStreamThreadFragment;->a(Lld;Lna;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 227
    iget-object v1, p0, LKn;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a()Lx;

    move-result-object v1

    invoke-virtual {v1}, Lx;->a()LH;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, LH;->a(I)LH;

    move-result-object v1

    sget v2, LcS;->side_fragment_holder:I

    invoke-virtual {v1, v2, v0}, LH;->b(ILandroid/support/v4/app/Fragment;)LH;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LH;->a(Ljava/lang/String;)LH;

    move-result-object v0

    invoke-virtual {v0}, LH;->a()I

    .line 230
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method
