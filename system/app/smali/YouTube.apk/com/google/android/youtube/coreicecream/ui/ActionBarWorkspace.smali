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
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Lcom/google/android/youtube/coreicecream/ui/a;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/coreicecream/ui/a;-><init>(Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;)V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->b:Landroid/app/ActionBar$TabListener;

    .line 69
    return-void
.end method

.method public static a(Landroid/app/Activity;ILandroid/app/ActionBar;)Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const-string v0, "activity may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->a(Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;Landroid/app/ActionBar;I)Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;Landroid/app/ActionBar;I)Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 31
    const-string v0, "workspace may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "actionBar may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    .line 34
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    :goto_17
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->removeAllTabs()V

    move v1, v2

    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_49

    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->b:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_47
    const/4 v0, -0x1

    goto :goto_17

    :cond_49
    if-ltz v0, :cond_5c

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_5c

    :goto_53
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->requestLayout()V

    .line 35
    return-object p0

    :cond_5c
    move v0, v2

    .line 34
    goto :goto_53
.end method

.method static synthetic a(Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    if-eqz v0, :cond_9

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 81
    :cond_9
    return-void
.end method
