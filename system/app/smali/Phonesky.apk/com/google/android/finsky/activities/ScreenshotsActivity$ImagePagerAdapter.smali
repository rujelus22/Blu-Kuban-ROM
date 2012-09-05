.class Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ScreenshotsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/ScreenshotsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/ScreenshotsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/ScreenshotsActivity;Lcom/google/android/finsky/activities/ScreenshotsActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;-><init>(Lcom/google/android/finsky/activities/ScreenshotsActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6
    .parameter "view"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;

    #getter for: Lcom/google/android/finsky/activities/ScreenshotsActivity;->mImages:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->access$400(Lcom/google/android/finsky/activities/ScreenshotsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;

    .line 101
    .local v0, imageEntry:Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->getView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 102
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->unload()V

    .line 103
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 107
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;

    #getter for: Lcom/google/android/finsky/activities/ScreenshotsActivity;->mImages:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->access$400(Lcom/google/android/finsky/activities/ScreenshotsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 5
    .parameter "container"
    .parameter "position"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;

    #getter for: Lcom/google/android/finsky/activities/ScreenshotsActivity;->mImages:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->access$400(Lcom/google/android/finsky/activities/ScreenshotsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;

    .line 117
    .local v0, imageEntry:Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->load()V

    .line 118
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->getView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .parameter "view"
    .parameter "object"

    .prologue
    .line 124
    check-cast p2, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->getView()Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter "bundle"
    .parameter "arg1"

    .prologue
    .line 129
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 138
    return-void
.end method
