.class public final Lcom/google/android/youtube/app/ui/ay;
.super Lcom/google/android/youtube/app/ui/ep;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/ui/m;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/c/g;Lcom/google/android/youtube/core/utils/k;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct/range {p0 .. p10}, Lcom/google/android/youtube/app/ui/ep;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/ui/m;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/c/g;Lcom/google/android/youtube/core/utils/k;)V

    .line 34
    const v0, 0x7f0800e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ay;->a:Landroid/widget/LinearLayout;

    .line 35
    return-void
.end method


# virtual methods
.method protected final b()V
    .registers 3

    .prologue
    .line 39
    invoke-super {p0}, Lcom/google/android/youtube/app/ui/ep;->b()V

    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ay;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ay;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_15

    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ay;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    :cond_15
    return-void
.end method

.method protected final c()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 47
    invoke-super {p0}, Lcom/google/android/youtube/app/ui/ep;->c()V

    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ay;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ay;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_16

    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ay;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    :cond_16
    return-void
.end method
