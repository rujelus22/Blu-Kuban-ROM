.class public Lcom/google/tts/TTS;
.super Ljava/lang/Object;
.source "TTS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tts/TTS$InitListener;,
        Lcom/google/tts/TTS$SpeechCompletedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MIN_VER:I = 0xa


# instance fields
.field private cb:Lcom/google/tts/TTS$InitListener;

.field private ctx:Landroid/content/Context;

.field private itts:Lcom/google/tts/ITTS;

.field private ittscallback:Lcom/google/tts/ITTSCallback;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private showInstaller:Z

.field private speechCompletedCallback:Lcom/google/tts/TTS$SpeechCompletedListener;

.field private started:Z

.field private version:I

.field private versionAlert:Lcom/google/tts/TTSVersionAlert;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/tts/TTS$InitListener;Lcom/google/tts/TTSVersionAlert;)V
    .registers 7
    .parameter "context"
    .parameter "callback"
    .parameter "alert"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/google/tts/TTS;->cb:Lcom/google/tts/TTS$InitListener;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/tts/TTS;->version:I

    .line 77
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 78
    iput-boolean v2, p0, Lcom/google/tts/TTS;->showInstaller:Z

    .line 79
    iput-object v1, p0, Lcom/google/tts/TTS;->versionAlert:Lcom/google/tts/TTSVersionAlert;

    .line 82
    iput-object v1, p0, Lcom/google/tts/TTS;->speechCompletedCallback:Lcom/google/tts/TTS$SpeechCompletedListener;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tts/TTS;->showInstaller:Z

    .line 116
    iput-object p3, p0, Lcom/google/tts/TTS;->versionAlert:Lcom/google/tts/TTSVersionAlert;

    .line 117
    iput-object p1, p0, Lcom/google/tts/TTS;->ctx:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/google/tts/TTS;->cb:Lcom/google/tts/TTS$InitListener;

    .line 119
    invoke-direct {p0}, Lcom/google/tts/TTS;->dataFilesCheck()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 120
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    .line 122
    :cond_24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/tts/TTS$InitListener;Z)V
    .registers 7
    .parameter "context"
    .parameter "callback"
    .parameter "displayInstallMessage"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/google/tts/TTS;->cb:Lcom/google/tts/TTS$InitListener;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/tts/TTS;->version:I

    .line 77
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 78
    iput-boolean v2, p0, Lcom/google/tts/TTS;->showInstaller:Z

    .line 79
    iput-object v1, p0, Lcom/google/tts/TTS;->versionAlert:Lcom/google/tts/TTSVersionAlert;

    .line 82
    iput-object v1, p0, Lcom/google/tts/TTS;->speechCompletedCallback:Lcom/google/tts/TTS$SpeechCompletedListener;

    .line 98
    iput-boolean p3, p0, Lcom/google/tts/TTS;->showInstaller:Z

    .line 99
    iput-object p1, p0, Lcom/google/tts/TTS;->ctx:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/google/tts/TTS;->cb:Lcom/google/tts/TTS$InitListener;

    .line 101
    invoke-direct {p0}, Lcom/google/tts/TTS;->dataFilesCheck()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 102
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    .line 104
    :cond_21
    return-void
.end method

.method static synthetic access$0(Lcom/google/tts/TTS;Lcom/google/tts/ITTS;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;

    return-void
.end method

.method static synthetic access$1(Lcom/google/tts/TTS;)Lcom/google/tts/ITTS;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;

    return-object v0
.end method

.method static synthetic access$10(Lcom/google/tts/TTS;)V
    .registers 1
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    return-void
.end method

.method static synthetic access$11(Lcom/google/tts/TTS;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/google/tts/TTS;->started:Z

    return-void
.end method

.method static synthetic access$12(Lcom/google/tts/TTS;)Lcom/google/tts/TTS$InitListener;
    .registers 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/tts/TTS;->cb:Lcom/google/tts/TTS$InitListener;

    return-object v0
.end method

.method static synthetic access$13(Lcom/google/tts/TTS;Lcom/google/tts/TTS$InitListener;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/tts/TTS;->cb:Lcom/google/tts/TTS$InitListener;

    return-void
.end method

.method static synthetic access$2(Lcom/google/tts/TTS;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/google/tts/TTS;->version:I

    return-void
.end method

.method static synthetic access$3(Lcom/google/tts/TTS;)I
    .registers 2
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lcom/google/tts/TTS;->version:I

    return v0
.end method

.method static synthetic access$4(Lcom/google/tts/TTS;)Z
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/tts/TTS;->showInstaller:Z

    return v0
.end method

.method static synthetic access$5(Lcom/google/tts/TTS;)Lcom/google/tts/TTSVersionAlert;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/tts/TTS;->versionAlert:Lcom/google/tts/TTSVersionAlert;

    return-object v0
.end method

.method static synthetic access$6(Lcom/google/tts/TTS;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/tts/TTS;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/google/tts/TTS;)Lcom/google/tts/TTS$SpeechCompletedListener;
    .registers 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/tts/TTS;->speechCompletedCallback:Lcom/google/tts/TTS$SpeechCompletedListener;

    return-object v0
.end method

.method static synthetic access$8(Lcom/google/tts/TTS;Lcom/google/tts/ITTSCallback;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/tts/TTS;->ittscallback:Lcom/google/tts/ITTSCallback;

    return-void
.end method

.method static synthetic access$9(Lcom/google/tts/TTS;)Lcom/google/tts/ITTSCallback;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/tts/TTS;->ittscallback:Lcom/google/tts/ITTSCallback;

    return-object v0
.end method

.method private dataFilesCheck()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 129
    invoke-static {}, Lcom/google/tts/ConfigurationManager;->allFilesExist()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 135
    iget-boolean v6, p0, Lcom/google/tts/TTS;->showInstaller:Z

    if-nez v6, :cond_c

    .line 155
    :goto_b
    return v5

    .line 139
    :cond_c
    const/4 v2, 0x3

    .line 140
    .local v2, flags:I
    :try_start_d
    iget-object v6, p0, Lcom/google/tts/TTS;->ctx:Landroid/content/Context;

    const-string v7, "com.google.tts"

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 142
    .local v4, myContext:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "com.google.tts.ConfigurationManager"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 143
    .local v0, appClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v3, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/google/tts/TTS;->ctx:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_29} :catch_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_29} :catch_30

    goto :goto_b

    .line 146
    .end local v0           #appClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #myContext:Landroid/content/Context;
    :catch_2a
    move-exception v1

    .line 150
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 155
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2           #flags:I
    :cond_2e
    :goto_2e
    const/4 v5, 0x1

    goto :goto_b

    .line 151
    .restart local v2       #flags:I
    :catch_30
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2e
.end method

.method private initTts()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 159
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    .line 162
    new-instance v1, Lcom/google/tts/TTS$1;

    invoke-direct {v1, p0}, Lcom/google/tts/TTS$1;-><init>(Lcom/google/tts/TTS;)V

    iput-object v1, p0, Lcom/google/tts/TTS;->serviceConnection:Landroid/content/ServiceConnection;

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USE_TTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.TTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v1, p0, Lcom/google/tts/TTS;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/tts/TTS;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 229
    iget-boolean v1, p0, Lcom/google/tts/TTS;->showInstaller:Z

    if-eqz v1, :cond_2f

    .line 230
    iget-object v1, p0, Lcom/google/tts/TTS;->versionAlert:Lcom/google/tts/TTSVersionAlert;

    if-eqz v1, :cond_30

    .line 231
    iget-object v1, p0, Lcom/google/tts/TTS;->versionAlert:Lcom/google/tts/TTSVersionAlert;

    invoke-virtual {v1}, Lcom/google/tts/TTSVersionAlert;->show()Landroid/app/AlertDialog;

    .line 237
    :cond_2f
    :goto_2f
    return-void

    .line 233
    :cond_30
    new-instance v1, Lcom/google/tts/TTSVersionAlert;

    iget-object v2, p0, Lcom/google/tts/TTS;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2, v4, v4, v4}, Lcom/google/tts/TTSVersionAlert;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/tts/TTSVersionAlert;->show()Landroid/app/AlertDialog;

    goto :goto_2f
.end method

.method public static isInstalled(Landroid/content/Context;)Z
    .registers 6
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 606
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 607
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.USE_TTS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.TTS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 610
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_18

    .line 613
    :goto_17
    return v3

    :cond_18
    const/4 v3, 0x1

    goto :goto_17
.end method


# virtual methods
.method public addSpeech(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "text"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    if-nez v1, :cond_6

    .line 322
    :goto_5
    return-void

    .line 308
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;

    invoke-interface {v1, p1, p2}, Lcom/google/tts/ITTS;->addSpeechFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_b} :catch_1a

    goto :goto_5

    .line 309
    :catch_c
    move-exception v0

    .line 311
    .local v0, e:Landroid/os/RemoteException;
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 312
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5

    .line 313
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/NullPointerException;
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 316
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5

    .line 317
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1a
    move-exception v0

    .line 319
    .local v0, e:Ljava/lang/IllegalStateException;
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 320
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "text"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    if-nez v1, :cond_6

    .line 293
    :goto_5
    return-void

    .line 279
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/tts/ITTS;->addSpeech(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_b} :catch_1a

    goto :goto_5

    .line 280
    :catch_c
    move-exception v0

    .line 282
    .local v0, e:Landroid/os/RemoteException;
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 283
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5

    .line 284
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/NullPointerException;
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 287
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5

    .line 288
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1a
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/IllegalStateException;
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 291
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 463
    iget v0, p0, Lcom/google/tts/TTS;->version:I

    return v0
.end method

.method public isSpeaking()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 412
    iget-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    if-nez v2, :cond_6

    .line 430
    :goto_5
    return v1

    .line 416
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;

    invoke-interface {v2}, Lcom/google/tts/ITTS;->isSpeaking()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_b} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_b} :catch_1b

    move-result v1

    goto :goto_5

    .line 417
    :catch_d
    move-exception v0

    .line 419
    .local v0, e:Landroid/os/RemoteException;
    iput-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    .line 420
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5

    .line 421
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 423
    .local v0, e:Ljava/lang/NullPointerException;
    iput-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    .line 424
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5

    .line 425
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v0

    .line 427
    .local v0, e:Ljava/lang/IllegalStateException;
    iput-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    .line 428
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5
.end method

.method public playEarcon(Lcom/google/tts/TTSEarcon;I[Ljava/lang/String;)V
    .registers 5
    .parameter "earcon"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/google/tts/TTSEarcon;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/tts/TTS;->playEarcon(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public playEarcon(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 7
    .parameter "earcon"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 374
    iget-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    if-nez v1, :cond_6

    .line 392
    :goto_5
    return-void

    .line 378
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/tts/ITTS;->playEarcon(Ljava/lang/String;I[Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_b} :catch_1a

    goto :goto_5

    .line 379
    :catch_c
    move-exception v0

    .line 381
    .local v0, e:Landroid/os/RemoteException;
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 382
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5

    .line 383
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/NullPointerException;
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 386
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5

    .line 387
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1a
    move-exception v0

    .line 389
    .local v0, e:Ljava/lang/IllegalStateException;
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 390
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5
.end method

.method public setEngine(Lcom/google/tts/TTSEngine;)V
    .registers 5
    .parameter "selectedEngine"

    .prologue
    .line 472
    iget-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    if-nez v1, :cond_5

    .line 482
    :goto_4
    return-void

    .line 476
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;

    invoke-virtual {p1}, Lcom/google/tts/TTSEngine;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/tts/ITTS;->setEngine(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_4

    .line 477
    :catch_f
    move-exception v0

    .line 479
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    .line 480
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_4
.end method

.method public setEngine(Ljava/lang/String;)V
    .registers 4
    .parameter "ttsEngineBinary"

    .prologue
    .line 485
    iget-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    if-nez v1, :cond_5

    .line 495
    :goto_4
    return-void

    .line 489
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;

    invoke-interface {v1, p1}, Lcom/google/tts/ITTS;->setEngine(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 490
    :catch_b
    move-exception v0

    .line 492
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    .line 493
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_4
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 4
    .parameter "language"

    .prologue
    .line 540
    iget-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    if-nez v1, :cond_5

    .line 550
    :goto_4
    return-void

    .line 544
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;

    invoke-interface {v1, p1}, Lcom/google/tts/ITTS;->setLanguage(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 545
    :catch_b
    move-exception v0

    .line 547
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    .line 548
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_4
.end method

.method public setOnSpeechCompletedListener(Lcom/google/tts/TTS$SpeechCompletedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/tts/TTS;->speechCompletedCallback:Lcom/google/tts/TTS$SpeechCompletedListener;

    .line 126
    return-void
.end method

.method public setSpeechRate(I)V
    .registers 4
    .parameter "speechRate"

    .prologue
    .line 512
    iget-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    if-nez v1, :cond_5

    .line 522
    :goto_4
    return-void

    .line 516
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;

    invoke-interface {v1, p1}, Lcom/google/tts/ITTS;->setSpeechRate(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 517
    :catch_b
    move-exception v0

    .line 519
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    .line 520
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_4
.end method

.method public showVersionAlert()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 590
    iget-boolean v0, p0, Lcom/google/tts/TTS;->started:Z

    if-nez v0, :cond_6

    .line 598
    :goto_5
    return-void

    .line 593
    :cond_6
    iget-object v0, p0, Lcom/google/tts/TTS;->versionAlert:Lcom/google/tts/TTSVersionAlert;

    if-eqz v0, :cond_10

    .line 594
    iget-object v0, p0, Lcom/google/tts/TTS;->versionAlert:Lcom/google/tts/TTSVersionAlert;

    invoke-virtual {v0}, Lcom/google/tts/TTSVersionAlert;->show()Landroid/app/AlertDialog;

    goto :goto_5

    .line 596
    :cond_10
    new-instance v0, Lcom/google/tts/TTSVersionAlert;

    iget-object v1, p0, Lcom/google/tts/TTS;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/tts/TTSVersionAlert;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/tts/TTSVersionAlert;->show()Landroid/app/AlertDialog;

    goto :goto_5
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/google/tts/TTS;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/tts/TTS;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 251
    :goto_7
    return-void

    .line 247
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public speak(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 8
    .parameter "text"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 341
    const-string v1, "TTS received: "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    if-nez v1, :cond_b

    .line 363
    :goto_a
    return-void

    .line 346
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/tts/ITTS;->speak(Ljava/lang/String;I[Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_10} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_10} :catch_2d

    goto :goto_a

    .line 347
    :catch_11
    move-exception v0

    .line 348
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TTS"

    const-string v2, "RemoteException error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iput-boolean v3, p0, Lcom/google/tts/TTS;->started:Z

    .line 351
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_a

    .line 352
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1f
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "TTS"

    const-string v2, "NullPointerException error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iput-boolean v3, p0, Lcom/google/tts/TTS;->started:Z

    .line 356
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_a

    .line 357
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2d
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "TTS"

    const-string v2, "IllegalStateException error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iput-boolean v3, p0, Lcom/google/tts/TTS;->started:Z

    .line 361
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_a
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 437
    iget-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    if-nez v1, :cond_6

    .line 455
    :goto_5
    return-void

    .line 441
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;

    invoke-interface {v1}, Lcom/google/tts/ITTS;->stop()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_b} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_b} :catch_1a

    goto :goto_5

    .line 442
    :catch_c
    move-exception v0

    .line 444
    .local v0, e:Landroid/os/RemoteException;
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 445
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5

    .line 446
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 448
    .local v0, e:Ljava/lang/NullPointerException;
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 449
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5

    .line 450
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1a
    move-exception v0

    .line 452
    .local v0, e:Ljava/lang/IllegalStateException;
    iput-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    .line 453
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5
.end method

.method public synthesizeToFile(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "text"
    .parameter "params"
    .parameter "filename"

    .prologue
    const/4 v1, 0x0

    .line 563
    iget-boolean v2, p0, Lcom/google/tts/TTS;->started:Z

    if-nez v2, :cond_6

    .line 581
    :goto_5
    return v1

    .line 567
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/tts/ITTS;->synthesizeToFile(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_b} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_b} :catch_1b

    move-result v1

    goto :goto_5

    .line 568
    :catch_d
    move-exception v0

    .line 570
    .local v0, e:Landroid/os/RemoteException;
    iput-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    .line 571
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5

    .line 572
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 574
    .local v0, e:Ljava/lang/NullPointerException;
    iput-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    .line 575
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5

    .line 576
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v0

    .line 578
    .local v0, e:Ljava/lang/IllegalStateException;
    iput-boolean v1, p0, Lcom/google/tts/TTS;->started:Z

    .line 579
    invoke-direct {p0}, Lcom/google/tts/TTS;->initTts()V

    goto :goto_5
.end method
