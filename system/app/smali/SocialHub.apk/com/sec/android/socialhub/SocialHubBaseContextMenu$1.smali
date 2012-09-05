.class final Lcom/sec/android/socialhub/SocialHubBaseContextMenu$1;
.super Ljava/lang/Object;
.source "SocialHubBaseContextMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/SocialHubBaseContextMenu;->onCreateContextMenu(Landroid/content/Context;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$clipboard:Lcom/sec/android/socialhub/clipboard/AbstractClipboard;

.field final synthetic val$holder:Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/clipboard/AbstractClipboard;Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$1;->val$clipboard:Lcom/sec/android/socialhub/clipboard/AbstractClipboard;

    iput-object p2, p0, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$1;->val$holder:Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "arg0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$1;->val$clipboard:Lcom/sec/android/socialhub/clipboard/AbstractClipboard;

    if-eqz v0, :cond_b

    .line 75
    iget-object v0, p0, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$1;->val$clipboard:Lcom/sec/android/socialhub/clipboard/AbstractClipboard;

    iget-object v1, p0, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$1;->val$holder:Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/clipboard/AbstractClipboard;->copy(Ljava/lang/Object;)V

    .line 78
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
