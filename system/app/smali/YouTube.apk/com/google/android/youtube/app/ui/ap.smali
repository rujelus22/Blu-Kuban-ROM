.class public final Lcom/google/android/youtube/app/ui/ap;
.super Lcom/google/android/youtube/app/ui/dh;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field private final b:Landroid/widget/LinearLayout;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/ui/m;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/f;Lcom/google/android/youtube/core/utils/i;)V
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
    .line 34
    invoke-direct/range {p0 .. p10}, Lcom/google/android/youtube/app/ui/dh;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/ui/m;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/plus1/f;Lcom/google/android/youtube/core/utils/i;)V

    .line 37
    const v0, 0x7f0900b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->a:Landroid/widget/LinearLayout;

    .line 38
    const v0, 0x7f0900af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->b:Landroid/widget/LinearLayout;

    .line 39
    const v0, 0x7f0900b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->c:Landroid/view/View;

    .line 40
    return-void
.end method


# virtual methods
.method protected final b()V
    .registers 3

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/android/youtube/app/ui/dh;->b()V

    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->c:Landroid/view/View;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ap;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ap;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    :cond_2b
    return-void
.end method

.method protected final c()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 55
    invoke-super {p0}, Lcom/google/android/youtube/app/ui/dh;->c()V

    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->c:Landroid/view/View;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2c

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ap;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ap;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    :cond_2c
    return-void
.end method
