.class Lcom/google/android/finsky/activities/TabbedBrowseFragment$2;
.super Ljava/lang/Object;
.source "TabbedBrowseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/TabbedBrowseFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$2;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$2;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    iget-object v0, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$2;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    iget-object v0, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$2;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    iget-object v0, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$2;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    iget-object v1, v1, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/TabbedAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_31

    .line 330
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$2;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    iget-object v0, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$2;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    iget-object v1, v1, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 332
    :cond_31
    return-void
.end method
