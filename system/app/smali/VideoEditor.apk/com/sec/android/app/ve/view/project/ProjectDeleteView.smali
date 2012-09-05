.class public Lcom/sec/android/app/ve/view/project/ProjectDeleteView;
.super Landroid/widget/FrameLayout;
.source "ProjectDeleteView.java"


# instance fields
.field private mBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mContext:Landroid/content/Context;

.field private mMovingView:Landroid/view/View;

.field private mTrashImage:Landroid/widget/FrameLayout;

.field private proj_list:Lcom/sec/android/app/ve/activity/ProjectListActivity;

.field private srcColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 3
    .parameter "context"
    .parameter "bitmapDrawable"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object p1, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->mContext:Landroid/content/Context;

    .line 40
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 41
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f020115

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->srcColor:I

    .line 43
    return-void
.end method


# virtual methods
.method public onDragEnd(FF)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 80
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 81
    .local v0, myPos:[I
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->mTrashImage:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 82
    aget v1, v0, v2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2a

    aget v1, v0, v2

    iget-object v2, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->mTrashImage:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2a

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->mMovingView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->proj_list:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->updateProjList()V

    .line 86
    :cond_2a
    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->setVisibility(I)V

    .line 87
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->makeButtonLayoutVisible()V

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_50

    .line 89
    const-string v1, "No projects...deleted all"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->changeVisibilty()V

    .line 95
    :cond_50
    return-void
.end method

.method public onDragStart(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->mMovingView:Landroid/view/View;

    .line 99
    return-void
.end method

.method public onDragging(FFLandroid/graphics/Paint;)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    const/4 v2, 0x1

    .line 61
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 62
    .local v0, myPos:[I
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->mTrashImage:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 64
    aget v1, v0, v2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_33

    aget v1, v0, v2

    iget-object v2, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->mTrashImage:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_33

    .line 65
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->mTrashImage:Landroid/widget/FrameLayout;

    const v2, 0x7f02012e

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 66
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->srcColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 77
    :goto_32
    return-void

    .line 69
    :cond_33
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->mTrashImage:Landroid/widget/FrameLayout;

    const v2, 0x7f02012d

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    goto :goto_32
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->mTrashImage:Landroid/widget/FrameLayout;

    .line 54
    return-void
.end method

.method public setProjectList(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V
    .registers 2
    .parameter "projlist"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/app/ve/view/project/ProjectDeleteView;->proj_list:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 58
    return-void
.end method
