.class Lcom/google/android/maps/rideabout/app/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/rideabout/app/o;


# static fields
.field private static final a:Lcom/google/android/maps/rideabout/app/p;


# instance fields
.field private volatile b:Lcom/google/android/maps/rideabout/app/x;

.field private volatile c:Lcom/google/android/maps/rideabout/app/y;

.field private volatile d:Lay/c;

.field private e:Landroid/speech/tts/TextToSpeech;

.field private f:Landroid/content/Context;

.field private g:Lay/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/maps/rideabout/app/p;

    invoke-direct {v0}, Lcom/google/android/maps/rideabout/app/p;-><init>()V

    sput-object v0, Lcom/google/android/maps/rideabout/app/p;->a:Lcom/google/android/maps/rideabout/app/p;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/p;->a()V

    .line 60
    return-void
.end method

.method static g()Lcom/google/android/maps/rideabout/app/p;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/maps/rideabout/app/p;->a:Lcom/google/android/maps/rideabout/app/p;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lay/c;->a:Lay/c;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->d:Lay/c;

    .line 65
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    const-string v1, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public a(Landroid/content/Context;Lay/b;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/p;->f:Landroid/content/Context;

    .line 80
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->e:Landroid/speech/tts/TextToSpeech;

    .line 81
    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/p;->g:Lay/b;

    .line 82
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/p;->a()V

    .line 83
    return-void
.end method

.method public a(Lcom/google/android/maps/rideabout/app/y;)V
    .registers 3
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->b:Lcom/google/android/maps/rideabout/app/x;

    if-eqz v0, :cond_a

    .line 155
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->b:Lcom/google/android/maps/rideabout/app/x;

    invoke-interface {p1, v0}, Lcom/google/android/maps/rideabout/app/y;->a(Lcom/google/android/maps/rideabout/app/x;)V

    .line 159
    :goto_9
    return-void

    .line 158
    :cond_a
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/p;->c:Lcom/google/android/maps/rideabout/app/y;

    goto :goto_9
.end method

.method public a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->e:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_5

    .line 175
    :cond_4
    :goto_4
    return-void

    .line 168
    :cond_5
    if-eqz p1, :cond_11

    .line 169
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->e:Landroid/speech/tts/TextToSpeech;

    const-string v1, "     "

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_4

    .line 171
    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->e:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->e:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    goto :goto_4
.end method

.method public b()Lay/c;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->d:Lay/c;

    return-object v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->d:Lay/c;

    sget-object v1, Lay/c;->c:Lay/c;

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

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->d:Lay/c;

    sget-object v1, Lay/c;->c:Lay/c;

    if-ne v0, v1, :cond_7

    .line 142
    :cond_6
    :goto_6
    return-void

    .line 136
    :cond_7
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lay/a;->u()Ljava/util/EnumSet;

    move-result-object v1

    .line 138
    sget-object v2, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 139
    sget-object v2, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v0, v1}, Lay/a;->a(Ljava/util/EnumSet;)V

    goto :goto_6
.end method

.method public e()V
    .registers 4

    .prologue
    .line 146
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lay/a;->u()Ljava/util/EnumSet;

    move-result-object v1

    .line 148
    sget-object v2, Lcom/google/googlenav/ui/wizard/iv;->c:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {v0, v1}, Lay/a;->a(Ljava/util/EnumSet;)V

    .line 150
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->e:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_9

    .line 180
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->e:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 182
    :cond_9
    return-void
.end method

.method public onInit(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 90
    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    .line 91
    sget-object v0, Lay/c;->e:Lay/c;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->d:Lay/c;

    .line 121
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/p;->d()V

    .line 122
    return-void

    .line 96
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->e:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    packed-switch v0, :pswitch_data_4e

    .line 113
    sget-object v0, Lay/c;->f:Lay/c;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->d:Lay/c;

    .line 116
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->g:Lay/b;

    if-eqz v0, :cond_8

    .line 117
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->g:Lay/b;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/p;->d:Lay/c;

    invoke-interface {v0, v1}, Lay/b;->a(Lay/c;)V

    .line 118
    iput-object v4, p0, Lcom/google/android/maps/rideabout/app/p;->g:Lay/b;

    goto :goto_8

    .line 98
    :pswitch_2b
    sget-object v0, Lay/c;->b:Lay/c;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->d:Lay/c;

    goto :goto_1d

    .line 101
    :pswitch_30
    sget-object v0, Lay/c;->d:Lay/c;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->d:Lay/c;

    goto :goto_1d

    .line 106
    :pswitch_35
    sget-object v0, Lay/c;->c:Lay/c;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->d:Lay/c;

    .line 107
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->c:Lcom/google/android/maps/rideabout/app/y;

    if-eqz v0, :cond_1d

    .line 108
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/p;->c:Lcom/google/android/maps/rideabout/app/y;

    new-instance v1, Lcom/google/android/maps/rideabout/app/w;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/p;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/p;->e:Landroid/speech/tts/TextToSpeech;

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/rideabout/app/w;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/app/y;->a(Lcom/google/android/maps/rideabout/app/x;)V

    .line 109
    iput-object v4, p0, Lcom/google/android/maps/rideabout/app/p;->c:Lcom/google/android/maps/rideabout/app/y;

    goto :goto_1d

    .line 96
    :pswitch_data_4e
    .packed-switch -0x2
        :pswitch_30
        :pswitch_2b
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method
