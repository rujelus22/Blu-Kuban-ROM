.class public abstract Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "EsUrlGatewayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;
    }
.end annotation


# static fields
.field private static sKnownUnsupportedUri:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field protected mActivityId:Ljava/lang/String;

.field protected mAlbumId:J

.field protected mDesktopActivityId:Ljava/lang/String;

.field protected mHangoutDomain:Ljava/lang/String;

.field protected mHangoutId:Ljava/lang/String;

.field protected mInCircles:Z

.field protected mName:Ljava/lang/String;

.field protected mPersonId:Ljava/lang/String;

.field protected mPhotoId:J

.field protected mPublicId:Ljava/lang/String;

.field protected mRequestType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->sKnownUnsupportedUri:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 583
    return-void
.end method

.method private parseEmailNotification(Landroid/net/Uri;)V
    .registers 6
    .parameter "uri"

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 303
    .local v1, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_c

    .line 319
    :cond_b
    :goto_b
    return-void

    .line 307
    :cond_c
    const-string v2, "emlink"

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 308
    const-string v2, "path"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 313
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://plus.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseUri(Landroid/net/Uri;)V

    goto :goto_b
.end method

.method private parseHangoutUrl(Ljava/util/List;)V
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v10, 0x14

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 323
    .local v4, size:I
    if-ne v4, v8, :cond_29

    .line 324
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 325
    .local v0, segment0:Ljava/lang/String;
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 326
    .local v1, segment1:Ljava/lang/String;
    const-string v5, "hangouts"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 327
    const-string v5, "hangout.com"

    iput-object v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    .line 328
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    .line 329
    iput v10, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 352
    .end local v0           #segment0:Ljava/lang/String;
    .end local v1           #segment1:Ljava/lang/String;
    :cond_28
    :goto_28
    return-void

    .line 331
    :cond_29
    if-ne v4, v9, :cond_56

    .line 332
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    .restart local v0       #segment0:Ljava/lang/String;
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    .restart local v1       #segment1:Ljava/lang/String;
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 335
    .local v2, segment2:Ljava/lang/String;
    const-string v5, "talkgadget"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const-string v5, "hangout"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 336
    const-string v5, "hangout.com"

    iput-object v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    .line 337
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    .line 338
    iput v10, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_28

    .line 340
    .end local v0           #segment0:Ljava/lang/String;
    .end local v1           #segment1:Ljava/lang/String;
    .end local v2           #segment2:Ljava/lang/String;
    :cond_56
    const/4 v5, 0x4

    if-ne v4, v5, :cond_28

    .line 341
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    .restart local v0       #segment0:Ljava/lang/String;
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 343
    .restart local v1       #segment1:Ljava/lang/String;
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 344
    .restart local v2       #segment2:Ljava/lang/String;
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 345
    .local v3, segment3:Ljava/lang/String;
    const-string v5, "hangouts"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const-string v5, "extras"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 346
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    .line 348
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    .line 349
    const/16 v5, 0x15

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_28
.end method

.method private parseLong(Ljava/lang/String;)J
    .registers 5
    .parameter "string"

    .prologue
    .line 577
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v1

    .line 579
    :goto_4
    return-wide v1

    .line 578
    :catch_5
    move-exception v0

    .line 579
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    goto :goto_4
.end method

.method private parsePhotoUri(Ljava/util/List;)V
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 235
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 236
    .local v4, size:I
    if-ne v4, v6, :cond_f

    .line 237
    iput v10, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 299
    :cond_e
    :goto_e
    return-void

    .line 238
    :cond_f
    if-ne v4, v9, :cond_24

    .line 239
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    .local v0, segment1:Ljava/lang/String;
    const-string v5, "fromphone"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 241
    const/16 v5, 0xb

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_e

    .line 243
    .end local v0           #segment1:Ljava/lang/String;
    :cond_24
    if-ne v4, v10, :cond_5e

    .line 244
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    .restart local v0       #segment1:Ljava/lang/String;
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    .local v1, segment2:Ljava/lang/String;
    const-string v5, "of"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 247
    const/16 v5, 0xc

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 248
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPublicId:Ljava/lang/String;

    goto :goto_e

    .line 249
    :cond_41
    const-string v5, "posts"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 250
    const/16 v5, 0xd

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 251
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPublicId:Ljava/lang/String;

    goto :goto_e

    .line 252
    :cond_50
    const-string v5, "albums"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 253
    const/4 v5, 0x7

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 254
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPublicId:Ljava/lang/String;

    goto :goto_e

    .line 256
    .end local v0           #segment1:Ljava/lang/String;
    .end local v1           #segment2:Ljava/lang/String;
    :cond_5e
    if-ne v4, v11, :cond_a9

    .line 257
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    .restart local v0       #segment1:Ljava/lang/String;
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    .restart local v1       #segment2:Ljava/lang/String;
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 260
    .local v2, segment3:Ljava/lang/String;
    const-string v5, "albums"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 261
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPublicId:Ljava/lang/String;

    .line 262
    const-string v5, "profile"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 263
    const/16 v5, 0x10

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_e

    .line 264
    :cond_89
    const-string v5, "posts"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 265
    const/16 v5, 0xd

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_e

    .line 267
    :cond_97
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    .line 268
    iget-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_e

    .line 269
    const/16 v5, 0xe

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_e

    .line 273
    .end local v0           #segment1:Ljava/lang/String;
    .end local v1           #segment2:Ljava/lang/String;
    .end local v2           #segment3:Ljava/lang/String;
    :cond_a9
    const/4 v5, 0x5

    if-ne v4, v5, :cond_e

    .line 274
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    .restart local v0       #segment1:Ljava/lang/String;
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 276
    .restart local v1       #segment2:Ljava/lang/String;
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 277
    .restart local v2       #segment3:Ljava/lang/String;
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 278
    .local v3, segment4:Ljava/lang/String;
    const-string v5, "albums"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 279
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPublicId:Ljava/lang/String;

    .line 280
    const-string v5, "profile"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 281
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    .line 282
    iget-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_e

    .line 283
    const/16 v5, 0x11

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_e

    .line 285
    :cond_e8
    const-string v5, "posts"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_102

    .line 286
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    .line 287
    iget-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_e

    .line 288
    const/16 v5, 0x12

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_e

    .line 291
    :cond_102
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    .line 292
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    .line 293
    iget-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_e

    iget-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_e

    .line 294
    const/16 v5, 0xf

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_e
.end method

.method private parseUri(Landroid/net/Uri;)V
    .registers 12
    .parameter "uri"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 159
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 160
    .local v3, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v9, :cond_29

    const-string v5, "_"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const-string v5, "notifications"

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 162
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseEmailNotification(Landroid/net/Uri;)V

    .line 232
    :cond_28
    :goto_28
    return-void

    .line 166
    :cond_29
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 169
    .local v4, size:I
    if-lt v4, v9, :cond_41

    const-string v5, "u"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 170
    invoke-interface {v3, v9, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 171
    add-int/lit8 v4, v4, -0x2

    .line 174
    :cond_41
    if-lt v4, v7, :cond_53

    const-string v5, "photos"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 175
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parsePhotoUri(Ljava/util/List;)V

    goto :goto_28

    .line 179
    :cond_53
    if-lt v4, v7, :cond_71

    const-string v5, "talkgadget"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "hangouts"

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 181
    :cond_6d
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseHangoutUrl(Ljava/util/List;)V

    goto :goto_28

    .line 185
    :cond_71
    if-nez v4, :cond_76

    .line 186
    iput v7, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_28

    .line 190
    :cond_76
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    .local v0, segment0:Ljava/lang/String;
    const-string v5, "settings"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 200
    if-ne v4, v7, :cond_b3

    .line 201
    const-string v5, "stream"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 202
    iput v9, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_28

    .line 203
    :cond_91
    const-string v5, "me"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 204
    const/4 v5, 0x4

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_28

    .line 205
    :cond_9d
    const-string v5, "circles"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 206
    const/16 v5, 0x8

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_28

    .line 208
    :cond_ab
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPublicId:Ljava/lang/String;

    .line 209
    const/16 v5, 0x13

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_28

    .line 211
    :cond_b3
    if-ne v4, v9, :cond_f0

    .line 212
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    .local v1, segment1:Ljava/lang/String;
    const-string v5, "posts"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cb

    const-string v5, "stream"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 214
    :cond_cb
    const/4 v5, 0x5

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 215
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPublicId:Ljava/lang/String;

    goto/16 :goto_28

    .line 216
    :cond_d2
    const-string v5, "about"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 217
    const/4 v5, 0x6

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 218
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPublicId:Ljava/lang/String;

    goto/16 :goto_28

    .line 219
    :cond_e1
    const-string v5, "photos"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 220
    const/4 v5, 0x7

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 221
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPublicId:Ljava/lang/String;

    goto/16 :goto_28

    .line 223
    .end local v1           #segment1:Ljava/lang/String;
    :cond_f0
    const/4 v5, 0x3

    if-ne v4, v5, :cond_28

    .line 224
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    .restart local v1       #segment1:Ljava/lang/String;
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 226
    .local v2, segment2:Ljava/lang/String;
    const-string v5, "posts"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 227
    const/16 v5, 0x9

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 228
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPublicId:Ljava/lang/String;

    .line 229
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mDesktopActivityId:Ljava/lang/String;

    goto/16 :goto_28
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 572
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected isReadyToRedirect()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 355
    iget v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    packed-switch v2, :pswitch_data_14

    .line 383
    :cond_7
    :goto_7
    :pswitch_7
    return v0

    .line 366
    :pswitch_8
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mActivityId:Ljava/lang/String;

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_7

    .line 380
    :pswitch_e
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_7

    .line 355
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_7
        :pswitch_8
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_7
    .end packed-switch
.end method

.method protected launchBrowser(Landroid/net/Uri;)V
    .registers 12
    .parameter "uri"

    .prologue
    .line 525
    sget-object v7, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->sKnownUnsupportedUri:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 526
    .local v6, unsupported:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v6, :cond_20

    .line 527
    new-instance v6, Ljava/util/HashSet;

    .end local v6           #unsupported:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 528
    .restart local v6       #unsupported:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    sget-object v7, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->sKnownUnsupportedUri:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_20
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 533
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 536
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 537
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/high16 v7, 0x1

    invoke-virtual {v3, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 538
    .local v5, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_62

    .line 540
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_62

    .line 541
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 542
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 543
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_66

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_66

    .line 544
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 550
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #i:I
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_62
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    .line 551
    return-void

    .line 540
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #i:I
    .restart local v4       #ri:Landroid/content/pm/ResolveInfo;
    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    if-eqz p1, :cond_80

    .line 104
    const-string v1, "request_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 105
    const-string v1, "person_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    .line 106
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mName:Ljava/lang/String;

    .line 107
    const-string v1, "in_circles"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mInCircles:Z

    .line 108
    const-string v1, "public_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPublicId:Ljava/lang/String;

    .line 109
    const-string v1, "activity_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mActivityId:Ljava/lang/String;

    .line 110
    const-string v1, "activity_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mDesktopActivityId:Ljava/lang/String;

    .line 111
    const-string v1, "album_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    .line 112
    const-string v1, "photo_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    .line 113
    const-string v1, "hangout_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    .line 114
    const-string v1, "hangout_domain"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    .line 125
    :goto_61
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 126
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v1, :cond_7f

    .line 127
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/Intents;->getAccountsActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->finish()V

    .line 132
    :cond_7f
    :goto_7f
    return-void

    .line 116
    :cond_80
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 117
    if-nez v1, :cond_8a

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->finish()V

    goto :goto_7f

    .line 122
    :cond_8a
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseUri(Landroid/net/Uri;)V

    goto :goto_61
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 140
    const-string v0, "request_type"

    iget v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string v0, "person_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "in_circles"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mInCircles:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    const-string v0, "public_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPublicId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "activity_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mActivityId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "activity_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mDesktopActivityId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "album_id"

    iget-wide v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 148
    const-string v0, "photo_id"

    iget-wide v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 149
    const-string v0, "hangout_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "hangout_domain"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method protected redirect()V
    .registers 16

    .prologue
    .line 387
    iget v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    packed-switch v0, :pswitch_data_1f6

    .line 496
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->finish()V

    .line 498
    :goto_8
    return-void

    .line 389
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/Intents;->getHomeActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 393
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/Intents;->getCirclesActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 397
    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/Intents;->getStreamActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 401
    :pswitch_27
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 406
    :pswitch_3a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mActivityId:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getPostCommentsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 412
    :pswitch_48
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mInCircles:Z

    if-eqz v0, :cond_5b

    const-string v0, "posts"

    :goto_53
    invoke-static {p0, v1, v2, v3, v0}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    :cond_5b
    const-string v0, "about"

    goto :goto_53

    .line 417
    :pswitch_5e
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "posts"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 422
    :pswitch_6d
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "about"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 427
    :pswitch_7c
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "photos"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 432
    :pswitch_8c
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getPhotosHomeIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 436
    :pswitch_9d
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getPhotosFromPhoneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Lcom/google/android/apps/plus/api/MediaRef;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 440
    :pswitch_a9
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    const v0, 0x7f070073

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p0, v0, v4}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/google/android/apps/plus/phone/Intents;->getAlbumViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 446
    :pswitch_d9
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "updates"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/google/android/apps/plus/phone/Intents;->getAlbumViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 453
    :pswitch_102
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    const-string v4, ""

    iget-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/google/android/apps/plus/phone/Intents;->getAlbumViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 458
    :pswitch_12a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "profile_photos"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/google/android/apps/plus/phone/Intents;->getAlbumViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 464
    :pswitch_14e
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v14}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 470
    :pswitch_17a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "profile_photos"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v14}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 477
    :pswitch_1a3
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "updates"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v14}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 484
    :pswitch_1cb
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$RoomType;->CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 490
    :pswitch_1e0
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$RoomType;->WITH_EXTRAS:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 387
    nop

    :pswitch_data_1f6
    .packed-switch 0x1
        :pswitch_9
        :pswitch_1d
        :pswitch_8c
        :pswitch_27
        :pswitch_5e
        :pswitch_6d
        :pswitch_7c
        :pswitch_13
        :pswitch_3a
        :pswitch_5
        :pswitch_9d
        :pswitch_a9
        :pswitch_d9
        :pswitch_102
        :pswitch_14e
        :pswitch_12a
        :pswitch_17a
        :pswitch_1a3
        :pswitch_48
        :pswitch_1cb
        :pswitch_1e0
    .end packed-switch
.end method

.method protected redirect(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 554
    const/high16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 555
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 556
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->finish()V

    .line 557
    return-void
.end method

.method protected redirectToBrowser()V
    .registers 8

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 507
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, scheme:Ljava/lang/String;
    const-string v5, "http"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    const-string v5, "content"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 509
    :cond_20
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "https"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 512
    :cond_2e
    sget-object v5, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->sKnownUnsupportedUri:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 513
    .local v3, unsupported:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v3, :cond_48

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 514
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->launchBrowser(Landroid/net/Uri;)V

    .line 522
    :goto_47
    return-void

    .line 516
    :cond_48
    new-instance v1, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;

    invoke-direct {v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;-><init>()V

    .line 517
    .local v1, dialog:Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 518
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "url"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 519
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;->setArguments(Landroid/os/Bundle;)V

    .line 520
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "unsupported"

    invoke-virtual {v1, v5, v6}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_47
.end method
