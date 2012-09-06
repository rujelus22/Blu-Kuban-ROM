.class public LKe;
.super LKH;
.source "KixWebView.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebView;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, LKe;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-direct {p0}, LKH;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, LKe;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->b(Lcom/google/android/apps/docs/kixwebview/KixWebView;)V

    .line 289
    return-void
.end method

.method public a(F)V
    .registers 3
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, LKe;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;F)V

    .line 284
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, LKe;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LKg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LKg;->a(F)V

    .line 279
    return-void
.end method
