.class Lcom/google/android/marvin/talkback/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Ljava/util/ArrayList;

.field private final c:Lcom/google/android/marvin/talkback/i;

.field private final d:Landroid/os/Handler;

.field private final e:Landroid/content/Context;

.field private final f:Landroid/media/AudioManager;

.field private final g:Landroid/telephony/TelephonyManager;

.field private h:Lcom/google/android/marvin/utils/e;

.field private i:Ljava/lang/String;

.field private j:Landroid/speech/tts/TextToSpeech;

.field private k:Landroid/speech/tts/TextToSpeech;

.field private l:Z

.field private m:I

.field private final n:Ljava/lang/Runnable;

.field private final o:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

.field private final p:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final q:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final r:Lcom/google/android/marvin/utils/o;

.field private final s:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/marvin/talkback/i;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/i;-><init>(Lcom/google/android/marvin/talkback/l;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->c:Lcom/google/android/marvin/talkback/i;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->d:Landroid/os/Handler;

    iput v3, p0, Lcom/google/android/marvin/talkback/l;->m:I

    new-instance v0, Lcom/google/android/marvin/talkback/z;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/z;-><init>(Lcom/google/android/marvin/talkback/l;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->n:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/marvin/talkback/aa;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/aa;-><init>(Lcom/google/android/marvin/talkback/l;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->o:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    new-instance v0, Lcom/google/android/marvin/talkback/ab;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/ab;-><init>(Lcom/google/android/marvin/talkback/l;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->p:Landroid/speech/tts/TextToSpeech$OnInitListener;

    new-instance v0, Lcom/google/android/marvin/talkback/ai;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/ai;-><init>(Lcom/google/android/marvin/talkback/l;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->q:Landroid/speech/tts/TextToSpeech$OnInitListener;

    new-instance v0, Lcom/google/android/marvin/talkback/ah;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/ah;-><init>(Lcom/google/android/marvin/talkback/l;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->r:Lcom/google/android/marvin/utils/o;

    new-instance v0, Lcom/google/android/marvin/talkback/ag;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/ag;-><init>(Lcom/google/android/marvin/talkback/l;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->s:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iput-object p1, p0, Lcom/google/android/marvin/talkback/l;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/l;->c:Lcom/google/android/marvin/talkback/i;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/l;->c:Lcom/google/android/marvin/talkback/i;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/i;->a()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->e:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->f:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->e:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->g:Landroid/telephony/TelephonyManager;

    iput-boolean v3, p0, Lcom/google/android/marvin/talkback/l;->l:Z

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/l;->q:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->j:Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/l;->s:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/l;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/l;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/l;Landroid/speech/tts/TextToSpeech;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/l;->j:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/l;Ljava/lang/String;)V
    .registers 7

    const-string v0, "talkback_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :try_start_8
    const-string v0, "talkback_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_15} :catch_3f

    move-result v1

    iget-object v2, p0, Lcom/google/android/marvin/talkback/l;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_19
    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    monitor-exit v2

    :cond_26
    :goto_26
    return-void

    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/am;

    iget v4, v0, Lcom/google/android/marvin/talkback/am;->a:I

    if-gt v4, v1, :cond_1f

    iget-object v4, p0, Lcom/google/android/marvin/talkback/l;->d:Landroid/os/Handler;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/am;->b:Ljava/lang/Runnable;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    :catchall_3c
    move-exception v0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_19 .. :try_end_3e} :catchall_3c

    throw v0

    :catch_3f
    move-exception v0

    goto :goto_26
.end method

.method static synthetic b(Lcom/google/android/marvin/talkback/l;)Landroid/speech/tts/TextToSpeech;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->j:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/marvin/talkback/l;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/l;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/google/android/marvin/talkback/l;)Landroid/speech/tts/TextToSpeech;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->k:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/marvin/talkback/l;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/l;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/l;->p:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->k:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method static synthetic d(Lcom/google/android/marvin/talkback/l;)Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->o:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/marvin/talkback/l;)Lcom/google/android/marvin/utils/e;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->h:Lcom/google/android/marvin/utils/e;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/marvin/talkback/l;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->f:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/marvin/talkback/l;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/marvin/talkback/l;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->j:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    return-void
.end method

.method public final a(ILjava/lang/Runnable;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/marvin/talkback/l;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/google/android/marvin/talkback/am;

    invoke-direct {v0, p1, p2}, Lcom/google/android/marvin/talkback/am;-><init>(ILjava/lang/Runnable;)V

    iget-object v2, p0, Lcom/google/android/marvin/talkback/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public final a(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/t;)V
    .registers 13

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/marvin/talkback/g;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iget v4, p0, Lcom/google/android/marvin/talkback/l;->m:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "talkback_"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v0, p0, Lcom/google/android/marvin/talkback/l;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/marvin/talkback/l;->m:I

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->g:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->g:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-ne v0, v2, :cond_9a

    move v0, v2

    :goto_34
    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->f:Landroid/media/AudioManager;

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v6, p0, Lcom/google/android/marvin/talkback/l;->f:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    div-int/lit8 v7, v0, 0x2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/marvin/talkback/l;->f:Landroid/media/AudioManager;

    invoke-virtual {v7, v9, v6, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    new-instance v6, Lcom/google/android/marvin/talkback/af;

    invoke-direct {v6, p0, v0}, Lcom/google/android/marvin/talkback/af;-><init>(Lcom/google/android/marvin/talkback/l;I)V

    invoke-virtual {p0, v4, v6}, Lcom/google/android/marvin/talkback/l;->a(ILjava/lang/Runnable;)V

    :cond_57
    iget-object v6, p0, Lcom/google/android/marvin/talkback/l;->a:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    const-string v0, "utteranceId"

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->h:Lcom/google/android/marvin/utils/e;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->h:Lcom/google/android/marvin/utils/e;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/e;->b()Z

    move-result v0

    if-nez v0, :cond_9c

    :cond_6d
    :goto_6d
    sget-object v0, Lcom/google/android/marvin/talkback/t;->c:Lcom/google/android/marvin/talkback/t;

    if-ne p2, v0, :cond_bf

    iput-boolean v2, p0, Lcom/google/android/marvin/talkback/l;->l:Z

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/l;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, v4, v0}, Lcom/google/android/marvin/talkback/l;->a(ILjava/lang/Runnable;)V

    move v0, v1

    :goto_7e
    const-class v4, Lcom/google/android/marvin/talkback/TalkBackService;

    const-string v5, "Speaking with queue mode %s: \"%s\""

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/t;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v3, v7, v2

    invoke-static {v4, v9, v5, v7}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/marvin/talkback/l;->j:Landroid/speech/tts/TextToSpeech;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_9

    :cond_9a
    move v0, v1

    goto :goto_34

    :cond_9c
    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->h:Lcom/google/android/marvin/utils/e;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/e;->e()Z

    move-result v0

    if-nez v0, :cond_ab

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->h:Lcom/google/android/marvin/utils/e;

    iget-object v5, p0, Lcom/google/android/marvin/talkback/l;->e:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/google/android/marvin/utils/e;->a(Landroid/content/Context;)V

    :cond_ab
    const-string v0, "streamType"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/android/marvin/talkback/l;

    const/4 v5, 0x3

    const-string v7, "Connected to Bluetooth headset!"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0, v5, v7, v8}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6d

    :cond_bf
    sget-object v0, Lcom/google/android/marvin/talkback/t;->a:Lcom/google/android/marvin/talkback/t;

    if-ne p2, v0, :cond_c9

    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/l;->l:Z

    if-nez v0, :cond_c9

    move v0, v1

    goto :goto_7e

    :cond_c9
    iput-boolean v1, p0, Lcom/google/android/marvin/talkback/l;->l:Z

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/l;->a(Ljava/lang/Runnable;)V

    move v0, v2

    goto :goto_7e
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/marvin/talkback/l;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    monitor-exit v1

    return-void

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/am;

    iget-object v0, v0, Lcom/google/android/marvin/talkback/am;->b:Ljava/lang/Runnable;

    if-ne v0, p1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public final a(Z)V
    .registers 4

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->h:Lcom/google/android/marvin/utils/e;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/marvin/utils/e;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/l;->r:Lcom/google/android/marvin/utils/o;

    invoke-direct {v0, v1}, Lcom/google/android/marvin/utils/e;-><init>(Lcom/google/android/marvin/utils/o;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->h:Lcom/google/android/marvin/utils/e;

    :cond_f
    :goto_f
    return-void

    :cond_10
    if-nez p1, :cond_f

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->h:Lcom/google/android/marvin/utils/e;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->h:Lcom/google/android/marvin/utils/e;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/e;->d()Z

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->h:Lcom/google/android/marvin/utils/e;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/l;->h:Lcom/google/android/marvin/utils/e;

    goto :goto_f
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->j:Landroid/speech/tts/TextToSpeech;

    const-string v1, ""

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->j:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->c:Lcom/google/android/marvin/talkback/i;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/marvin/talkback/l;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/l;->c:Lcom/google/android/marvin/talkback/i;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_10
    return-void
.end method
