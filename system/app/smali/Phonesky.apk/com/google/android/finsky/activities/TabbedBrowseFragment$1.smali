.class Lcom/google/android/finsky/activities/TabbedBrowseFragment$1;
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
    .line 317
    iput-object p1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$1;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$1;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    iget-object v0, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$1;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    iget-object v0, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_21

    .line 321
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$1;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    iget-object v0, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment$1;->this$0:Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    iget-object v1, v1, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 323
    :cond_21
    return-void
.end method
