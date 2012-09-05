.class public Lcom/sec/android/socialhub/SocialHubBaseContextMenu;
.super Ljava/lang/Object;
.source "SocialHubBaseContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static onCreateContextMenu(Landroid/content/Context;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;I)V
    .registers 16
    .parameter "context"
    .parameter "menu"
    .parameter "view"
    .parameter "arg2"
    .parameter "tag"
    .parameter "order"

    .prologue
    .line 39
    const/4 v5, 0x0

    .line 40
    .local v5, sns_copy_text:Landroid/view/MenuItem;
    const/4 v3, 0x0

    .line 42
    .local v3, print_item:Landroid/view/MenuItem;
    if-nez p2, :cond_e

    .line 44
    const-string v6, "SocialHubBaseContextMenu"

    const-string v7, "onCreateContextMenu()"

    const-string v8, "view is null!!"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_d
    :goto_d
    return-void

    .line 48
    :cond_e
    if-nez p4, :cond_1a

    .line 50
    const-string v6, "SocialHubBaseContextMenu"

    const-string v7, "onCreateContextMenu()"

    const-string v8, "tag is null!!"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 54
    :cond_1a
    invoke-interface {p4}, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    .local v0, app_context:Landroid/content/Context;
    invoke-static {v0, p4}, Lcom/sec/android/socialhub/clipboard/ClipBoardFactory;->getClipBoard(Landroid/content/Context;Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;)Lcom/sec/android/socialhub/clipboard/AbstractClipboard;

    move-result-object v1

    .line 60
    .local v1, clipboard:Lcom/sec/android/socialhub/clipboard/AbstractClipboard;
    move-object v2, p4

    .line 61
    .local v2, holder:Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;
    move-object v4, p2

    .line 64
    .local v4, print_view:Landroid/view/View;
    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x7f08005f

    invoke-interface {p1, v6, p5, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    .line 65
    const/4 v6, 0x0

    add-int/lit8 v7, p5, 0x1

    const/4 v8, 0x2

    const v9, 0x7f0800ac

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    .line 67
    if-eqz v5, :cond_53

    .line 69
    new-instance v6, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$1;

    invoke-direct {v6, v1, v2}, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$1;-><init>(Lcom/sec/android/socialhub/clipboard/AbstractClipboard;Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 84
    :cond_53
    if-eqz v3, :cond_d

    .line 86
    new-instance v6, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$2;

    invoke-direct {v6, v0, v4}, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$2;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_d
.end method
