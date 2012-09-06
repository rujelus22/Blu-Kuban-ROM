.class public Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;
.source "PhotoPagerAdapter.java"


# instance fields
.field final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field final mAllowPlusOne:Z

.field private final mDefaultAlbumName:Ljava/lang/String;

.field final mEventId:Ljava/lang/String;

.field final mForceLoadId:Ljava/lang/Long;

.field private mPageable:Lcom/google/android/apps/plus/phone/Pageable;

.field final mStreamId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .parameter "context"
    .parameter "fm"
    .parameter "c"
    .parameter "account"
    .parameter "forceLoadId"
    .parameter "streamId"
    .parameter "eventId"
    .parameter "defaultAlbumName"
    .parameter "allowPlusOne"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;)V

    .line 35
    iput-object p4, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 36
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mForceLoadId:Ljava/lang/Long;

    .line 37
    iput-object p6, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mStreamId:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mEventId:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mDefaultAlbumName:Ljava/lang/String;

    .line 40
    iput-boolean p9, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mAllowPlusOne:Z

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mPageable:Lcom/google/android/apps/plus/phone/Pageable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mPageable:Lcom/google/android/apps/plus/phone/Pageable;

    invoke-interface {v0}, Lcom/google/android/apps/plus/phone/Pageable;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 49
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 51
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
    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->isDataValid()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 84
    .local v0, cursor:Landroid/database/Cursor;
    :goto_a
    if-eqz v0, :cond_25

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_25

    .line 86
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mPageable:Lcom/google/android/apps/plus/phone/Pageable;

    invoke-interface {v1}, Lcom/google/android/apps/plus/phone/Pageable;->loadMore()V

    .line 87
    new-instance v1, Lcom/google/android/apps/plus/fragments/LoadingFragment;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/LoadingFragment;-><init>()V

    .line 89
    :goto_22
    return-object v1

    .line 83
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_23
    const/4 v0, 0x0

    goto :goto_a

    .line 89
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_25
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_22
.end method

.method public getItem(Landroid/content/Context;Landroid/database/Cursor;)Landroid/support/v4/app/Fragment;
    .registers 12
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 56
    const/4 v6, 0x1

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 57
    .local v2, photoId:J
    const/4 v6, 0x2

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, photoUrl:Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, ownerId:Ljava/lang/String;
    const/4 v6, 0x4

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, photoTitle:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/apps/plus/phone/Intents;->newPhotoViewFragmentIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v0

    .line 64
    .local v0, builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoUrl(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setDisplayName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mDefaultAlbumName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mStreamId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setStreamId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mEventId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setEventId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mAllowPlusOne:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAllowPlusOne(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mForceLoadId:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setForceLoadId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    .line 75
    new-instance v6, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v7

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;-><init>(Landroid/content/Intent;I)V

    return-object v6
.end method

.method public setPageable(Lcom/google/android/apps/plus/phone/Pageable;)V
    .registers 2
    .parameter "pageable"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotoPagerAdapter;->mPageable:Lcom/google/android/apps/plus/phone/Pageable;

    .line 97
    return-void
.end method
