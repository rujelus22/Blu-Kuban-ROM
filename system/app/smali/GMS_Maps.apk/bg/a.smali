.class public Lbg/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.google.android.apps.genie.geniewidget.weather/weather/daily/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lbg/a;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lbg/b;
    .registers 15

    const/4 v6, 0x0

    sget-object v0, Lbg/c;->a:Lbg/c;

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lbg/a;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_72

    move-result-object v1

    if-eqz v1, :cond_79

    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "timestamp"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v0, "iconUrl"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v0, "temperature"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v0, "location"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-wide/16 v2, -0x1

    move-object v0, v6

    move-wide v4, v2

    move-object v3, v6

    move-object v2, v6

    :goto_37
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    cmp-long v11, v11, v4

    if-lez v11, :cond_7e

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_62
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_83

    invoke-static {v0}, Lbg/a;->a(Ljava/lang/String;)Lbg/c;

    move-result-object v4

    new-instance v0, Lbg/b;

    invoke-direct {v0, v4, v3, v2}, Lbg/b;-><init>(Lbg/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_71} :catch_7b

    :goto_71
    return-object v0

    :catch_72
    move-exception v0

    move-object v0, v6

    :goto_74
    if-eqz v0, :cond_79

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_79
    move-object v0, v6

    goto :goto_71

    :catch_7b
    move-exception v0

    move-object v0, v1

    goto :goto_74

    :cond_7e
    move-object v13, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v13

    goto :goto_62

    :cond_83
    move-object v13, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v13

    goto :goto_37
.end method

.method private static a(Ljava/lang/String;)Lbg/c;
    .registers 2

    if-nez p0, :cond_5

    sget-object v0, Lbg/c;->a:Lbg/c;

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "chance_of_rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lbg/c;->b:Lbg/c;

    goto :goto_4

    :cond_10
    const-string v0, "chance_snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lbg/c;->c:Lbg/c;

    goto :goto_4

    :cond_1b
    const-string v0, "chance_storm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lbg/c;->d:Lbg/c;

    goto :goto_4

    :cond_26
    const-string v0, "clear_day"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lbg/c;->e:Lbg/c;

    goto :goto_4

    :cond_31
    const-string v0, "clear_night"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lbg/c;->g:Lbg/c;

    goto :goto_4

    :cond_3c
    const-string v0, "heavy_rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lbg/c;->k:Lbg/c;

    goto :goto_4

    :cond_47
    const-string v0, "icy_sleet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lbg/c;->l:Lbg/c;

    goto :goto_4

    :cond_52
    const-string v0, "partly_cloudy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    sget-object v0, Lbg/c;->n:Lbg/c;

    goto :goto_4

    :cond_5d
    const-string v0, "rain_day"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Lbg/c;->o:Lbg/c;

    goto :goto_4

    :cond_68
    const-string v0, "rain_night"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    sget-object v0, Lbg/c;->q:Lbg/c;

    goto :goto_4

    :cond_73
    const-string v0, "snow_rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    sget-object v0, Lbg/c;->s:Lbg/c;

    goto :goto_4

    :cond_7e
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8a

    sget-object v0, Lbg/c;->a:Lbg/c;

    goto/16 :goto_4

    :cond_8a
    const-string v0, "flurries"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_96

    sget-object v0, Lbg/c;->i:Lbg/c;

    goto/16 :goto_4

    :cond_96
    const-string v0, "windy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a2

    sget-object v0, Lbg/c;->v:Lbg/c;

    goto/16 :goto_4

    :cond_a2
    const-string v0, "clear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ae

    sget-object v0, Lbg/c;->f:Lbg/c;

    goto/16 :goto_4

    :cond_ae
    const-string v0, "cloudy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ba

    sget-object v0, Lbg/c;->h:Lbg/c;

    goto/16 :goto_4

    :cond_ba
    const-string v0, "fog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c6

    sget-object v0, Lbg/c;->j:Lbg/c;

    goto/16 :goto_4

    :cond_c6
    const-string v0, "snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d2

    sget-object v0, Lbg/c;->r:Lbg/c;

    goto/16 :goto_4

    :cond_d2
    const-string v0, "sunny"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_de

    sget-object v0, Lbg/c;->t:Lbg/c;

    goto/16 :goto_4

    :cond_de
    const-string v0, "thunderstorm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ea

    sget-object v0, Lbg/c;->u:Lbg/c;

    goto/16 :goto_4

    :cond_ea
    const-string v0, "rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f6

    sget-object v0, Lbg/c;->p:Lbg/c;

    goto/16 :goto_4

    :cond_f6
    const-string v0, "mist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_102

    sget-object v0, Lbg/c;->m:Lbg/c;

    goto/16 :goto_4

    :cond_102
    sget-object v0, Lbg/c;->a:Lbg/c;

    goto/16 :goto_4
.end method
