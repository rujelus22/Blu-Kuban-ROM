.class public Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
.super Ljava/lang/Object;
.source "VoicePrePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;
    }
.end annotation


# static fields
.field public static STATE_INIT:I

.field public static STATE_NULL:I

.field public static STATE_PLAY:I

.field public static STATE_STOP:I

.field private static mContext:Landroid/content/Context;

.field private static player:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;


# instance fields
.field private final DEBUG:Z

.field private mCount:I

.field private mHandler:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;

.field private mIsVoiceComplete:Z

.field private mSoundPlayer:Landroid/media/MediaPlayer;

.field private mSoundUri:Landroid/net/Uri;

.field private mState:I

.field private mVoiceCount:I

.field private mVoicePlayer:Landroid/speech/tts/TextToSpeech;

.field private mVoiceString:Ljava/lang/String;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_NULL:I

    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_INIT:I

    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_PLAY:I

    .line 29
    const/16 v0, 0x10

    sput v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_STOP:I

    .line 36
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->player:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->DEBUG:Z

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->map:Ljava/util/HashMap;

    .line 35
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->timer:Landroid/os/CountDownTimer;

    .line 45
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;-><init>(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mHandler:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;

    .line 53
    sget v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_NULL:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I

    .line 54
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 55
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoiceCount:I

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoiceString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mHandler:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mCount:I

    return p1
.end method

.method static synthetic access$408(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoiceCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoiceCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/os/CountDownTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->timer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mIsVoiceComplete:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mIsVoiceComplete:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/speech/tts/TextToSpeech;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    .registers 2
    .parameter "ct"

    .prologue
    .line 60
    sput-object p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mContext:Landroid/content/Context;

    .line 62
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->player:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    return-object v0
.end method


# virtual methods
.method public getState()I
    .registers 2

    .prologue
    .line 281
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I

    return v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter "SoundUri"
    .parameter "VoiceString"
    .parameter "isVoice"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->DEBUG:Z

    if-eqz v0, :cond_40

    .line 67
    const-string v0, "VoicePrePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..init..  SoundUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  VoiceString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  isVoice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_40
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I

    sget v1, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_NULL:I

    if-eq v0, v1, :cond_4c

    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I

    sget v1, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_STOP:I

    if-ne v0, v1, :cond_bc

    .line 73
    :cond_4c
    if-eqz p3, :cond_68

    .line 74
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoiceCount:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mIsVoiceComplete:Z

    .line 76
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoiceString:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_68

    .line 81
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    .line 95
    :cond_68
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 108
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundUri:Landroid/net/Uri;

    .line 113
    :goto_93
    :try_start_93
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a7} :catch_c4

    .line 122
    :cond_a7
    :goto_a7
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->timer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_b8

    .line 123
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;JJ)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->timer:Landroid/os/CountDownTimer;

    .line 212
    :cond_b8
    sget v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_INIT:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I

    .line 214
    :cond_bc
    return-void

    .line 110
    :cond_bd
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundUri:Landroid/net/Uri;

    goto :goto_93

    .line 116
    :catch_c4
    move-exception v6

    .line 117
    .local v6, e:Ljava/lang/Exception;
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->DEBUG:Z

    if-eqz v0, :cond_a7

    .line 118
    const-string v0, "VoicePrePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to play track"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7
.end method

.method public play()V
    .registers 4

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 235
    const-string v0, "VoicePrePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..play..  mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1e
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I

    sget v1, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_INIT:I

    if-eq v0, v1, :cond_25

    .line 249
    :goto_24
    return-void

    .line 240
    :cond_25
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2e

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 243
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_45

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 248
    :cond_45
    sget v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_PLAY:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I

    goto :goto_24
.end method

.method public stop()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 252
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 253
    const-string v0, "VoicePrePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..stop..  mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_20
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I

    sget v1, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_NULL:I

    if-eq v0, v1, :cond_5c

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_40

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 265
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 268
    :cond_40
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_50

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 271
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    .line 274
    :cond_50
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mCount:I

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 276
    sget v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_STOP:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I

    .line 278
    :cond_5c
    return-void
.end method
