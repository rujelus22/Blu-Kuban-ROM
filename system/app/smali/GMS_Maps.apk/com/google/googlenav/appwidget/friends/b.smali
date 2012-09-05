.class public final Lcom/google/googlenav/appwidget/friends/b;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field private static final b:[[I

.field private static final c:I


# instance fields
.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x6

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

    sget-object v0, Lcom/google/googlenav/appwidget/friends/b;->b:[[I

    array-length v0, v0

    sput v0, Lcom/google/googlenav/appwidget/friends/b;->a:I

    sget v0, Lcom/google/googlenav/appwidget/friends/b;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/googlenav/appwidget/friends/b;->c:I

    return-void

    :array_2a
    .array-data 0x4
        0x85t 0x1t 0xft 0x7ft
        0x86t 0x1t 0xft 0x7ft
        0x87t 0x1t 0xft 0x7ft
        0x88t 0x1t 0xft 0x7ft
        0x8at 0x1t 0xft 0x7ft
        0x89t 0x1t 0xft 0x7ft
    .end array-data

    :array_3a
    .array-data 0x4
        0x8bt 0x1t 0xft 0x7ft
        0x8ct 0x1t 0xft 0x7ft
        0x8dt 0x1t 0xft 0x7ft
        0x8et 0x1t 0xft 0x7ft
        0x90t 0x1t 0xft 0x7ft
        0x8ft 0x1t 0xft 0x7ft
    .end array-data

    :array_4a
    .array-data 0x4
        0x91t 0x1t 0xft 0x7ft
        0x92t 0x1t 0xft 0x7ft
        0x93t 0x1t 0xft 0x7ft
        0x94t 0x1t 0xft 0x7ft
        0x96t 0x1t 0xft 0x7ft
        0x95t 0x1t 0xft 0x7ft
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    return-void
.end method

.method private a()Landroid/app/PendingIntent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    const-class v2, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_MANUAL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lax/aP;)Landroid/net/Uri;
    .registers 5

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/friends/location"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1f
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lax/aS;)Ljava/util/ArrayList;
    .registers 8

    const/4 v0, 0x0

    sget-object v1, Lcom/google/googlenav/appwidget/friends/b;->b:[[I

    array-length v1, v1

    invoke-static {v1}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lax/aS;->i()Laf/h;

    move-result-object v3

    invoke-virtual {v3}, Laf/h;->b()I

    move-result v4

    move v1, v0

    :goto_11
    if-ge v1, v4, :cond_34

    if-nez v0, :cond_34

    invoke-virtual {v3, v1}, Laf/h;->a(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lax/aS;->a(I)Lax/aP;

    move-result-object v5

    invoke-static {v5}, Lcom/google/googlenav/appwidget/friends/b;->c(Lax/aP;)Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget-object v6, Lcom/google/googlenav/appwidget/friends/b;->b:[[I

    array-length v6, v6

    if-ne v5, v6, :cond_31

    const/4 v0, 0x1

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/google/googlenav/appwidget/friends/b;->b:[[I

    array-length v1, v1

    :goto_3b
    if-ge v0, v1, :cond_44

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_44
    return-object v2
.end method

.method private a(Landroid/widget/RemoteViews;)V
    .registers 7

    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/friends/b;->b(Lax/aP;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_SIGN_IN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_MANUAL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x7f0f0199

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0f019a

    const v1, 0x7f02019c

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0f019b

    const/16 v1, 0x208

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0f019d

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f019c

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f01a1

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f01a0

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f019f

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/b;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private a(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;)V
    .registers 11

    const/4 v7, 0x0

    const/4 v0, 0x0

    move v6, v0

    :goto_3
    sget-object v0, Lcom/google/googlenav/appwidget/friends/b;->b:[[I

    array-length v0, v0

    if-ge v6, v0, :cond_5b

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

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->c(Lcom/google/googlenav/appwidget/friends/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aP;

    move-object v4, v0

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

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->d(Lcom/google/googlenav/appwidget/friends/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v5, v0

    :goto_4a
    sget-object v0, Lcom/google/googlenav/appwidget/friends/b;->b:[[I

    aget-object v2, v0, v6

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->b(Lcom/google/googlenav/appwidget/friends/c;)Lax/aP;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/appwidget/friends/b;->a(Landroid/widget/RemoteViews;[ILax/aP;Lax/aP;Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

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

    const/4 v6, 0x1

    const v4, 0x7f0f019e

    const v5, 0x7f0f019d

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->b(Lcom/google/googlenav/appwidget/friends/c;)Lax/aP;

    move-result-object v0

    if-eqz v0, :cond_b1

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->b(Lcom/google/googlenav/appwidget/friends/c;)Lax/aP;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/b;->d(Lax/aP;)Z

    move-result v0

    if-eqz v0, :cond_b1

    const v0, 0x7f0f019a

    const v3, 0x7f020197

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0f019b

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->b(Lcom/google/googlenav/appwidget/friends/c;)Lax/aP;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Lax/aP;->a(ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->b(Lcom/google/googlenav/appwidget/friends/c;)Lax/aP;

    move-result-object v0

    invoke-virtual {v0}, Lax/aP;->F()Z

    move-result v0

    if-eqz v0, :cond_aa

    const v0, 0x7f020199

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_41
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->b(Lcom/google/googlenav/appwidget/friends/c;)Lax/aP;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/googlenav/appwidget/friends/b;->a(Lax/aP;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    invoke-static {v3, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v3, 0x7f0f0199

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->j()Z

    move-result v0

    if-eqz v0, :cond_ce

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/googlenav/android/Q;->a:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "source"

    const-string v4, "cw"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    invoke-static {v3, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f019c

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_8e
    const v3, 0x7f0f01a1

    if-eqz p3, :cond_d8

    move v0, v1

    :goto_94
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f01a0

    if-eqz p3, :cond_da

    :goto_9c
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f019f

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/b;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void

    :cond_aa
    const v0, 0x7f020198

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_41

    :cond_b1
    const v0, 0x7f0f019a

    const v3, 0x7f02019c

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0f019b

    const/16 v3, 0x20a

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f020198

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_41

    :cond_ce
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f019c

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_8e

    :cond_d8
    move v0, v2

    goto :goto_94

    :cond_da
    move v2, v1

    goto :goto_9c
.end method

.method private a(Landroid/widget/RemoteViews;[ILax/aP;Lax/aP;Landroid/graphics/Bitmap;)V
    .registers 14

    const/4 v0, 0x0

    aget v2, p2, v0

    const/4 v0, 0x1

    aget v0, p2, v0

    const/4 v1, 0x2

    aget v3, p2, v1

    const/4 v1, 0x3

    aget v4, p2, v1

    const/4 v1, 0x4

    aget v5, p2, v1

    const/4 v1, 0x5

    aget v6, p2, v1

    if-nez p4, :cond_1a

    const/16 v0, 0x8

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-nez p5, :cond_86

    const v1, 0x7f02001c

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_26
    const/4 v0, 0x0

    if-nez p3, :cond_8a

    const/4 v1, 0x0

    :goto_2a
    if-eqz v1, :cond_3f

    invoke-virtual {p4}, Lax/aP;->H()LaJ/B;

    move-result-object v7

    if-eqz v7, :cond_3f

    invoke-virtual {p4}, Lax/aP;->H()LaJ/B;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(LaJ/B;LaJ/B;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v0

    :cond_3f
    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-virtual {p4}, Lax/aP;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_4f
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Lax/aP;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p4}, Lax/aP;->F()Z

    move-result v0

    if-eqz v0, :cond_aa

    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_62
    invoke-virtual {p4}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/google/googlenav/appwidget/friends/b;->a(Lax/aP;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_19

    :cond_86
    invoke-virtual {p1, v0, p5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_26

    :cond_8a
    invoke-virtual {p3}, Lax/aP;->d()LaJ/B;

    move-result-object v1

    goto :goto_2a

    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lax/aP;->f()Ljava/lang/String;

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

    :cond_aa
    const/16 v0, 0x8

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_62
.end method

.method private b()I
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/google/googlenav/appwidget/friends/b;->c:I

    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/google/googlenav/appwidget/friends/b;->a:I

    goto :goto_8
.end method

.method private b(Lax/aP;)Landroid/net/Uri;
    .registers 5

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/friends/profile"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1f
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/appwidget/friends/b;->c(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/appwidget/friends/b;->d(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V

    return-void
.end method

.method private c(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V
    .registers 11

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_27

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->e(Lcom/google/googlenav/appwidget/friends/c;)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_27

    const/16 v0, 0x209

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/c;->e(Lcom/google/googlenav/appwidget/friends/c;)J

    move-result-wide v4

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_27
    const v1, 0x7f0f0198

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private static c(Lax/aP;)Z
    .registers 2

    invoke-virtual {p0}, Lax/aP;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lax/aP;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-static {p0}, Lcom/google/googlenav/appwidget/friends/b;->d(Lax/aP;)Z

    move-result v0

    goto :goto_d
.end method

.method private d(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p3, :cond_11

    invoke-virtual {p2}, Lcom/google/googlenav/appwidget/friends/c;->c()Lax/aP;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p2}, Lcom/google/googlenav/appwidget/friends/c;->c()Lax/aP;

    move-result-object v0

    invoke-virtual {v0}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v0

    :cond_11
    const v1, 0x7f0f0197

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private static d(Lax/aP;)Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lax/aP;->c()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Lax/aP;->J()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0, v1, v1}, Lax/aP;->a(ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_8
.end method


# virtual methods
.method a(Lcom/google/googlenav/appwidget/friends/c;Z)Landroid/widget/RemoteViews;
    .registers 6

    invoke-static {p1}, Lcom/google/googlenav/appwidget/friends/c;->a(Lcom/google/googlenav/appwidget/friends/c;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030069

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/googlenav/appwidget/friends/b;->a(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/appwidget/friends/b;->a(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/googlenav/appwidget/friends/b;->b(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/c;Z)V

    :goto_1d
    return-object v0

    :cond_1e
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/b;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03006c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/b;->a(Landroid/widget/RemoteViews;)V

    goto :goto_1d
.end method
