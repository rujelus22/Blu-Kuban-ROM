.class public LaU/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string v0, "content://com.google.android.apps.genie.geniewidget.weather/weather/daily/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, LaU/a;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;)LaU/b;
    .registers 15
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 76
    sget-object v0, LaU/c;->a:LaU/c;

    .line 79
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, LaU/a;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_72

    move-result-object v1

    .line 80
    if-eqz v1, :cond_79

    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 81
    const-string v0, "timestamp"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 82
    const-string v0, "iconUrl"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 83
    const-string v0, "temperature"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 84
    const-string v0, "location"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 85
    const-wide/16 v2, -0x1

    move-object v0, v6

    move-wide v4, v2

    move-object v3, v6

    move-object v2, v6

    .line 95
    :goto_37
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    cmp-long v11, v11, v4

    if-lez v11, :cond_7e

    .line 99
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 100
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
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

    .line 104
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    :goto_62
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_83

    .line 107
    invoke-static {v0}, LaU/a;->a(Ljava/lang/String;)LaU/c;

    move-result-object v4

    .line 108
    new-instance v0, LaU/b;

    invoke-direct {v0, v4, v3, v2}, LaU/b;-><init>(LaU/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_71} :catch_7b

    .line 117
    :goto_71
    return-object v0

    .line 110
    :catch_72
    move-exception v0

    move-object v0, v6

    .line 113
    :goto_74
    if-eqz v0, :cond_79

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_79
    move-object v0, v6

    .line 117
    goto :goto_71

    .line 110
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

.method private static a(Ljava/lang/String;)LaU/c;
    .registers 2
    .parameter

    .prologue
    .line 127
    if-nez p0, :cond_5

    .line 128
    sget-object v0, LaU/c;->a:LaU/c;

    .line 178
    :goto_4
    return-object v0

    .line 133
    :cond_5
    const-string v0, "chance_of_rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 134
    sget-object v0, LaU/c;->b:LaU/c;

    goto :goto_4

    .line 135
    :cond_10
    const-string v0, "chance_snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 136
    sget-object v0, LaU/c;->c:LaU/c;

    goto :goto_4

    .line 137
    :cond_1b
    const-string v0, "chance_storm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 138
    sget-object v0, LaU/c;->d:LaU/c;

    goto :goto_4

    .line 139
    :cond_26
    const-string v0, "clear_day"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 140
    sget-object v0, LaU/c;->e:LaU/c;

    goto :goto_4

    .line 141
    :cond_31
    const-string v0, "clear_night"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 142
    sget-object v0, LaU/c;->g:LaU/c;

    goto :goto_4

    .line 143
    :cond_3c
    const-string v0, "heavy_rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 144
    sget-object v0, LaU/c;->k:LaU/c;

    goto :goto_4

    .line 145
    :cond_47
    const-string v0, "icy_sleet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 146
    sget-object v0, LaU/c;->l:LaU/c;

    goto :goto_4

    .line 147
    :cond_52
    const-string v0, "partly_cloudy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 148
    sget-object v0, LaU/c;->n:LaU/c;

    goto :goto_4

    .line 149
    :cond_5d
    const-string v0, "rain_day"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 150
    sget-object v0, LaU/c;->o:LaU/c;

    goto :goto_4

    .line 151
    :cond_68
    const-string v0, "rain_night"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 152
    sget-object v0, LaU/c;->q:LaU/c;

    goto :goto_4

    .line 153
    :cond_73
    const-string v0, "snow_rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 154
    sget-object v0, LaU/c;->s:LaU/c;

    goto :goto_4

    .line 155
    :cond_7e
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 156
    sget-object v0, LaU/c;->a:LaU/c;

    goto/16 :goto_4

    .line 157
    :cond_8a
    const-string v0, "flurries"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 158
    sget-object v0, LaU/c;->i:LaU/c;

    goto/16 :goto_4

    .line 159
    :cond_96
    const-string v0, "windy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 160
    sget-object v0, LaU/c;->v:LaU/c;

    goto/16 :goto_4

    .line 161
    :cond_a2
    const-string v0, "clear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 162
    sget-object v0, LaU/c;->f:LaU/c;

    goto/16 :goto_4

    .line 163
    :cond_ae
    const-string v0, "cloudy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 164
    sget-object v0, LaU/c;->h:LaU/c;

    goto/16 :goto_4

    .line 165
    :cond_ba
    const-string v0, "fog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 166
    sget-object v0, LaU/c;->j:LaU/c;

    goto/16 :goto_4

    .line 167
    :cond_c6
    const-string v0, "snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 168
    sget-object v0, LaU/c;->r:LaU/c;

    goto/16 :goto_4

    .line 169
    :cond_d2
    const-string v0, "sunny"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 170
    sget-object v0, LaU/c;->t:LaU/c;

    goto/16 :goto_4

    .line 171
    :cond_de
    const-string v0, "thunderstorm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 172
    sget-object v0, LaU/c;->u:LaU/c;

    goto/16 :goto_4

    .line 173
    :cond_ea
    const-string v0, "rain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 174
    sget-object v0, LaU/c;->p:LaU/c;

    goto/16 :goto_4

    .line 175
    :cond_f6
    const-string v0, "mist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 176
    sget-object v0, LaU/c;->m:LaU/c;

    goto/16 :goto_4

    .line 178
    :cond_102
    sget-object v0, LaU/c;->a:LaU/c;

    goto/16 :goto_4
.end method
