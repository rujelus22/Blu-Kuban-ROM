.class public Lcom/google/tts/MakeBagel;
.super Landroid/app/Activity;
.source "MakeBagel.java"


# instance fields
.field completionListener:Lcom/google/tts/TTS$SpeechCompletedListener;

.field private langRegionString:Ljava/lang/String;

.field private mTts:Lcom/google/tts/TTS;

.field private message:Ljava/lang/String;

.field private self:Lcom/google/tts/MakeBagel;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    new-instance v0, Lcom/google/tts/MakeBagel$1;

    invoke-direct {v0, p0}, Lcom/google/tts/MakeBagel$1;-><init>(Lcom/google/tts/MakeBagel;)V

    iput-object v0, p0, Lcom/google/tts/MakeBagel;->completionListener:Lcom/google/tts/TTS$SpeechCompletedListener;

    .line 12
    return-void
.end method

.method static synthetic access$0(Lcom/google/tts/MakeBagel;)Lcom/google/tts/TTS;
    .registers 2
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/tts/MakeBagel;->mTts:Lcom/google/tts/TTS;

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/tts/MakeBagel;)Lcom/google/tts/MakeBagel;
    .registers 2
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/tts/MakeBagel;->self:Lcom/google/tts/MakeBagel;

    return-object v0
.end method

.method static synthetic access$2(Lcom/google/tts/MakeBagel;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/tts/MakeBagel;->langRegionString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/google/tts/MakeBagel;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/tts/MakeBagel;->message:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onDestroy()V
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 61
    iget-object v0, p0, Lcom/google/tts/MakeBagel;->mTts:Lcom/google/tts/TTS;

    if-eqz v0, :cond_c

    .line 62
    iget-object v0, p0, Lcom/google/tts/MakeBagel;->mTts:Lcom/google/tts/TTS;

    invoke-virtual {v0}, Lcom/google/tts/TTS;->shutdown()V

    .line 64
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    .line 28
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 29
    iput-object p0, p0, Lcom/google/tts/MakeBagel;->self:Lcom/google/tts/MakeBagel;

    .line 30
    iget-object v4, p0, Lcom/google/tts/MakeBagel;->self:Lcom/google/tts/MakeBagel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/tts/MakeBagel;->setResult(I)V

    .line 31
    invoke-virtual {p0}, Lcom/google/tts/MakeBagel;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/tts/MakeBagel;->message:Ljava/lang/String;

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tts/MakeBagel;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "language"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, language:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tts/MakeBagel;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "country"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, country:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tts/MakeBagel;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "variant"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, variant:Ljava/lang/String;
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .local v2, loc:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v4, ""

    iput-object v4, p0, Lcom/google/tts/MakeBagel;->langRegionString:Ljava/lang/String;

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_93

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_a1

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/tts/MakeBagel;->langRegionString:Ljava/lang/String;

    .line 47
    :cond_93
    :goto_93
    new-instance v4, Lcom/google/tts/TTS;

    new-instance v5, Lcom/google/tts/MakeBagel$2;

    invoke-direct {v5, p0}, Lcom/google/tts/MakeBagel$2;-><init>(Lcom/google/tts/MakeBagel;)V

    .line 55
    const/4 v6, 0x1

    invoke-direct {v4, p0, v5, v6}, Lcom/google/tts/TTS;-><init>(Landroid/content/Context;Lcom/google/tts/TTS$InitListener;Z)V

    .line 47
    iput-object v4, p0, Lcom/google/tts/MakeBagel;->mTts:Lcom/google/tts/TTS;

    .line 56
    return-void

    .line 43
    :cond_a1
    iput-object v1, p0, Lcom/google/tts/MakeBagel;->langRegionString:Ljava/lang/String;

    goto :goto_93
.end method
