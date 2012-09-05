.class public Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "OfflineComboViewActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/OfflineComboViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/OfflineComboViewActivity$TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mContext:Landroid/content/Context;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/OfflineComboViewActivity$TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V
    .registers 4
    .parameter "activity"
    .parameter "pager"

    .prologue
    .line 440
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 441
    iput-object p1, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mContext:Landroid/content/Context;

    .line 442
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 443
    iput-object p2, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 444
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 445
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 446
    return-void
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 6
    .parameter "tab"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    .local p2, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter$TabInfo;

    invoke-direct {v0, p2, p3}, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter$TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 450
    .local v0, info:Lcom/android/browser/OfflineComboViewActivity$TabsAdapter$TabInfo;
    invoke-virtual {p1, v0}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 451
    invoke-virtual {p1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 452
    iget-object v1, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v1, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->notifyDataSetChanged()V

    .line 455
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .registers 6
    .parameter "position"

    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter$TabInfo;

    .line 465
    .local v0, info:Lcom/android/browser/OfflineComboViewActivity$TabsAdapter$TabInfo;
    iget-object v1, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mContext:Landroid/content/Context;

    #getter for: Lcom/android/browser/OfflineComboViewActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter$TabInfo;->access$000(Lcom/android/browser/OfflineComboViewActivity$TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/browser/OfflineComboViewActivity$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter$TabInfo;->access$100(Lcom/android/browser/OfflineComboViewActivity$TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 479
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 470
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 475
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 500
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 6
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 484
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 485
    .local v1, tag:Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 486
    iget-object v2, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1a

    .line 487
    iget-object v2, p0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 485
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 490
    :cond_1d
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 495
    return-void
.end method
