.class public Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;
.super Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;
.source "GridViewSlidePickerFragment.java"


# instance fields
.field private a:I

.field private a:Landroid/widget/FrameLayout;

.field a:Landroid/widget/GridView;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;-><init>()V

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcT;->punch_grid_view_slide_picker_columns:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:I

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:Landroid/widget/GridView;

    iget v1, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 99
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v0, v3}, Lck;->a(Landroid/content/Context;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->d:Landroid/view/View;

    if-nez v0, :cond_2c

    .line 42
    sget v0, LcU;->punch_grid_view_slide_picker:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->d:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->d:Landroid/view/View;

    sget v3, LcS;->grid_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:Landroid/widget/GridView;

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:Landroid/widget/GridView;

    if-eqz v0, :cond_55

    move v0, v1

    :goto_29
    invoke-static {v0}, LafQ;->b(Z)V

    .line 47
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a()V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    if-nez v0, :cond_57

    :goto_33
    invoke-static {v1}, LafQ;->b(Z)V

    .line 50
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    return-object v0

    :cond_55
    move v0, v2

    .line 44
    goto :goto_29

    :cond_57
    move v1, v2

    .line 49
    goto :goto_33
.end method

.method protected a(Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    return-void
.end method

.method public f_()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    .line 65
    invoke-super {p0}, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->f_()V

    .line 66
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/GridViewSlidePickerFragment;->a()V

    .line 93
    return-void
.end method
