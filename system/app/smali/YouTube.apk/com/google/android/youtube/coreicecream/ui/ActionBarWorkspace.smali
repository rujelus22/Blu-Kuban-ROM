.class public Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;
.super Lcom/google/android/youtube/core/ui/AbstractWorkspace;
.source "SourceFile"


# instance fields
.field private final b:Landroid/app/ActionBar$TabListener;

.field private c:Landroid/app/ActionBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Lcom/google/android/youtube/coreicecream/ui/a;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/coreicecream/ui/a;-><init>(Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;)V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->b:Landroid/app/ActionBar$TabListener;

    .line 66
    return-void
.end method

.method public static a(Landroid/app/Activity;ILandroid/app/ActionBar;)Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 50
    const-string v0, "activity may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionBar may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    iput-object p2, v0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8e

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    :goto_1f
    iget-object v3, v0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->removeAllTabs()V

    move v3, v4

    :goto_25
    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_90

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x2

    const/high16 v7, 0x4140

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    iget-object v7, v0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v7, v0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->b:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_8e
    move v1, v2

    goto :goto_1f

    :cond_90
    if-ltz v1, :cond_a9

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_a9

    :goto_9a
    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    iget-object v3, v0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->requestLayout()V

    return-object v0

    :cond_a9
    move v1, v4

    goto :goto_9a
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->d(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    if-eqz v0, :cond_f

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 78
    :cond_f
    return-void
.end method
