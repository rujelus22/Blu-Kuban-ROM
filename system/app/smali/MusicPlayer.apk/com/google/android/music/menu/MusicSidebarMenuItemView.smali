.class public Lcom/google/android/music/menu/MusicSidebarMenuItemView;
.super Lcom/google/android/music/menu/MusicListMenuItemView;
.source "MusicSidebarMenuItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/menu/MusicListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 20
    const/16 v1, 0x11

    if-ne p1, v1, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicSidebarMenuItemView;->getMenuItem()Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenuItem;->getSelected()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 21
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicSidebarMenuItemView;->getMenuItem()Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenuItem;->getMenu()Lcom/google/android/music/menu/MusicMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenu;->findSelectedItem()Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 22
    .local v0, selectedItem:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenuItem;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 23
    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenuItem;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 26
    .end local v0           #selectedItem:Lcom/google/android/music/menu/MusicMenuItem;
    :goto_2a
    return v1

    :cond_2b
    invoke-super {p0, p1, p2}, Lcom/google/android/music/menu/MusicListMenuItemView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2a
.end method
