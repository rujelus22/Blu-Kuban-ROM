.class public final Lcom/google/android/apps/reader/widget/ItemAdapter;
.super Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;
    }
.end annotation


# instance fields
.field private mCurrentPrimaryItem:Lcom/google/android/apps/reader/widget/ItemViewFragment;

.field private final mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

.field private mLastPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .registers 4
    .parameter "context"
    .parameter "fragmentManager"

    .prologue
    .line 56
    invoke-direct {p0, p2}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 57
    new-instance v0, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;-><init>(Lcom/google/android/apps/reader/widget/ItemAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    .line 58
    return-void
.end method

.method private static cursorRowToContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .registers 2
    .parameter "cursor"

    .prologue
    .line 211
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 212
    .local v0, values:Landroid/content/ContentValues;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 213
    return-object v0
.end method

.method private getCursorExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 100
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_c
.end method


# virtual methods
.method public createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;
    .registers 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->createLoader(Landroid/net/Uri;)Landroid/support/v4/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public findItem(J)Landroid/database/Cursor;
    .registers 6
    .parameter "itemId"

    .prologue
    .line 194
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    iget v2, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mLastPosition:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->findItem(JI)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_10

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mLastPosition:I

    .line 199
    :cond_10
    return-object v0
.end method

.method public findItemPosition(J)I
    .registers 5
    .parameter "itemId"

    .prologue
    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItem(J)Landroid/database/Cursor;

    move-result-object v0

    .line 204
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x2

    goto :goto_a
.end method

.method public bridge synthetic finishUpdate(Landroid/view/View;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->finishUpdate(Landroid/view/View;)V

    return-void
.end method

.method public getAccount()Lcom/google/android/accounts/Account;
    .registers 3

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/ItemAdapter;->getCursorExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.reader.cursor.extra.ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/accounts/Account;

    return-object p0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->getCount()I

    move-result v0

    return v0
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .registers 3
    .parameter "position"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 5
    .parameter "position"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 63
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/apps/reader/widget/ItemAdapter;->cursorRowToContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v1

    .line 64
    .local v1, values:Landroid/content/ContentValues;
    new-instance v2, Lcom/google/android/apps/reader/widget/ItemViewFragment;

    invoke-direct {v2, v1}, Lcom/google/android/apps/reader/widget/ItemViewFragment;-><init>(Landroid/content/ContentValues;)V

    return-object v2
.end method

.method public getItemId(Landroid/database/Cursor;)J
    .registers 4
    .parameter "cursor"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->getItemId(Landroid/database/Cursor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 7
    .parameter "object"

    .prologue
    .line 69
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/reader/widget/ItemViewFragment;

    move-object v1, v0

    .line 70
    .local v1, fragment:Lcom/google/android/apps/reader/widget/ItemViewFragment;
    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/ItemViewFragment;->getItemId()J

    move-result-wide v2

    .line 71
    .local v2, itemId:J
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/reader/widget/ItemAdapter;->findItemPosition(J)I

    move-result v4

    return v4
.end method

.method public getItemTag(I)Ljava/lang/String;
    .registers 4
    .parameter "position"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/widget/ItemAdapter;->getItemId(Landroid/database/Cursor;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mCurrentPrimaryItem:Lcom/google/android/apps/reader/widget/ItemViewFragment;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mCurrentPrimaryItem:Lcom/google/android/apps/reader/widget/ItemViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/ItemViewFragment;->getProgress()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/ItemAdapter;->getCursorExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.reader.cursor.extra.URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isStarred(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "cursor"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->isStarred(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public isUnread(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "cursor"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->isUnread(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public itemUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->itemUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public markRead(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->markRead(Landroid/database/Cursor;)V

    .line 166
    return-void
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->notifyDataSetChanged()V

    .line 95
    invoke-super {p0}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 3
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 134
    return-void
.end method

.method public onKeyDown(Landroid/database/Cursor;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "cursor"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->onKeyDown(Landroid/database/Cursor;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;Landroid/database/Cursor;)Z
    .registers 4
    .parameter "item"
    .parameter "cursor"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;Landroid/database/Cursor;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->onPrepareOptionsMenu(Landroid/view/Menu;Landroid/database/Cursor;)Z

    .line 138
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 81
    return-void
.end method

.method public bridge synthetic restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public bridge synthetic saveState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public sendItem(Landroid/database/Cursor;)V
    .registers 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->sendItem(Landroid/database/Cursor;)Z

    .line 146
    return-void
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 5
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mCurrentPrimaryItem:Lcom/google/android/apps/reader/widget/ItemViewFragment;

    if-eq p3, v0, :cond_14

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mCurrentPrimaryItem:Lcom/google/android/apps/reader/widget/ItemViewFragment;

    if-eqz v0, :cond_10

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mCurrentPrimaryItem:Lcom/google/android/apps/reader/widget/ItemViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/ItemViewFragment;->scrollToTop()V

    .line 185
    :cond_10
    check-cast p3, Lcom/google/android/apps/reader/widget/ItemViewFragment;

    .end local p3
    iput-object p3, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mCurrentPrimaryItem:Lcom/google/android/apps/reader/widget/ItemViewFragment;

    .line 187
    :cond_14
    return-void
.end method

.method public setSilent(Z)V
    .registers 3
    .parameter "silent"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->setSilent(Z)V

    .line 162
    return-void
.end method

.method public setStarred(Landroid/database/Cursor;Z)V
    .registers 4
    .parameter "cursor"
    .parameter "starred"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->setStarred(Landroid/database/Cursor;Z)V

    .line 150
    return-void
.end method

.method public bridge synthetic startUpdate(Landroid/view/View;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->startUpdate(Landroid/view/View;)V

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 89
    invoke-super {p0}, Lcom/google/android/apps/reader/widget/FragmentStatePagerAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method

.method public syncChanges()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->syncChanges()Z

    .line 121
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemAdapter;->mHelper:Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ItemAdapter$ItemsHelper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 85
    return-void
.end method
