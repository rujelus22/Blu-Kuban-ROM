.class public LKu;
.super Ljava/lang/Object;
.source "KixWebViewActivity.java"

# interfaces
.implements Ly;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, LKu;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, LKu;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    sget v1, LcS;->side_layout:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 348
    iget-object v1, p0, LKu;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->a()Lx;

    move-result-object v1

    .line 352
    invoke-virtual {v1}, Lx;->a()I

    move-result v1

    .line 353
    if-nez v1, :cond_29

    .line 354
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 355
    iget-object v0, p0, LKu;->a:Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;

    sget v1, LcS;->side_fragment_holder:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 359
    :goto_28
    return-void

    .line 357
    :cond_29
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_28
.end method
