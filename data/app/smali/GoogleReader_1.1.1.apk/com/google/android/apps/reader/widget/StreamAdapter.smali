.class public Lcom/google/android/apps/reader/widget/StreamAdapter;
.super Lcom/google/android/apps/reader/widget/BaseItemsAdapter;
.source "StreamAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamAdapter"


# instance fields
.field private final mViewBinder:Lcom/google/android/apps/reader/widget/StreamViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/google/android/apps/reader/widget/StreamViewBinder;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/apps/reader/widget/StreamViewBinder;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/StreamAdapter;->mViewBinder:Lcom/google/android/apps/reader/widget/StreamViewBinder;

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic addStar(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->addStar(Landroid/database/Cursor;)V

    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/StreamAdapter;->mViewBinder:Lcom/google/android/apps/reader/widget/StreamViewBinder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/StreamViewBinder;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 54
    return-void
.end method

.method public bridge synthetic createLoader(Landroid/net/Uri;)Landroid/support/v4/content/CursorLoader;
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deleteItem(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->deleteItem(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic emailItem(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->emailItem(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic findItem(JI)Landroid/database/Cursor;
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->findItem(JI)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItemId(Landroid/database/Cursor;)J
    .registers 4
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getItemId(Landroid/database/Cursor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 58
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_11

    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 60
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "com.google.reader.cursor.extra.USER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .end local v1           #extras:Landroid/os/Bundle;
    :goto_10
    return-object v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public bridge synthetic isStarred(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->isStarred(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isUnread(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->isUnread(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic itemUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->itemUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keepUnread(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->keepUnread(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic likeItem(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->likeItem(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic markAllAsRead()V
    .registers 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->markAllAsRead()V

    return-void
.end method

.method public bridge synthetic markAllAsRead(J)V
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->markAllAsRead(J)V

    return-void
.end method

.method public bridge synthetic markPreviousAsRead(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->markPreviousAsRead(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic markRead(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->markRead(Landroid/database/Cursor;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic newViewItemInStreamIntent(Landroid/database/Cursor;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->newViewItemInStreamIntent(Landroid/database/Cursor;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 71
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    .line 72
    check-cast v0, Ljava/lang/Integer;

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 75
    invoke-virtual {p0, v1, p2}, Lcom/google/android/apps/reader/widget/StreamAdapter;->setStarred(Landroid/database/Cursor;Z)V

    .line 80
    :cond_1d
    :goto_1d
    return-void

    .line 78
    :cond_1e
    const-string v1, "StreamAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public bridge synthetic onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyDown(Landroid/database/Cursor;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->onKeyDown(Landroid/database/Cursor;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onOptionsItemSelected(Landroid/view/MenuItem;Landroid/database/Cursor;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onPrepareOptionsMenu(Landroid/view/Menu;Landroid/database/Cursor;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->onPrepareOptionsMenu(Landroid/view/Menu;Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeStar(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->removeStar(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic sendItem(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->sendItem(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setLiked(Landroid/database/Cursor;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setLiked(Landroid/database/Cursor;Z)V

    return-void
.end method

.method public bridge synthetic setRead(Landroid/database/Cursor;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setRead(Landroid/database/Cursor;Z)V

    return-void
.end method

.method public bridge synthetic setShared(Landroid/database/Cursor;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setShared(Landroid/database/Cursor;Z)V

    return-void
.end method

.method public bridge synthetic setSilent(Z)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setSilent(Z)V

    return-void
.end method

.method public bridge synthetic setStarred(Landroid/database/Cursor;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setStarred(Landroid/database/Cursor;Z)V

    return-void
.end method

.method public bridge synthetic shareItem(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->shareItem(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic shareWithNote(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->shareWithNote(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showAllAsRead()V
    .registers 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->showAllAsRead()V

    return-void
.end method

.method public bridge synthetic syncChanges()Z
    .registers 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->syncChanges()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic tagItem(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->tagItem(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic toggleLike(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->toggleLike(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic toggleRead(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->toggleRead(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic toggleShare(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->toggleShare(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic toggleStar(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->toggleStar(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic unlikeItem(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->unlikeItem(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic unshareItem(Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->unshareItem(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic viewOriginal(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->viewOriginal(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method
