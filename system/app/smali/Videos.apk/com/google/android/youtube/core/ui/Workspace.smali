.class public Lcom/google/android/youtube/core/ui/Workspace;
.super Lcom/google/android/youtube/core/ui/AbstractWorkspace;
.source "Workspace.java"


# instance fields
.field private tabRow:Lcom/google/android/youtube/core/ui/TabRow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public static attachToTabRow(Landroid/app/Activity;II)Lcom/google/android/youtube/core/ui/Workspace;
    .registers 4
    .parameter "activity"
    .parameter "workspaceId"
    .parameter "tabRowId"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/youtube/core/ui/Workspace;->attachToTabRow(Landroid/app/Activity;III)Lcom/google/android/youtube/core/ui/Workspace;

    move-result-object v0

    return-object v0
.end method

.method public static attachToTabRow(Landroid/app/Activity;III)Lcom/google/android/youtube/core/ui/Workspace;
    .registers 7
    .parameter "activity"
    .parameter "workspaceId"
    .parameter "tabRowId"
    .parameter "selectedTabId"

    .prologue
    .line 50
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/TabRow;

    .line 51
    .local v0, tabRow:Lcom/google/android/youtube/core/ui/TabRow;
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/ui/Workspace;

    .line 52
    .local v1, workspace:Lcom/google/android/youtube/core/ui/Workspace;
    invoke-static {p0, v1, v0, p3}, Lcom/google/android/youtube/core/ui/Workspace;->attachToTabRow(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/Workspace;Lcom/google/android/youtube/core/ui/TabRow;I)Lcom/google/android/youtube/core/ui/Workspace;

    move-result-object v2

    return-object v2
.end method

.method public static attachToTabRow(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/Workspace;Lcom/google/android/youtube/core/ui/TabRow;)Lcom/google/android/youtube/core/ui/Workspace;
    .registers 4
    .parameter "activity"
    .parameter "workspace"
    .parameter "tabRow"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/youtube/core/ui/Workspace;->attachToTabRow(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/Workspace;Lcom/google/android/youtube/core/ui/TabRow;I)Lcom/google/android/youtube/core/ui/Workspace;

    move-result-object v0

    return-object v0
.end method

.method public static attachToTabRow(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/Workspace;Lcom/google/android/youtube/core/ui/TabRow;I)Lcom/google/android/youtube/core/ui/Workspace;
    .registers 7
    .parameter "activity"
    .parameter "workspace"
    .parameter "tabRow"
    .parameter "selectedTabId"

    .prologue
    .line 34
    invoke-direct {p1, p2}, Lcom/google/android/youtube/core/ui/Workspace;->setTabRow(Lcom/google/android/youtube/core/ui/TabRow;)V

    .line 36
    invoke-virtual {p1, p3}, Lcom/google/android/youtube/core/ui/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 37
    .local v1, selectedView:Landroid/view/View;
    if-eqz v1, :cond_14

    .line 38
    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/ui/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 39
    .local v0, selectedIndex:I
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/google/android/youtube/core/ui/TabRow;->focusTab(IZ)V

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/ui/Workspace;->setCurrentScreen(I)V

    .line 42
    .end local v0           #selectedIndex:I
    :cond_14
    return-object p1
.end method

.method private setTabRow(Lcom/google/android/youtube/core/ui/TabRow;)V
    .registers 3
    .parameter "th"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/Workspace;->tabRow:Lcom/google/android/youtube/core/ui/TabRow;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->updateTabRow()V

    .line 83
    new-instance v0, Lcom/google/android/youtube/core/ui/Workspace$1;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/ui/Workspace$1;-><init>(Lcom/google/android/youtube/core/ui/Workspace;)V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/ui/TabRow;->setOnTabClickListener(Lcom/google/android/youtube/core/ui/TabRow$OnTabClickListener;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected recreate()V
    .registers 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->updateTabRow()V

    .line 77
    return-void
.end method

.method protected selectTab(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->tabRow:Lcom/google/android/youtube/core/ui/TabRow;

    if-eqz v0, :cond_a

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/Workspace;->tabRow:Lcom/google/android/youtube/core/ui/TabRow;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/ui/TabRow;->focusTab(IZ)V

    .line 72
    :cond_a
    return-void
.end method

.method public updateTabRow()V
    .registers 5

    .prologue
    .line 91
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->tabRow:Lcom/google/android/youtube/core/ui/TabRow;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/ui/TabRow;->removeAllTabs()V

    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 93
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->tabRow:Lcom/google/android/youtube/core/ui/TabRow;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/ui/TabRow;->addTab(Ljava/lang/String;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 95
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getSelectedTabIndex()I

    move-result v1

    .line 96
    .local v1, selectedTabIndex:I
    if-ltz v1, :cond_2c

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->getChildCount()I

    move-result v2

    if-le v1, v2, :cond_2d

    .line 97
    :cond_2c
    const/4 v1, 0x0

    .line 99
    :cond_2d
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->tabRow:Lcom/google/android/youtube/core/ui/TabRow;

    if-eqz v2, :cond_37

    .line 100
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/Workspace;->tabRow:Lcom/google/android/youtube/core/ui/TabRow;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/google/android/youtube/core/ui/TabRow;->focusTab(IZ)V

    .line 106
    :cond_37
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/Workspace;->requestLayout()V

    .line 107
    return-void
.end method
