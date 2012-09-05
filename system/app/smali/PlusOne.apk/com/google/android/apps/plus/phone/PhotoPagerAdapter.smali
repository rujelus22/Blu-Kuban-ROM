.class public Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;
.source "PhotoPagerAdapter.java"


# instance fields
.field final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mDefaultAlbumName:Ljava/lang/String;

.field final mForceLoadId:Ljava/lang/Long;

.field private mPageable:Lcom/google/android/apps/plus/phone/Pageable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "fm"
    .parameter "c"
    .parameter "account"
    .parameter "forceLoadId"
    .parameter "defaultAlbumName"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;)V

    .line 31
    iput-object p4, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 32
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mForceLoadId:Ljava/lang/Long;

    .line 33
    iput-object p6, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mDefaultAlbumName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mPageable:Lcom/google/android/apps/plus/phone/Pageable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mPageable:Lcom/google/android/apps/plus/phone/Pageable;

    invoke-interface {v0}, Lcom/google/android/apps/plus/phone/Pageable;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 42
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 44
    :goto_12
    return v0

    :cond_13
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->getCount()I

    move-result v0

    goto :goto_12
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 4
    .parameter "position"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->isDataValid()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 66
    .local v0, cursor:Landroid/database/Cursor;
    :goto_a
    if-eqz v0, :cond_25

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_25

    .line 68
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mPageable:Lcom/google/android/apps/plus/phone/Pageable;

    invoke-interface {v1}, Lcom/google/android/apps/plus/phone/Pageable;->loadMore()V

    .line 69
    new-instance v1, Lcom/google/android/apps/plus/fragments/LoadingFragment;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/LoadingFragment;-><init>()V

    .line 71
    :goto_22
    return-object v1

    .line 65
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_23
    const/4 v0, 0x0

    goto :goto_a

    .line 71
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_25
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_22
.end method

.method public getItem(Landroid/content/Context;Landroid/database/Cursor;)Landroid/support/v4/app/Fragment;
    .registers 14
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 50
    .local v2, photoId:J
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, photoUrl:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 52
    .local v4, ownerId:J
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, photoTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mForceLoadId:Ljava/lang/Long;

    iget-object v9, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mDefaultAlbumName:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoOneUpIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 57
    .local v10, intent:Landroid/content/Intent;
    new-instance v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-direct {v0, v10, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public setPageable(Lcom/google/android/apps/plus/phone/Pageable;)V
    .registers 2
    .parameter "pageable"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mPageable:Lcom/google/android/apps/plus/phone/Pageable;

    .line 79
    return-void
.end method
