.class public final Lcom/google/googlenav/appwidget/friends/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field private static final b:[[I

.field private static final c:I


# instance fields
.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x6

    .line 273
    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/appwidget/friends/b;->b:[[I

    .line 282
    sget-object v0, Lcom/google/googlenav/appwidget/friends/b;->b:[[I

    array-length v0, v0

    sput v0, Lcom/google/googlenav/appwidget/friends/b;->a:I

    .line 287
    sget v0, Lcom/google/googlenav/appwidget/friends/b;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/googlenav/appwidget/friends/b;->c:I

    return-void

    .line 273
    :array_2a
    .array-data 0x4
        0xc5t 0x1t 0x10t 0x7ft
        0xc6t 0x1t 0x10t 0x7ft
        0xc7t 0x1t 0x10t 0x7ft
        0xc8t 0x1t 0x10t 0x7ft
        0xcat 0x1t 0x10t 0x7ft
        0xc9t 0x1t 0x10t 0x7ft
    .end array-data

    :array_3a
    .array-data 0x4
        0xcbt 0x1t 0x10t 0x7ft
        0xcct 0x1t 0x10t 0x7ft
        0xcdt 0x1t 0x10t 0x7ft
        0xcet 0x1t 0x10t 0x7ft
        0xd0t 0x1t 0x10t 0x7ft
        0xcft 0x1t 0x10t 0x7ft
    .end array-data

    :array_4a
    .array-data 0x4
        0xd1t 0x1t 0x10t 0x7ft
        0xd2t 0x1t 0x10t 0x7ft
        0xd3t 0x1t 0x10t 0x7ft
        0xd4t 0x1t 0x10t 0x7ft
        0xd6t 0x1t 0x10t 0x7ft
        0xd5t 0x1t 0x10t 0x7ft
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    .line 307
    return-void
.end method

.method private a()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    .line 555
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    const-class v2, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_MANUAL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 558
    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 560
    return-object v0
.end method

.method private a(Lcom/google/googlenav/friend/aK;)Landroid/net/Uri;
    .registers 5
    .parameter

    .prologue
    .line 570
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 571
    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/friends/location"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 574
    if-eqz p1, :cond_1f

    .line 575
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 577
    :cond_1f
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/friend/aM;)Ljava/util/ArrayList;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 618
    sget-object v1, Lcom/google/googlenav/appwidget/friends/b;->b:[[I

    array-length v1, v1

    invoke-static {v1}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 619
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aM;->i()Lcom/google/googlenav/common/f;

    move-result-object v3

    .line 621
    invoke-virtual {v3}, Lcom/google/googlenav/common/f;->b()I

    move-result v4

    move v1, v0

    :goto_11
    if-ge v1, v4, :cond_34

    if-nez v0, :cond_34

    .line 622
    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v5

    .line 624
    invoke-static {v5}, Lcom/google/googlenav/appwidget/friends/b;->c(Lcom/google/googlenav/friend/aK;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 626
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget-object v6, Lcom/google/googlenav/appwidget/friends/b;->b:[[I

    array-length v6, v6

    if-ne v5, v6, :cond_31

    .line 628
    const/4 v0, 0x1

    .line 621
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 633
    :cond_34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/google/googlenav/appwidget/friends/b;->b:[[I

    array-length v1, v1

    :goto_3b
    if-ge v0, v1, :cond_44

    .line 634
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 636
    :cond_44
    return-object v2
.end method

.method private a(Landroid/widget/RemoteViews;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/friends/b;->b(Lcom/google/googlenav/friend/aK;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 343
    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_SIGN_IN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_MANUAL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    const v1, 0x7f1001d8

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 349
    const v0, 0x7f1001d9

    const v1, 0x7f0201c9

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 351
    const v0, 0x7f1001da

    const/16 v1, 0x239

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 355
    const v0, 0x7f1001dc

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 356
    const v0, 0x7f1001db

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 360
    const v0, 0x7f1001e0

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 361
    const v0, 0x7f1001df

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 364
    const v0, 0x7f1001de

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/b;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 365
    return-void
.end method

.method private a(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 432
    const/4 v0, 0x0

    move v6, v0

    :goto_3
    sget-object v0, Lcom/google/googlenav/appwidget/friends/b;->b:[[I

    array-length v0, v0

    if-ge v6, v0, :cond_5b

    .line 434
    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->c(Lcom/google/googlenav/appwidget/friends/c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/b;->b()I

    move-result v0

    if-ge v6, v0, :cond_5e

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->c(Lcom/google/googlenav/appwidget/friends/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_5e

    .line 435
    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->c(Lcom/google/googlenav/appwidget/friends/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aK;

    move-object v4, v0

    .line 439
    :goto_29
    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->d(Lcom/google/googlenav/appwidget/friends/c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/b;->b()I

    move-result v0

    if-ge v6, v0, :cond_5c

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->c(Lcom/google/googlenav/appwidget/friends/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_5c

    .line 440
    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->d(Lcom/google/googlenav/appwidget/friends/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v5, v0

    .line 443
    :goto_4a
    sget-object v0, Lcom/google/googlenav/appwidget/friends/b;->b:[[I

    aget-object v2, v0, v6

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->b(Lcom/google/googlenav/appwidget/friends/c;)Lcom/google/googlenav/friend/aK;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/appwidget/friends/b;->a(Landroid/widget/RemoteViews;[ILcom/google/googlenav/friend/aK;Lcom/google/googlenav/friend/aK;Landroid/graphics/Bitmap;)V

    .line 432
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    .line 445
    :cond_5b
    return-void

    :cond_5c
    move-object v5, v7

    goto :goto_4a

    :cond_5e
    move-object v4, v7

    goto :goto_29
.end method

.method private a(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const v4, 0x7f1001dd

    const v5, 0x7f1001dc

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 376
    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->b(Lcom/google/googlenav/appwidget/friends/c;)Lcom/google/googlenav/friend/aK;

    move-result-object v0

    if-eqz v0, :cond_b1

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->b(Lcom/google/googlenav/appwidget/friends/c;)Lcom/google/googlenav/friend/aK;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/b;->d(Lcom/google/googlenav/friend/aK;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 379
    const v0, 0x7f1001d9

    const v3, 0x7f0201c4

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 380
    const v0, 0x7f1001da

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->b(Lcom/google/googlenav/appwidget/friends/c;)Lcom/google/googlenav/friend/aK;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Lcom/google/googlenav/friend/aK;->a(ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 382
    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->b(Lcom/google/googlenav/appwidget/friends/c;)Lcom/google/googlenav/friend/aK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 383
    const v0, 0x7f0201c6

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 396
    :goto_41
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->b(Lcom/google/googlenav/appwidget/friends/c;)Lcom/google/googlenav/friend/aK;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/googlenav/appwidget/friends/b;->a(Lcom/google/googlenav/friend/aK;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 398
    iget-object v3, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    invoke-static {v3, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 399
    const v3, 0x7f1001d8

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 402
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->j()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    sget-object v3, Lcom/google/googlenav/android/M;->a:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 405
    const-string v3, "source"

    const-string v4, "cw"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    iget-object v3, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    invoke-static {v3, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 408
    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 409
    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 410
    const v0, 0x7f1001db

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 417
    :goto_8e
    const v3, 0x7f1001e0

    if-eqz p3, :cond_d8

    move v0, v1

    :goto_94
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 418
    const v0, 0x7f1001df

    if-eqz p3, :cond_da

    :goto_9c
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 421
    const v0, 0x7f1001de

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/b;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 422
    return-void

    .line 386
    :cond_aa
    const v0, 0x7f0201c5

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_41

    .line 389
    :cond_b1
    const v0, 0x7f1001d9

    const v3, 0x7f0201c9

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 390
    const v0, 0x7f1001da

    const/16 v3, 0x23b

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 392
    const v0, 0x7f0201c5

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_41

    .line 412
    :cond_ce
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 413
    const v0, 0x7f1001db

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_8e

    :cond_d8
    move v0, v2

    .line 417
    goto :goto_94

    :cond_da
    move v2, v1

    .line 418
    goto :goto_9c
.end method

.method private a(Landroid/widget/RemoteViews;[ILcom/google/googlenav/friend/aK;Lcom/google/googlenav/friend/aK;Landroid/graphics/Bitmap;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 457
    const/4 v0, 0x0

    aget v2, p2, v0

    .line 458
    const/4 v0, 0x1

    aget v0, p2, v0

    .line 459
    const/4 v1, 0x2

    aget v3, p2, v1

    .line 460
    const/4 v1, 0x3

    aget v4, p2, v1

    .line 461
    const/4 v1, 0x4

    aget v5, p2, v1

    .line 462
    const/4 v1, 0x5

    aget v6, p2, v1

    .line 465
    if-nez p4, :cond_1a

    .line 466
    const/16 v0, 0x8

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 516
    :cond_19
    :goto_19
    return-void

    .line 469
    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 473
    if-nez p5, :cond_86

    .line 474
    const v1, 0x7f02001f

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 480
    :goto_26
    const/4 v0, 0x0

    .line 481
    if-nez p3, :cond_8a

    const/4 v1, 0x0

    .line 482
    :goto_2a
    if-eqz v1, :cond_3f

    invoke-virtual {p4}, Lcom/google/googlenav/friend/aK;->E()Lat/B;

    move-result-object v7

    if-eqz v7, :cond_3f

    .line 483
    invoke-virtual {p4}, Lcom/google/googlenav/friend/aK;->E()Lat/B;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Lat/B;Lat/B;)I

    move-result v0

    .line 485
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 487
    :cond_3f
    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 490
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 491
    invoke-virtual {p4}, Lcom/google/googlenav/friend/aK;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 497
    :goto_4f
    const/4 v0, 0x1

    .line 498
    const/4 v1, 0x1

    .line 500
    invoke-virtual {p4, v0, v1}, Lcom/google/googlenav/friend/aK;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 504
    invoke-virtual {p4}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 511
    :goto_62
    invoke-virtual {p4}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 512
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-direct {p0, p4}, Lcom/google/googlenav/appwidget/friends/b;->a(Lcom/google/googlenav/friend/aK;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 514
    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_19

    .line 476
    :cond_86
    invoke-virtual {p1, v0, p5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_26

    .line 481
    :cond_8a
    invoke-virtual {p3}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v1

    goto :goto_2a

    .line 493
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/google/googlenav/friend/aK;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_4f

    .line 507
    :cond_aa
    const/16 v0, 0x8

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_62
.end method

.method private b()I
    .registers 2

    .prologue
    .line 602
    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 603
    sget v0, Lcom/google/googlenav/appwidget/friends/b;->c:I

    .line 605
    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/google/googlenav/appwidget/friends/b;->a:I

    goto :goto_8
.end method

.method private b(Lcom/google/googlenav/friend/aK;)Landroid/net/Uri;
    .registers 5
    .parameter

    .prologue
    .line 587
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 588
    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/friends/profile"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 591
    if-eqz p1, :cond_1f

    .line 592
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 594
    :cond_1f
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 526
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/appwidget/friends/b;->c(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V

    .line 527
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/appwidget/friends/b;->d(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V

    .line 528
    return-void
.end method

.method private c(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 531
    const/4 v0, 0x0

    .line 532
    if-eqz p3, :cond_27

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->e(Lcom/google/googlenav/appwidget/friends/c;)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_27

    .line 533
    const/16 v0, 0x23a

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->e(Lcom/google/googlenav/appwidget/friends/c;)J

    move-result-wide v4

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    :cond_27
    const v1, 0x7f1001ba

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 538
    return-void
.end method

.method private static c(Lcom/google/googlenav/friend/aK;)Z
    .registers 2
    .parameter

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 649
    :cond_c
    const/4 v0, 0x0

    .line 651
    :goto_d
    return v0

    :cond_e
    invoke-static {p0}, Lcom/google/googlenav/appwidget/friends/b;->d(Lcom/google/googlenav/friend/aK;)Z

    move-result v0

    goto :goto_d
.end method

.method private d(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 542
    if-eqz p3, :cond_11

    invoke-virtual {p2}, Lcom/google/googlenav/appwidget/friends/c;->c()Lcom/google/googlenav/friend/aK;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 543
    invoke-virtual {p2}, Lcom/google/googlenav/appwidget/friends/c;->c()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v0

    .line 545
    :cond_11
    const v1, 0x7f1001d7

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 546
    return-void
.end method

.method private static d(Lcom/google/googlenav/friend/aK;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 664
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->c()Z

    move-result v2

    if-nez v2, :cond_9

    .line 678
    :cond_8
    :goto_8
    return v0

    .line 669
    :cond_9
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->G()Z

    move-result v2

    if-nez v2, :cond_8

    .line 674
    invoke-virtual {p0, v1, v1}, Lcom/google/googlenav/friend/aK;->a(ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 678
    goto :goto_8
.end method


# virtual methods
.method a(Lcom/google/googlenav/appwidget/friends/c;Z)Landroid/widget/RemoteViews;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-static {p1}, Lcom/google/googlenav/appwidget/friends/c;->a(Lcom/google/googlenav/appwidget/friends/c;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 323
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040080

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 324
    invoke-direct {p0, v0, p1, p2}, Lcom/google/googlenav/appwidget/friends/b;->a(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V

    .line 325
    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/appwidget/friends/b;->a(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;)V

    .line 326
    invoke-direct {p0, v0, p1, p2}, Lcom/google/googlenav/appwidget/friends/b;->b(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V

    .line 332
    :goto_1d
    return-object v0

    .line 329
    :cond_1e
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040083

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 330
    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/b;->a(Landroid/widget/RemoteViews;)V

    goto :goto_1d
.end method
