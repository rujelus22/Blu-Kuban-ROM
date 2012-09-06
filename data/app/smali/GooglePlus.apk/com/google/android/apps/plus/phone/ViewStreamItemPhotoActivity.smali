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
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "raw_contact_source_id"

    aput-object v1, v0, v2

    const-string v1, "stream_item_photo_sync1"

    aput-object v1, v0, v3

    const-string v1, "stream_item_photo_sync2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->STREAM_ITEM_PHOTO_PROJECTION:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "person_id"

    aput-object v1, v0, v2

    const-string v1, "activity_id"

    aput-object v1, v0, v3

    const-string v1, "mediaIndex"

    aput-object v1, v0, v4

    const-string v1, "media"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->ACTIVITY_RESULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 82
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->STREAM_ITEM_PHOTO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->ACTIVITY_RESULT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 175
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 176
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_10

    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->finish()V

    .line 180
    :cond_10
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 181
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_19

    .line 183
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->finish()V

    .line 186
    :cond_19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v1, args:Landroid/os/Bundle;
    const-string v4, "account"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 188
    const-string v4, "stream_item_uri"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 190
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
    .line 197
    const-string v2, "account"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 198
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v2, "stream_item_uri"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 199
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity$ActivityIdLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;)V

    return-object v2
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 19
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
    .line 207
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v8

    .line 208
    .local v8, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v8, :cond_9

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->finish()V

    .line 214
    :cond_9
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 216
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, activityId:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 218
    .local v15, personId:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 219
    .local v14, mediaIndex:I
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 220
    .local v13, mediaData:[B
    if-eqz v13, :cond_9b

    array-length v2, v13

    if-eqz v2, :cond_9b

    .line 221
    invoke-static {v13}, Lcom/google/android/apps/plus/content/DbMedia;->deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;

    move-result-object v12

    .line 222
    .local v12, mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    if-eqz v12, :cond_70

    array-length v2, v12

    if-le v2, v14, :cond_70

    .line 223
    aget-object v11, v12, v14

    .line 224
    .local v11, media:Lcom/google/android/apps/plus/content/DbMedia;
    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-ne v2, v3, :cond_8d

    .line 225
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotoViewActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v10

    .line 227
    .local v10, builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/DbMedia;->isPWA()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 229
    new-instance v1, Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v2, 0x0

    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/DbMedia;->getMediaTag()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 231
    .local v1, photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v10, v8}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setActivityId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoRef(Lcom/google/android/apps/plus/api/MediaRef;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    .line 240
    .end local v1           #photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    :goto_67
    invoke-virtual {v10}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    .end local v10           #builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .end local v11           #media:Lcom/google/android/apps/plus/content/DbMedia;
    .end local v12           #mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    :cond_70
    :goto_70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->finish()V

    .line 253
    return-void

    .line 236
    .restart local v10       #builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    .restart local v11       #media:Lcom/google/android/apps/plus/content/DbMedia;
    .restart local v12       #mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    :cond_74
    invoke-virtual {v10, v8}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoUrl(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoOnly(Ljava/lang/Boolean;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    goto :goto_67

    .line 242
    .end local v10           #builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    :cond_8d
    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v8, v2}, Lcom/google/android/apps/plus/phone/Intents;->viewContent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_70

    .line 245
    .end local v11           #media:Lcom/google/android/apps/plus/content/DbMedia;
    .end local v12           #mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    :cond_9b
    if-eqz v9, :cond_a9

    .line 246
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/google/android/apps/plus/phone/Intents;->getPostCommentsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_70

    .line 247
    :cond_a9
    if-eqz v15, :cond_b8

    .line 248
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v8, v15, v2}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/phone/ViewStreamItemPhotoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_70

    .line 250
    :cond_b8
    const v2, 0x7f080301

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_70
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
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
    .line 260
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
