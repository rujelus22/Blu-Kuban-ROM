.class Li/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/aa;


# instance fields
.field private a:Landroid/speech/tts/TextToSpeech;

.field private final b:Landroid/content/Context;

.field private c:Li/Z;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Li/ae;->c:Li/Z;

    .line 55
    iput-object p1, p0, Li/ae;->b:Landroid/content/Context;

    .line 56
    return-void
.end method

.method public static a(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 192
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 197
    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {p0, p1}, Li/ae;->b(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0, p1}, Li/ae;->c(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static b(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 213
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 218
    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_22
    const/4 v0, 0x1

    goto :goto_5
.end method

.method static c(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 168
    const-string v0, "LocalOnly"

    .line 170
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p0}, Li/ae;->a(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 171
    const-string v0, "NetworkOnly"

    .line 176
    :cond_c
    :goto_c
    return-object v0

    .line 172
    :cond_d
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {v1, p0}, Li/ae;->a(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 173
    const-string v0, "NetworkOnly"

    goto :goto_c
.end method

.method public static c(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 235
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 240
    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_22
    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public a(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .registers 3
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Li/ae;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 130
    const-string v0, "utteranceId"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0}, Li/ae;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Li/ae;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 134
    if-eqz p4, :cond_1b

    const-string v1, "NetworkFirst"

    if-ne v0, v1, :cond_1b

    .line 135
    const-string v0, "NetworkOnly"

    .line 137
    :cond_1b
    const-string v1, "com.google.android.tts:Mode"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "u"

    .line 140
    const-string v3, "NetworkOnly"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 141
    const-string v0, "n"

    .line 147
    :goto_2c
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dc;->a(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Li/ae;->c:Li/Z;

    if-eqz v0, :cond_46

    .line 158
    iget-object v0, p0, Li/ae;->c:Li/Z;

    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Li/Z;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_46
    iget-object v0, p0, Li/ae;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1, v2, p3}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 142
    :cond_4d
    const-string v3, "NetworkFirst"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 143
    const-string v0, "b"

    goto :goto_2c

    .line 144
    :cond_58
    const-string v3, "LocalOnly"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 145
    const-string v0, "l"

    goto :goto_2c

    :cond_63
    move-object v0, v1

    goto :goto_2c
.end method

.method public a(Ljava/util/Locale;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, -0x2

    .line 88
    if-nez p1, :cond_4

    .line 107
    :cond_3
    :goto_3
    return v0

    .line 91
    :cond_4
    iget-object v1, p0, Li/ae;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v1

    .line 101
    if-nez v1, :cond_16

    invoke-virtual {p0}, Li/ae;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1, v2}, Li/ae;->b(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    :cond_16
    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    invoke-virtual {p0}, Li/ae;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1, v2}, Li/ae;->a(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_23
    move v0, v1

    goto :goto_3
.end method

.method public a()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Li/ae;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 119
    return-void
.end method

.method public a(Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .registers 4
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Li/ae;->a:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_d

    .line 61
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Li/ae;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Li/ae;->a:Landroid/speech/tts/TextToSpeech;

    .line 63
    :cond_d
    return-void
.end method

.method public a(Li/Z;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Li/ae;->c:Li/Z;

    .line 41
    return-void
.end method

.method public b(Ljava/util/Locale;)I
    .registers 3
    .parameter

    .prologue
    .line 246
    if-nez p1, :cond_4

    .line 247
    const/4 v0, -0x2

    .line 249
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Li/ae;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    goto :goto_3
.end method

.method public b()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Li/ae;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Li/ae;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 5

    .prologue
    .line 254
    iget-object v0, p0, Li/ae;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 255
    const/4 v1, 0x0

    .line 257
    :try_start_7
    const-string v2, "getDefaultEngine"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 258
    iget-object v2, p0, Li/ae;->a:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_1b} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_1b} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_1b} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_1b} :catch_28

    .line 270
    :goto_1b
    return-object v0

    .line 259
    :catch_1c
    move-exception v0

    move-object v0, v1

    .line 269
    goto :goto_1b

    .line 261
    :catch_1f
    move-exception v0

    move-object v0, v1

    .line 269
    goto :goto_1b

    .line 263
    :catch_22
    move-exception v0

    move-object v0, v1

    .line 269
    goto :goto_1b

    .line 265
    :catch_25
    move-exception v0

    move-object v0, v1

    .line 269
    goto :goto_1b

    .line 267
    :catch_28
    move-exception v0

    move-object v0, v1

    goto :goto_1b
.end method
