.class public Lcom/google/android/music/menu/MusicSidebarMenu;
.super Lcom/google/android/music/menu/MusicListMenu;
.source "MusicSidebarMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V
    .registers 4
    .parameter "context"
    .parameter "callback"
    .parameter "rootView"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicListMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 17
    return-void
.end method


# virtual methods
.method public add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;
    .registers 6
    .parameter "id"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicListMenu;->add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 39
    .local v0, item:Lcom/google/android/music/menu/MusicMenuItem;
    const v1, 0x7f040053

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setLayoutId(I)V

    .line 40
    return-object v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 62
    return-void
.end method

.method public getMenuView()Lcom/google/android/music/menu/MusicListMenuView;
    .registers 6

    .prologue
    .line 21
    monitor-enter p0

    .line 22
    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/menu/MusicSidebarMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    if-nez v2, :cond_36

    .line 23
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicSidebarMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 24
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040052

    iget-object v2, p0, Lcom/google/android/music/menu/MusicSidebarMenu;->mRootView:Landroid/view/View;

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 27
    .local v1, obj:Landroid/widget/LinearLayout;
    const v2, 0x7f100087

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/menu/MusicListMenuView;

    iput-object v2, p0, Lcom/google/android/music/menu/MusicSidebarMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    .line 28
    iget-object v2, p0, Lcom/google/android/music/menu/MusicSidebarMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    invoke-virtual {v2, p0}, Lcom/google/android/music/menu/MusicListMenuView;->initialize(Lcom/google/android/music/menu/MusicListMenu;)V

    .line 29
    iget-object v2, p0, Lcom/google/android/music/menu/MusicSidebarMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    invoke-virtual {v2, p0}, Lcom/google/android/music/menu/MusicListMenuView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 30
    iget-object v2, p0, Lcom/google/android/music/menu/MusicSidebarMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/menu/MusicListMenuView;->setUseDividers(Z)V

    .line 32
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #obj:Landroid/widget/LinearLayout;
    :cond_36
    iget-object v2, p0, Lcom/google/android/music/menu/MusicSidebarMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    monitor-exit p0

    return-object v2

    .line 33
    :catchall_3a
    move-exception v2

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .registers 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicSidebarMenu;->getMenuView()Lcom/google/android/music/menu/MusicListMenuView;

    .line 46
    return-void
.end method
