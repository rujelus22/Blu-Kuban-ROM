.class public Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;
.super Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;
.source "LinearLayoutListViewSlidePickerFragment.java"


# static fields
.field static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "LaaY;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

.field private d:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Ljava/util/Map;

    .line 36
    sget-object v0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, LaaY;->a:LaaY;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, LaaY;->b:LaaY;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;-><init>()V

    return-void
.end method

.method private a()LaaY;
    .registers 5

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 106
    sget-object v0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaaY;

    .line 107
    if-nez v0, :cond_31

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration has unknown orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_31
    return-object v0
.end method

.method public static a()Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;
    .registers 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;-><init>()V

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a()LaaY;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->setOrientation(LaaY;)V

    .line 102
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

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v0, v3}, Lck;->a(Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->d:Landroid/view/View;

    if-nez v0, :cond_2c

    .line 55
    sget v0, LcU;->punch_list_view_slide_picker:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->d:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->d:Landroid/view/View;

    sget v3, LcS;->list_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/LinearLayoutListView;

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    if-eqz v0, :cond_55

    move v0, v1

    :goto_29
    invoke-static {v0}, LafQ;->b(Z)V

    .line 60
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a()V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    if-nez v0, :cond_57

    :goto_33
    invoke-static {v1}, LafQ;->b(Z)V

    .line 63
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    return-object v0

    :cond_55
    move v0, v2

    .line 57
    goto :goto_29

    :cond_57
    move v1, v2

    .line 62
    goto :goto_33
.end method

.method protected a(Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Lcom/google/android/apps/docs/view/LinearLayoutListView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    return-void
.end method

.method public f_()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a:Landroid/widget/FrameLayout;

    .line 78
    invoke-super {p0}, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->f_()V

    .line 79
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/punchwebview/BaseSlidePickerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    invoke-direct {p0}, Lcom/google/android/apps/docs/punchwebview/LinearLayoutListViewSlidePickerFragment;->a()V

    .line 91
    return-void
.end method
