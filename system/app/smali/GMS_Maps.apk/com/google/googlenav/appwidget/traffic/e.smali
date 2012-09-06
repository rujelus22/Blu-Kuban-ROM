.class Lcom/google/googlenav/appwidget/traffic/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/appwidget/AppWidgetManager;

.field private final d:Lcom/google/googlenav/appwidget/traffic/i;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/google/googlenav/appwidget/traffic/e;->a:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/e;->b:Ljava/lang/String;

    .line 119
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/e;->c:Landroid/appwidget/AppWidgetManager;

    .line 120
    new-instance v0, Lcom/google/googlenav/appwidget/traffic/i;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/i;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/e;->d:Lcom/google/googlenav/appwidget/traffic/i;

    .line 121
    return-void
.end method

.method private static a(Lat/B;Lat/B;Ljava/lang/String;)Landroid/content/Intent;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x3f99999a

    .line 260
    invoke-virtual {p0}, Lat/B;->c()I

    move-result v0

    invoke-virtual {p1}, Lat/B;->c()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 261
    invoke-virtual {p0}, Lat/B;->e()I

    move-result v1

    invoke-virtual {p1}, Lat/B;->e()I

    move-result v2

    invoke-static {v1, v2}, Lat/C;->a(II)I

    move-result v1

    .line 264
    invoke-virtual {p0}, Lat/B;->c()I

    move-result v2

    invoke-virtual {p1}, Lat/B;->c()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 266
    invoke-virtual {p0}, Lat/B;->e()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3}, Lat/C;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 268
    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 270
    const-string v4, "http://maps.google.com/maps"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "ll"

    invoke-static {v0, v1}, Lat/B;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "spn"

    invoke-static {v2, v3}, Lat/B;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "layer"

    const-string v2, "t"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 277
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 280
    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const v2, 0x15180

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 295
    if-gez p0, :cond_8

    move p0, v0

    .line 299
    :cond_8
    div-int v1, p0, v2

    .line 301
    if-lez v1, :cond_1f

    .line 302
    const/16 v2, 0xd6

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_1e
    return-object v0

    .line 305
    :cond_1f
    rem-int v1, p0, v2

    .line 306
    div-int/lit16 v2, v1, 0xe10

    .line 307
    rem-int/lit16 v1, v1, 0xe10

    .line 308
    div-int/lit8 v1, v1, 0x3c

    .line 310
    if-lez v2, :cond_4d

    .line 311
    const-string v3, "%02d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 312
    const/16 v3, 0xd7

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 315
    :cond_4d
    const/16 v2, 0xd8

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method


# virtual methods
.method a(Lcom/google/googlenav/appwidget/traffic/g;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f10043d

    .line 229
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/e;->b:Ljava/lang/String;

    const v2, 0x7f0401c4

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 230
    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/g;->a()I

    move-result v1

    .line 231
    const v2, 0x7f10043c

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 232
    const v1, 0x7f10001e

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 233
    invoke-static {p3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 234
    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 235
    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 240
    :goto_2c
    if-eqz p4, :cond_34

    .line 241
    const v1, 0x7f100438

    invoke-virtual {v0, v1, p4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 243
    :cond_34
    return-object v0

    .line 237
    :cond_35
    invoke-virtual {v0, v3, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 238
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2c
.end method

.method a(IJLat/B;Lat/B;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-virtual/range {p0 .. p5}, Lcom/google/googlenav/appwidget/traffic/e;->b(IJLat/B;Lat/B;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/traffic/e;->a(ILandroid/widget/RemoteViews;)V

    .line 144
    return-void
.end method

.method a(ILandroid/app/PendingIntent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/e;->d:Lcom/google/googlenav/appwidget/traffic/i;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/traffic/i;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->e:Lcom/google/googlenav/appwidget/traffic/g;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/google/googlenav/appwidget/traffic/e;->a(Lcom/google/googlenav/appwidget/traffic/g;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/traffic/e;->a(ILandroid/widget/RemoteViews;)V

    .line 154
    return-void
.end method

.method a(ILandroid/widget/RemoteViews;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 129
    if-nez p2, :cond_3

    .line 133
    :goto_2
    return-void

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/e;->c:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_2
.end method

.method b(IJLat/B;Lat/B;)Landroid/widget/RemoteViews;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const-wide/high16 v0, 0x3ff0

    .line 188
    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/e;->d:Lcom/google/googlenav/appwidget/traffic/i;

    invoke-virtual {v2, p1}, Lcom/google/googlenav/appwidget/traffic/i;->b(I)Lcom/google/googlenav/appwidget/traffic/d;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_f

    iget-object v3, v2, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 190
    :cond_f
    const/4 v0, 0x0

    .line 216
    :goto_10
    return-object v0

    .line 194
    :cond_11
    invoke-virtual {p4, p5}, Lat/B;->b(Lat/B;)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 195
    iget-wide v5, v2, Lcom/google/googlenav/appwidget/traffic/d;->j:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_57

    .line 197
    :goto_22
    iget-wide v3, v2, Lcom/google/googlenav/appwidget/traffic/d;->f:J

    iget-wide v5, v2, Lcom/google/googlenav/appwidget/traffic/d;->i:J

    sub-long/2addr v3, v5

    .line 198
    long-to-double v3, v3

    mul-double/2addr v0, v3

    const-wide v3, 0x408f400000000000L

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 200
    invoke-static {v1}, Lcom/google/googlenav/appwidget/traffic/e;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/g;->a:Lcom/google/googlenav/appwidget/traffic/g;

    .line 204
    if-lez v1, :cond_44

    .line 205
    iget v1, v2, Lcom/google/googlenav/appwidget/traffic/d;->g:I

    const/16 v4, 0x28

    if-le v1, v4, :cond_5d

    .line 206
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/g;->c:Lcom/google/googlenav/appwidget/traffic/g;

    .line 213
    :cond_44
    :goto_44
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/e;->a:Landroid/content/Context;

    iget-object v4, v2, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    invoke-static {p4, p5, v4}, Lcom/google/googlenav/appwidget/traffic/e;->a(Lat/B;Lat/B;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v1, v9, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 216
    iget-object v2, v2, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/googlenav/appwidget/traffic/e;->a(Lcom/google/googlenav/appwidget/traffic/g;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_10

    .line 195
    :cond_57
    iget-wide v5, v2, Lcom/google/googlenav/appwidget/traffic/d;->j:J

    long-to-double v5, v5

    div-double/2addr v0, v5

    mul-double/2addr v0, v3

    goto :goto_22

    .line 207
    :cond_5d
    iget v1, v2, Lcom/google/googlenav/appwidget/traffic/d;->g:I

    const/16 v4, 0x14

    if-le v1, v4, :cond_44

    .line 208
    sget-object v0, Lcom/google/googlenav/appwidget/traffic/g;->b:Lcom/google/googlenav/appwidget/traffic/g;

    goto :goto_44
.end method

.method b(ILandroid/app/PendingIntent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/e;->d:Lcom/google/googlenav/appwidget/traffic/i;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/traffic/i;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->d:Lcom/google/googlenav/appwidget/traffic/g;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/google/googlenav/appwidget/traffic/e;->a(Lcom/google/googlenav/appwidget/traffic/g;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 162
    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/traffic/e;->a(ILandroid/widget/RemoteViews;)V

    .line 163
    return-void
.end method

.method c(ILandroid/app/PendingIntent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/e;->d:Lcom/google/googlenav/appwidget/traffic/i;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/traffic/i;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->f:Lcom/google/googlenav/appwidget/traffic/g;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/google/googlenav/appwidget/traffic/e;->a(Lcom/google/googlenav/appwidget/traffic/g;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/traffic/e;->a(ILandroid/widget/RemoteViews;)V

    .line 173
    return-void
.end method
