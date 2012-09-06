.class public LKw;
.super Lfc;
.source "KixWebViewActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;LIC;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, LKw;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-direct {p0, p2}, Lfc;-><init>(LIC;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .prologue
    .line 755
    iget-object v0, p0, LKw;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a:Lck;

    iget-object v1, p0, LKw;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 756
    invoke-super {p0}, Lfc;->b()V

    .line 757
    return-void
.end method
