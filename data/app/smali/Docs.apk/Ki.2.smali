.class public LKi;
.super LKH;
.source "KixWebViewActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, LKi;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-direct {p0}, LKH;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, LKi;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKi;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 192
    iget-object v0, p0, LKi;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->c(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    .line 193
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, LKi;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKi;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 186
    iget-object v0, p0, LKi;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->b(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V

    .line 187
    return-void
.end method
