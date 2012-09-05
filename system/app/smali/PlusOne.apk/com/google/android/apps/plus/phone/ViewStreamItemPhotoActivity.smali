.class public Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ViewStreamItemPhotoActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTIVITY_RESULT_PROJECTION:[Ljava/lang/String;

.field private static final STREAM_ITEM_PHOTO_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "raw_contact_source_id"

    aput-object v1, v0, v2

    const-string v1, "stream_item_photo_sync1"

    aput-object v1, v0, v3

    const-string v1, "stream_item_photo_sync2"

    aput-object v1, v0, v4

    const-string v1, "sort_index"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->STREAM_ITEM_PHOTO_PROJECTION:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "person_id"

    aput-object v1, v0, v2

    const-string v1, "activity_id"

    aput-object v1, v0, v3

    const-string v1, "mediaIndex"

    aput-object v1, v0, v4

    const-string v1, "photoIndex"

    aput-object v1, v0, v5

    const-string v1, "media"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->ACTIVITY_RESULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 86
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->STREAM_ITEM_PHOTO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->ACTIVITY_RESULT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 181
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 182
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_10

    .line 183
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->finish()V

    .line 186
    :cond_10
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 187
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_19

    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->finish()V

    .line 192
    :cond_19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v1, args:Landroid/os/Bundle;
    const-string v4, "account"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 194
    const-string v4, "stream_item_uri"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 196
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 6
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    const-string v2, "account"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 204
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v2, "stream_item_uri"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 205
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;)V

    return-object v2
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 23
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    .line 214
    .local v3, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v3, :cond_9

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->finish()V

    .line 220
    :cond_9
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 222
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, activityId:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 224
    .local v18, personId:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 225
    .local v17, mediaIndex:I
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 226
    .local v19, photoIndex:I
    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    .line 227
    .local v16, mediaData:[B
    if-eqz v16, :cond_92

    move-object/from16 v0, v16

    array-length v2, v0

    if-eqz v2, :cond_92

    .line 228
    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/plus/content/DbMedia;->deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;

    move-result-object v15

    .line 229
    .local v15, mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    if-eqz v15, :cond_68

    array-length v2, v15

    move/from16 v0, v17

    if-le v2, v0, :cond_68

    .line 230
    aget-object v14, v15, v17

    .line 231
    .local v14, media:Lcom/google/android/apps/plus/content/DbMedia;
    invoke-virtual {v14}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v2

    sget-object v5, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-ne v2, v5, :cond_84

    .line 233
    invoke-virtual {v14}, Lcom/google/android/apps/plus/content/DbMedia;->isPWA()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 235
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v13

    .line 245
    .local v13, intent:Landroid/content/Intent;
    :goto_63
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->startActivity(Landroid/content/Intent;)V

    .line 257
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #media:Lcom/google/android/apps/plus/content/DbMedia;
    .end local v15           #mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    :cond_68
    :goto_68
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->finish()V

    .line 258
    return-void

    .line 239
    .restart local v14       #media:Lcom/google/android/apps/plus/content/DbMedia;
    .restart local v15       #mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    :cond_6c
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v14}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object v6, v3

    invoke-static/range {v5 .. v12}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v13

    .restart local v13       #intent:Landroid/content/Intent;
    goto :goto_63

    .line 247
    .end local v13           #intent:Landroid/content/Intent;
    :cond_84
    invoke-virtual {v14}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/google/android/apps/plus/phone/Intents;->viewContent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_68

    .line 250
    .end local v14           #media:Lcom/google/android/apps/plus/content/DbMedia;
    .end local v15           #mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    :cond_92
    if-eqz v4, :cond_a0

    .line 251
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getPostCommentsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_68

    .line 252
    :cond_a0
    if-eqz v18, :cond_b2

    .line 253
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1, v2, v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_68

    .line 255
    :cond_b2
    const v2, 0x7f07024c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_68
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
