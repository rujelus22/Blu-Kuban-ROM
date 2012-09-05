.class Lcom/google/googlenav/appwidget/traffic/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/appwidget/AppWidgetManager;

.field private final d:Lcom/google/googlenav/appwidget/traffic/h;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/appwidget/traffic/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/d;->c:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/h;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/h;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/d;->d:Lcom/google/googlenav/appwidget/traffic/h;

    return-void
.end method

.method private static a(LaJ/B;LaJ/B;Ljava/lang/String;)Landroid/content/Intent;
    .registers 9

    const v4, 0x3f99999a

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v0

    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v1

    invoke-virtual {p1}, LaJ/B;->e()I

    move-result v2

    invoke-static {v1, v2}, LaJ/C;->a(II)I

    move-result v1

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v2

    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3}, LaJ/C;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    const-string v4, "http://maps.google.com/maps"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "ll"

    invoke-static {v0, v1}, LaJ/B;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "spn"

    invoke-static {v2, v3}, LaJ/B;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "layer"

    const-string v2, "t"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .registers 7

    const v2, 0x15180

    const/4 v5, 0x1

    const/4 v0, 0x0

    if-gez p0, :cond_8

    move p0, v0

    :cond_8
    div-int v1, p0, v2

    if-lez v1, :cond_1f

    const/16 v2, 0xc9

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    rem-int v1, p0, v2

    div-int/lit16 v2, v1, 0xe10

    rem-int/lit16 v1, v1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    if-lez v2, :cond_4d

    const-string v3, "%02d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xca

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_4d
    const/16 v2, 0xcb

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method


# virtual methods
.method a(Lcom/google/googlenav/appwidget/traffic/f;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .registers 9

    const v3, 0x7f0f03b4

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    const v2, 0x7f030178

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/f;->a()I

    move-result v1

    const v2, 0x7f0f03b3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2c
    if-eqz p4, :cond_34

    const v1, 0x7f0f03af

    invoke-virtual {v0, v1, p4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_34
    return-object v0

    :cond_35
    invoke-virtual {v0, v3, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2c
.end method

.method a(IJLaJ/B;LaJ/B;)V
    .registers 7

    invoke-virtual/range {p0 .. p5}, Lcom/google/googlenav/appwidget/traffic/d;->b(IJLaJ/B;LaJ/B;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/traffic/d;->a(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method a(ILandroid/app/PendingIntent;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/d;->d:Lcom/google/googlenav/appwidget/traffic/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/traffic/h;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/f;->e:Lcom/google/googlenav/appwidget/traffic/f;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/google/googlenav/appwidget/traffic/d;->a(Lcom/google/googlenav/appwidget/traffic/f;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/traffic/d;->a(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method a(ILandroid/widget/RemoteViews;)V
    .registers 4

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/d;->c:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_2
.end method

.method b(IJLaJ/B;LaJ/B;)Landroid/widget/RemoteViews;
    .registers 16

    const/4 v9, 0x0

    const-wide/high16 v0, 0x3ff0

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/d;->d:Lcom/google/googlenav/appwidget/traffic/h;

    invoke-virtual {v2, p1}, Lcom/google/googlenav/appwidget/traffic/h;->b(I)Lcom/google/googlenav/appwidget/traffic/c;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v3, v2, Lcom/google/googlenav/appwidget/traffic/c;->b:Ljava/lang/String;

    if-nez v3, :cond_11

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p4, p5}, LaJ/B;->b(LaJ/B;)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    iget-wide v5, v2, Lcom/google/googlenav/appwidget/traffic/c;->j:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_57

    :goto_22
    iget-wide v3, v2, Lcom/google/googlenav/appwidget/traffic/c;->f:J

    iget-wide v5, v2, Lcom/google/googlenav/appwidget/traffic/c;->i:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    mul-double/2addr v0, v3

    const-wide v3, 0x408f400000000000L

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Lcom/google/googlenav/appwidget/traffic/d;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/f;->a:Lcom/google/googlenav/appwidget/traffic/f;

    if-lez v1, :cond_44

    iget v1, v2, Lcom/google/googlenav/appwidget/traffic/c;->g:I

    const/16 v4, 0x28

    if-le v1, v4, :cond_5d

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/f;->c:Lcom/google/googlenav/appwidget/traffic/f;

    :cond_44
    :goto_44
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/d;->a:Landroid/content/Context;

    iget-object v4, v2, Lcom/google/googlenav/appwidget/traffic/c;->b:Ljava/lang/String;

    invoke-static {p4, p5, v4}, Lcom/google/googlenav/appwidget/traffic/d;->a(LaJ/B;LaJ/B;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v1, v9, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, v2, Lcom/google/googlenav/appwidget/traffic/c;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/googlenav/appwidget/traffic/d;->a(Lcom/google/googlenav/appwidget/traffic/f;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_10

    :cond_57
    iget-wide v5, v2, Lcom/google/googlenav/appwidget/traffic/c;->j:J

    long-to-double v5, v5

    div-double/2addr v0, v5

    mul-double/2addr v0, v3

    goto :goto_22

    :cond_5d
    iget v1, v2, Lcom/google/googlenav/appwidget/traffic/c;->g:I

    const/16 v4, 0x14

    if-le v1, v4, :cond_44

    sget-object v0, Lcom/google/googlenav/appwidget/traffic/f;->b:Lcom/google/googlenav/appwidget/traffic/f;

    goto :goto_44
.end method

.method b(ILandroid/app/PendingIntent;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/d;->d:Lcom/google/googlenav/appwidget/traffic/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/traffic/h;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/f;->d:Lcom/google/googlenav/appwidget/traffic/f;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/google/googlenav/appwidget/traffic/d;->a(Lcom/google/googlenav/appwidget/traffic/f;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/traffic/d;->a(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method c(ILandroid/app/PendingIntent;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/d;->d:Lcom/google/googlenav/appwidget/traffic/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/traffic/h;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/f;->f:Lcom/google/googlenav/appwidget/traffic/f;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/google/googlenav/appwidget/traffic/d;->a(Lcom/google/googlenav/appwidget/traffic/f;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/traffic/d;->a(ILandroid/widget/RemoteViews;)V

    return-void
.end method
