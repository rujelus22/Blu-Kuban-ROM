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

.field private mEventCreatorId:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mEventInvitationToken:Ljava/lang/String;

.field protected mGaiaId:Ljava/lang/String;

.field protected mHangoutDomain:Ljava/lang/String;

.field protected mHangoutId:Ljava/lang/String;

.field protected mHangoutServiceId:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mPhotoId:J

.field protected mProfileId:Ljava/lang/String;

.field protected mProfileIdValidated:Z

.field protected mRequestType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->sKnownUnsupportedUri:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 750
    return-void
.end method

.method private parseEmailNotification(Landroid/net/Uri;)V
    .registers 6
    .parameter "uri"

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 366
    .local v1, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_c

    .line 382
    :cond_b
    :goto_b
    return-void

    .line 370
    :cond_c
    const-string v2, "emlink"

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 371
    const-string v2, "path"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 376
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
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
    .registers 10
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
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 388
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 389
    .local v3, size:I
    if-ge v3, v7, :cond_a

    .line 437
    :goto_9
    return-void

    .line 393
    :cond_a
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 394
    .end local p1           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v2, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    .local v0, segment0:Ljava/lang/String;
    const-string v4, "hangouts"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    move-object p1, v2

    .line 396
    .end local v2           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1       #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_9

    .line 399
    .end local p1           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1f
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 403
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #segment0:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 404
    .restart local v0       #segment0:Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 405
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 408
    :cond_33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 409
    if-ne v3, v6, :cond_4b

    .line 411
    sget-object v4, Lcom/google/android/apps/plus/service/Hangout;->CONSUMER_HANGOUT_DOMAIN:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    .line 412
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    .line 413
    const/16 v4, 0x14

    iput v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    :cond_49
    :goto_49
    move-object p1, v2

    .line 437
    .end local v2           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1       #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_9

    .line 414
    .end local p1           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4b
    if-ne v3, v7, :cond_49

    .line 415
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #segment0:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 416
    .restart local v0       #segment0:Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    .local v1, segment1:Ljava/lang/String;
    const-string v4, "google.com"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    sget-boolean v4, Lcom/google/android/apps/plus/util/EsLog;->ENABLE_DOGFOOD_FEATURES:Z

    if-eqz v4, :cond_74

    .line 420
    const-string v4, "google.com"

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    .line 421
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    .line 422
    const/16 v4, 0x16

    iput v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_49

    .line 423
    :cond_74
    const-string v4, "lite"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 425
    sget-object v4, Lcom/google/android/apps/plus/service/Hangout;->CONSUMER_HANGOUT_DOMAIN:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    .line 426
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    .line 427
    const/16 v4, 0x17

    iput v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_49

    .line 431
    :cond_87
    sget-object v4, Lcom/google/android/apps/plus/service/Hangout;->CONSUMER_HANGOUT_DOMAIN:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    .line 432
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutServiceId:Ljava/lang/String;

    .line 433
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    .line 434
    const/16 v4, 0x15

    iput v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_49
.end method

.method private parseLong(Ljava/lang/String;)J
    .registers 5
    .parameter "string"

    .prologue
    .line 741
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v1

    .line 743
    :goto_4
    return-wide v1

    .line 742
    :catch_5
    move-exception v0

    .line 743
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

    .line 298
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 299
    .local v4, size:I
    if-ne v4, v6, :cond_f

    .line 300
    iput v10, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 362
    :cond_e
    :goto_e
    return-void

    .line 301
    :cond_f
    if-ne v4, v9, :cond_24

    .line 302
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 303
    .local v0, segment1:Ljava/lang/String;
    const-string v5, "fromphone"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 304
    const/16 v5, 0xb

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_e

    .line 306
    .end local v0           #segment1:Ljava/lang/String;
    :cond_24
    if-ne v4, v10, :cond_5e

    .line 307
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 308
    .restart local v0       #segment1:Ljava/lang/String;
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 309
    .local v1, segment2:Ljava/lang/String;
    const-string v5, "of"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 310
    const/16 v5, 0xc

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 311
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileId:Ljava/lang/String;

    goto :goto_e

    .line 312
    :cond_41
    const-string v5, "posts"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 313
    const/16 v5, 0xd

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 314
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileId:Ljava/lang/String;

    goto :goto_e

    .line 315
    :cond_50
    const-string v5, "albums"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 316
    const/4 v5, 0x7

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 317
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileId:Ljava/lang/String;

    goto :goto_e

    .line 319
    .end local v0           #segment1:Ljava/lang/String;
    .end local v1           #segment2:Ljava/lang/String;
    :cond_5e
    if-ne v4, v11, :cond_a9

    .line 320
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    .restart local v0       #segment1:Ljava/lang/String;
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 322
    .restart local v1       #segment2:Ljava/lang/String;
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 323
    .local v2, segment3:Ljava/lang/String;
    const-string v5, "albums"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 324
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileId:Ljava/lang/String;

    .line 325
    const-string v5, "profile"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 326
    const/16 v5, 0x10

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_e

    .line 327
    :cond_89
    const-string v5, "posts"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 328
    const/16 v5, 0xd

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_e

    .line 330
    :cond_97
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    .line 331
    iget-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_e

    .line 332
    const/16 v5, 0xe

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_e

    .line 336
    .end local v0           #segment1:Ljava/lang/String;
    .end local v1           #segment2:Ljava/lang/String;
    .end local v2           #segment3:Ljava/lang/String;
    :cond_a9
    const/4 v5, 0x5

    if-ne v4, v5, :cond_e

    .line 337
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    .restart local v0       #segment1:Ljava/lang/String;
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 339
    .restart local v1       #segment2:Ljava/lang/String;
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 340
    .restart local v2       #segment3:Ljava/lang/String;
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 341
    .local v3, segment4:Ljava/lang/String;
    const-string v5, "albums"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 342
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileId:Ljava/lang/String;

    .line 343
    const-string v5, "profile"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 344
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    .line 345
    iget-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_e

    .line 346
    const/16 v5, 0x11

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_e

    .line 348
    :cond_e8
    const-string v5, "posts"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_102

    .line 349
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    .line 350
    iget-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_e

    .line 351
    const/16 v5, 0x12

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_e

    .line 354
    :cond_102
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    .line 355
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    .line 356
    iget-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_e

    iget-wide v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_e

    .line 357
    const/16 v5, 0xf

    iput v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_e
.end method

.method private parseUri(Landroid/net/Uri;)V
    .registers 15
    .parameter "uri"

    .prologue
    const/16 v12, 0x1b

    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 194
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 195
    .local v4, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v9, :cond_2c

    const-string v6, "_"

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const-string v6, "notifications"

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 197
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseEmailNotification(Landroid/net/Uri;)V

    .line 295
    :cond_2b
    :goto_2b
    return-void

    .line 201
    :cond_2c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 204
    .local v5, size:I
    if-lt v5, v9, :cond_44

    const-string v6, "u"

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 205
    invoke-interface {v4, v9, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 206
    add-int/lit8 v5, v5, -0x2

    .line 209
    :cond_44
    if-lt v5, v8, :cond_56

    const-string v6, "photos"

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 210
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parsePhotoUri(Ljava/util/List;)V

    goto :goto_2b

    .line 214
    :cond_56
    if-lt v5, v8, :cond_68

    const-string v6, "hangouts"

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 216
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseHangoutUrl(Ljava/util/List;)V

    goto :goto_2b

    .line 220
    :cond_68
    if-nez v5, :cond_6d

    .line 221
    iput v8, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_2b

    .line 225
    :cond_6d
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    .local v1, segment0:Ljava/lang/String;
    const-string v6, "settings"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 235
    if-ne v5, v8, :cond_d9

    .line 236
    const-string v6, "stream"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 237
    iput v9, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_2b

    .line 238
    :cond_88
    const-string v6, "me"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 239
    const/4 v6, 0x4

    iput v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_2b

    .line 240
    :cond_94
    const-string v6, "circles"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 241
    const/16 v6, 0x8

    iput v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto :goto_2b

    .line 242
    :cond_a1
    const-string v6, "hot"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b1

    const-string v6, "explore"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 243
    :cond_b1
    const/16 v6, 0x19

    iput v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_2b

    .line 244
    :cond_b7
    const-string v6, "events"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 245
    const/16 v6, 0x1c

    iput v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_2b

    .line 246
    :cond_c5
    const-string v6, "+"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 247
    iput v8, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_2b

    .line 249
    :cond_d1
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileId:Ljava/lang/String;

    .line 250
    const/16 v6, 0x13

    iput v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_2b

    .line 252
    :cond_d9
    if-ne v5, v9, :cond_141

    .line 253
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 254
    .local v2, segment1:Ljava/lang/String;
    const-string v6, "posts"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f1

    const-string v6, "stream"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f7

    .line 255
    :cond_f1
    iput v11, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 256
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileId:Ljava/lang/String;

    goto/16 :goto_2b

    .line 257
    :cond_f7
    const-string v6, "about"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_106

    .line 258
    const/4 v6, 0x6

    iput v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 259
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileId:Ljava/lang/String;

    goto/16 :goto_2b

    .line 260
    :cond_106
    const-string v6, "photos"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_115

    .line 261
    const/4 v6, 0x7

    iput v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 262
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileId:Ljava/lang/String;

    goto/16 :goto_2b

    .line 263
    :cond_115
    const-string v6, "circles"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12b

    const-string v6, "find"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12b

    .line 264
    const/16 v6, 0x1a

    iput v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    goto/16 :goto_2b

    .line 265
    :cond_12b
    const-string v6, "events"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 266
    iput v12, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 267
    const-string v6, "gpinv"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventInvitationToken:Ljava/lang/String;

    .line 268
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventId:Ljava/lang/String;

    goto/16 :goto_2b

    .line 270
    .end local v2           #segment1:Ljava/lang/String;
    :cond_141
    const/4 v6, 0x3

    if-ne v5, v6, :cond_2b

    .line 271
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 272
    .restart local v2       #segment1:Ljava/lang/String;
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 274
    .local v3, segment2:Ljava/lang/String;
    const-string v6, "posts"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_162

    .line 275
    const/16 v6, 0x9

    iput v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 276
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileId:Ljava/lang/String;

    .line 277
    iput-object v3, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mDesktopActivityId:Ljava/lang/String;

    goto/16 :goto_2b

    .line 278
    :cond_162
    const-string v6, "digest"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_170

    .line 280
    iput v11, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 281
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileId:Ljava/lang/String;

    goto/16 :goto_2b

    .line 282
    :cond_170
    const-string v6, "notifications"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_194

    const-string v6, "all"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_194

    .line 283
    const-string v6, "mute"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, mute:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 285
    const/16 v6, 0x18

    iput v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 286
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mActivityId:Ljava/lang/String;

    goto/16 :goto_2b

    .line 288
    .end local v0           #mute:Ljava/lang/String;
    :cond_194
    const-string v6, "events"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 289
    iput v12, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 290
    const-string v6, "gpinv"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventInvitationToken:Ljava/lang/String;

    .line 291
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventId:Ljava/lang/String;

    .line 292
    iput-object v3, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventCreatorId:Ljava/lang/String;

    goto/16 :goto_2b
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 736
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected isReadyToRedirect()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 440
    iget v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    packed-switch v2, :pswitch_data_1e

    .line 478
    :cond_7
    :goto_7
    :pswitch_7
    return v0

    .line 455
    :pswitch_8
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mActivityId:Ljava/lang/String;

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_7

    .line 469
    :pswitch_e
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mGaiaId:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileIdValidated:Z

    if-nez v2, :cond_7

    :cond_16
    move v0, v1

    goto :goto_7

    .line 475
    :pswitch_18
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventId:Ljava/lang/String;

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_7

    .line 440
    :pswitch_data_1e
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
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_18
        :pswitch_7
    .end packed-switch
.end method

.method protected launchBrowser(Landroid/net/Uri;)V
    .registers 12
    .parameter "uri"

    .prologue
    .line 688
    sget-object v7, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->sKnownUnsupportedUri:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 689
    .local v6, unsupported:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v6, :cond_20

    .line 690
    new-instance v6, Ljava/util/HashSet;

    .end local v6           #unsupported:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 691
    .restart local v6       #unsupported:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    sget-object v7, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->sKnownUnsupportedUri:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :cond_20
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 697
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 698
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 700
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 701
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/high16 v7, 0x1

    invoke-virtual {v3, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 702
    .local v5, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_67

    .line 704
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_67

    .line 705
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 706
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 707
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6b

    .line 708
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 714
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #i:I
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_67
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    .line 715
    return-void

    .line 704
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #i:I
    .restart local v4       #ri:Landroid/content/pm/ResolveInfo;
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 126
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_98

    .line 127
    const-string v2, "request_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    .line 128
    const-string v2, "profile_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileId:Ljava/lang/String;

    .line 129
    const-string v2, "profile_id_validated"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileIdValidated:Z

    .line 130
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mName:Ljava/lang/String;

    .line 131
    const-string v2, "activity_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mActivityId:Ljava/lang/String;

    .line 132
    const-string v2, "activity_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mDesktopActivityId:Ljava/lang/String;

    .line 133
    const-string v2, "album_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    .line 134
    const-string v2, "photo_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    .line 135
    const-string v2, "hangout_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    .line 136
    const-string v2, "hangout_domain"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    .line 137
    const-string v2, "service-id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutServiceId:Ljava/lang/String;

    .line 138
    const-string v2, "event_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventId:Ljava/lang/String;

    .line 139
    const-string v2, "event_creator_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventCreatorId:Ljava/lang/String;

    .line 140
    const-string v2, "event_invitation_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventInvitationToken:Ljava/lang/String;

    .line 157
    :goto_79
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 158
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v2, :cond_97

    .line 159
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 160
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/Intents;->getAccountsActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->finish()V

    .line 164
    :cond_97
    :goto_97
    return-void

    .line 143
    :cond_98
    const-string v2, "customAppUri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 144
    const-string v2, "customAppUri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 149
    .local v1, uri:Landroid/net/Uri;
    :goto_aa
    if-nez v1, :cond_b5

    .line 150
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->finish()V

    goto :goto_97

    .line 146
    .end local v1           #uri:Landroid/net/Uri;
    :cond_b0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_aa

    .line 154
    :cond_b5
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->parseUri(Landroid/net/Uri;)V

    goto :goto_79
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 172
    const-string v0, "request_type"

    iget v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string v0, "profile_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "profile_id_validated"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mProfileIdValidated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "activity_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mActivityId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "activity_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mDesktopActivityId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "album_id"

    iget-wide v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 179
    const-string v0, "photo_id"

    iget-wide v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 180
    const-string v0, "hangout_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "hangout_domain"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "service-id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "event_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "event_creator_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventCreatorId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "event_invitation_token"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventInvitationToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method protected redirect()V
    .registers 13

    .prologue
    .line 482
    iget v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mRequestType:I

    packed-switch v1, :pswitch_data_2a6

    .line 659
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->finish()V

    .line 661
    :goto_8
    return-void

    .line 484
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getStreamActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 488
    :pswitch_13
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getCirclesActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 492
    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getSuggestedPeopleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 496
    :pswitch_27
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getStreamActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 500
    :pswitch_31
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getWhatsHotCircleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 504
    :pswitch_3b
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getHostedProfileIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 510
    :pswitch_4d
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getHostedProfileIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 516
    :pswitch_5f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mActivityId:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getPostCommentsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto :goto_8

    .line 523
    :pswitch_6d
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "g:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getHostedProfileIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 528
    :pswitch_8f
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "g:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getHostedProfileIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 533
    :pswitch_b1
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotosActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    const v2, 0x7f080092

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    const-string v2, "camera_sync_created"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setStreamId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 542
    :pswitch_df
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotosActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setPhotoOfUserId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    const v2, 0x7f080095

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 550
    :pswitch_10b
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotosActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    const v2, 0x7f0800a7

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    const-string v2, "updates"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setStreamId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 559
    :pswitch_135
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotosActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 567
    :pswitch_158
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotosActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    const-string v2, "profile_photos"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->setStreamId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/Intents$PhotosIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 576
    :pswitch_17d
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mGaiaId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 579
    .local v0, photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotoViewActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAlbumId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAlbumId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoRef(Lcom/google/android/apps/plus/api/MediaRef;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 588
    .end local v0           #photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    :pswitch_1b1
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mGaiaId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 591
    .restart local v0       #photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotoViewActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAlbumName(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    const-string v2, "profile_photos"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setStreamId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoRef(Lcom/google/android/apps/plus/api/MediaRef;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 601
    .end local v0           #photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    :pswitch_1e1
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mGaiaId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mPhotoId:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 604
    .restart local v0       #photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotoViewActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mGaiaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    const-string v2, "updates"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setStreamId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoRef(Lcom/google/android/apps/plus/api/MediaRef;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 614
    .end local v0           #photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    :pswitch_211
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/android/apps/plus/service/Hangout$RoomType;->CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Url:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;ZZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 622
    :pswitch_22a
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/android/apps/plus/service/Hangout$RoomType;->CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Url:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;ZZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 630
    :pswitch_243
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/android/apps/plus/service/Hangout$RoomType;->EXTERNAL:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutServiceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Url:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;ZZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 638
    :pswitch_25d
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/android/apps/plus/service/Hangout$RoomType;->WITH_EXTRAS:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutDomain:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mHangoutId:Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Url:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;ZZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 646
    :pswitch_276
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mActivityId:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getMuteActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 650
    :pswitch_285
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getEventsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 654
    :pswitch_292
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventCreatorId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mEventInvitationToken:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getHostedEventIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->redirect(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 482
    nop

    :pswitch_data_2a6
    .packed-switch 0x1
        :pswitch_9
        :pswitch_27
        :pswitch_4d
        :pswitch_3b
        :pswitch_6d
        :pswitch_6d
        :pswitch_8f
        :pswitch_13
        :pswitch_5f
        :pswitch_5
        :pswitch_b1
        :pswitch_df
        :pswitch_10b
        :pswitch_135
        :pswitch_17d
        :pswitch_158
        :pswitch_1b1
        :pswitch_1e1
        :pswitch_6d
        :pswitch_211
        :pswitch_243
        :pswitch_25d
        :pswitch_22a
        :pswitch_276
        :pswitch_31
        :pswitch_1d
        :pswitch_292
        :pswitch_285
    .end packed-switch
.end method

.method protected redirect(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 718
    const/high16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 719
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 720
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->finish()V

    .line 721
    return-void
.end method

.method protected redirectToBrowser()V
    .registers 8

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 670
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 671
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

    .line 672
    :cond_20
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "https"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 675
    :cond_2e
    sget-object v5, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->sKnownUnsupportedUri:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 676
    .local v3, unsupported:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v3, :cond_48

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 677
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->launchBrowser(Landroid/net/Uri;)V

    .line 685
    :goto_47
    return-void

    .line 679
    :cond_48
    new-instance v1, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;

    invoke-direct {v1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;-><init>()V

    .line 680
    .local v1, dialog:Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 681
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "url"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 682
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;->setArguments(Landroid/os/Bundle;)V

    .line 683
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "unsupported"

    invoke-virtual {v1, v5, v6}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity$UnrecognizedLinkDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_47
.end method
