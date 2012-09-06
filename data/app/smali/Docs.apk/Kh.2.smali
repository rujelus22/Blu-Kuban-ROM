.class LKh;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KixWebView.java"


# instance fields
.field final synthetic a:LKg;


# direct methods
.method constructor <init>(LKg;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, LKh;->a:LKg;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, LKh;->a:LKg;

    iget-object v0, v0, LKg;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)V

    .line 76
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, LKh;->a:LKg;

    iget-object v0, v0, LKg;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)V

    .line 71
    return-void
.end method
