.class public Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;
.super Lcom/google/android/youtube/core/ui/AbstractWorkspace;
.source "ActionBarWorkspace.java"


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field private final tabListener:Landroid/app/ActionBar$TabListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace$1;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace$1;-><init>(Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;)V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->tabListener:Landroid/app/ActionBar$TabListener;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->snapToScreenByTap(I)V

    return-void
.end method

.method public static attachToActionBar(Landroid/app/Activity;ILandroid/app/ActionBar;)Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;
    .registers 4
    .parameter "activity"
    .parameter "workspaceId"
    .parameter "actionBar"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->attachToActionBar(Landroid/app/Activity;ILandroid/app/ActionBar;I)Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    move-result-object v0

    return-object v0
.end method

.method public static attachToActionBar(Landroid/app/Activity;ILandroid/app/ActionBar;I)Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;
    .registers 6
    .parameter "activity"
    .parameter "workspaceId"
    .parameter "actionBar"
    .parameter "selectedTabId"

    .prologue
    .line 38
    const-string v1, "activity may not be null"

    invoke-static {p0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "actionBar may not be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    .line 41
    .local v0, workspace:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;
    invoke-direct {v0, p2}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->setActionBar(Landroid/app/ActionBar;)V

    .line 42
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getTabIndex(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->recreate(I)V

    .line 43
    return-object v0
.end method

.method private recreate(I)V
    .registers 9
    .parameter "tabIndexToSelect"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 85
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_6e

    .line 88
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v1, tabView:Landroid/widget/TextView;
    const/4 v2, 0x2

    const/high16 v3, 0x4140

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 90
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 92
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 94
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 95
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->actionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->tabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 102
    .end local v1           #tabView:Landroid/widget/TextView;
    :cond_6e
    if-ltz p1, :cond_87

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    if-ge p1, v2, :cond_87

    .line 104
    :goto_78
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->actionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->requestLayout()V

    .line 108
    return-void

    .line 102
    :cond_87
    const/4 p1, 0x0

    goto :goto_78
.end method

.method private setActionBar(Landroid/app/ActionBar;)V
    .registers 2
    .parameter "actionBar"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->actionBar:Landroid/app/ActionBar;

    .line 82
    return-void
.end method


# virtual methods
.method protected recreate()V
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getSelectedTabIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->recreate(I)V

    .line 71
    return-void
.end method

.method protected selectTab(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_f

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 78
    :cond_f
    return-void
.end method
