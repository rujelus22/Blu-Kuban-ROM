.class public Laap;
.super Ljava/lang/Object;
.source "DocListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/DocListView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/DocListView;)V
    .registers 2
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Laap;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Laap;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/DocListView;->a()Lans;

    move-result-object v0

    iget-object v1, p0, Laap;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v1}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;)Lcom/google/android/apps/docs/RoboFragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 413
    iget-object v0, p0, Laap;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;)LTf;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Laap;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;)LTf;

    move-result-object v0

    invoke-interface {v0}, LTf;->c()Z

    move-result v0

    if-nez v0, :cond_45

    .line 414
    iget-object v0, p0, Laap;->a:Lcom/google/android/apps/docs/view/DocListView;

    iget-object v0, v0, Lcom/google/android/apps/docs/view/DocListView;->a:LFX;

    const-string v1, "syncMoreMaxFeedsToRetrieve"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    .line 417
    iget-object v1, p0, Laap;->a:Lcom/google/android/apps/docs/view/DocListView;

    invoke-static {v1}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;)LTf;

    move-result-object v1

    new-instance v2, Laas;

    iget-object v3, p0, Laap;->a:Lcom/google/android/apps/docs/view/DocListView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Laas;-><init>(Lcom/google/android/apps/docs/view/DocListView;Z)V

    invoke-interface {v1, v2, v0}, LTf;->a(LTg;I)V

    .line 418
    iget-object v0, p0, Laap;->a:Lcom/google/android/apps/docs/view/DocListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/view/DocListView;->a(Lcom/google/android/apps/docs/view/DocListView;Z)V

    .line 420
    :cond_45
    return-void
.end method
