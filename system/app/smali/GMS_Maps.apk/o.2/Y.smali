.class Lo/Y;
.super Ljava/lang/Object;

# interfaces
.implements Lo/X;


# instance fields
.field private a:Landroid/speech/tts/TextToSpeech;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Y;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {p0, p1}, Lo/Y;->b(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0, p1}, Lo/Y;->c(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static b(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

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

    const-string v0, "LocalOnly"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p0}, Lo/Y;->a(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "NetworkFirst"

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {v1, p0}, Lo/Y;->a(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "NetworkOnly"

    goto :goto_c
.end method

.method public static c(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

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

    iget-object v0, p0, Lo/Y;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "utteranceId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.android.tts:Mode"

    invoke-virtual {p0}, Lo/Y;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lo/Y;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lo/Y;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, p1, v0, p3}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Locale;)I
    .registers 5

    const/4 v0, -0x2

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lo/Y;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p0}, Lo/Y;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1, v2}, Lo/Y;->b(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_16
    move v0, v1

    goto :goto_3
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lo/Y;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    return-void
.end method

.method public a(Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .registers 4

    iget-object v0, p0, Lo/Y;->a:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_d

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lo/Y;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lo/Y;->a:Landroid/speech/tts/TextToSpeech;

    :cond_d
    return-void
.end method

.method public b(Ljava/util/Locale;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, -0x2

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lo/Y;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    goto :goto_3
.end method

.method public b()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lo/Y;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lo/Y;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lo/Y;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    const-string v2, "getDefaultEngine"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lo/Y;->a:Landroid/speech/tts/TextToSpeech;

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

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    move-object v0, v1

    goto :goto_1b

    :catch_1f
    move-exception v0

    move-object v0, v1

    goto :goto_1b

    :catch_22
    move-exception v0

    move-object v0, v1

    goto :goto_1b

    :catch_25
    move-exception v0

    move-object v0, v1

    goto :goto_1b

    :catch_28
    move-exception v0

    move-object v0, v1

    goto :goto_1b
.end method
