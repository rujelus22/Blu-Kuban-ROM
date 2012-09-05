.class Lcom/google/android/maps/rideabout/app/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/rideabout/app/q;


# static fields
.field private static final a:Lcom/google/android/maps/rideabout/app/r;


# instance fields
.field private volatile b:Lcom/google/android/maps/rideabout/app/z;

.field private volatile c:Lcom/google/android/maps/rideabout/app/A;

.field private volatile d:LaN/d;

.field private e:Landroid/speech/tts/TextToSpeech;

.field private f:Landroid/content/Context;

.field private g:LaN/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/maps/rideabout/app/r;

    invoke-direct {v0}, Lcom/google/android/maps/rideabout/app/r;-><init>()V

    sput-object v0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/r;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/r;->a()V

    return-void
.end method

.method static g()Lcom/google/android/maps/rideabout/app/r;
    .registers 1

    sget-object v0, Lcom/google/android/maps/rideabout/app/r;->a:Lcom/google/android/maps/rideabout/app/r;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    sget-object v0, LaN/d;->a:LaN/d;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->d:LaN/d;

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/Context;LaN/c;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/r;->f:Landroid/content/Context;

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->e:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/r;->g:LaN/c;

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/r;->a()V

    return-void
.end method

.method public a(Lcom/google/android/maps/rideabout/app/A;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->b:Lcom/google/android/maps/rideabout/app/z;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->b:Lcom/google/android/maps/rideabout/app/z;

    invoke-interface {p1, v0}, Lcom/google/android/maps/rideabout/app/A;->a(Lcom/google/android/maps/rideabout/app/z;)V

    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/r;->c:Lcom/google/android/maps/rideabout/app/A;

    goto :goto_9
.end method

.method public a(Z)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->e:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->e:Landroid/speech/tts/TextToSpeech;

    const-string v1, "     "

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->e:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->e:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    goto :goto_4
.end method

.method public b()LaN/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->d:LaN/d;

    return-object v0
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->d:LaN/d;

    sget-object v1, LaN/d;->c:LaN/d;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->d:LaN/d;

    sget-object v1, LaN/d;->c:LaN/d;

    if-ne v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0}, LaN/b;->u()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, LaN/b;->a(Ljava/util/EnumSet;)V

    goto :goto_6
.end method

.method public e()V
    .registers 4

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0}, LaN/b;->u()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/wizard/gJ;->c:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, LaN/b;->a(Ljava/util/EnumSet;)V

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->e:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->e:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_9
    return-void
.end method

.method public onInit(I)V
    .registers 7

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    sget-object v0, LaN/d;->e:LaN/d;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->d:LaN/d;

    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/r;->d()V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->e:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    packed-switch v0, :pswitch_data_4e

    sget-object v0, LaN/d;->f:LaN/d;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->d:LaN/d;

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->g:LaN/c;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->g:LaN/c;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/r;->d:LaN/d;

    invoke-interface {v0, v1}, LaN/c;->a(LaN/d;)V

    iput-object v4, p0, Lcom/google/android/maps/rideabout/app/r;->g:LaN/c;

    goto :goto_8

    :pswitch_2b
    sget-object v0, LaN/d;->b:LaN/d;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->d:LaN/d;

    goto :goto_1d

    :pswitch_30
    sget-object v0, LaN/d;->d:LaN/d;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->d:LaN/d;

    goto :goto_1d

    :pswitch_35
    sget-object v0, LaN/d;->c:LaN/d;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->d:LaN/d;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->c:Lcom/google/android/maps/rideabout/app/A;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/r;->c:Lcom/google/android/maps/rideabout/app/A;

    new-instance v1, Lcom/google/android/maps/rideabout/app/y;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/r;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/r;->e:Landroid/speech/tts/TextToSpeech;

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/rideabout/app/y;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/app/A;->a(Lcom/google/android/maps/rideabout/app/z;)V

    iput-object v4, p0, Lcom/google/android/maps/rideabout/app/r;->c:Lcom/google/android/maps/rideabout/app/A;

    goto :goto_1d

    :pswitch_data_4e
    .packed-switch -0x2
        :pswitch_30
        :pswitch_2b
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method
