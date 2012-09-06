.class public Lcom/google/android/apps/translate/MyTts;
.super Ljava/lang/Object;
.source "MyTts.java"

# interfaces
.implements Lcom/google/android/apps/translate/DonutTtsCallback;


# static fields
.field private static sHasDonutTts:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDonutCallback:Lcom/google/android/apps/translate/DonutTtsCallback;

.field private mDonutTts:Lcom/google/android/apps/translate/DonutTtsWrapper;

.field private mNetworkTts:Lcom/google/android/apps/translate/NetworkTts;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    :try_start_0
    invoke-static {}, Lcom/google/android/apps/translate/DonutTtsWrapper;->checkAvailable()V

    .line 28
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/translate/MyTts;->sHasDonutTts:Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    .line 32
    .local v0, t:Ljava/lang/Throwable;
    :goto_6
    return-void

    .line 29
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_7
    move-exception v0

    .line 30
    .restart local v0       #t:Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/google/android/apps/translate/MyTts;->sHasDonutTts:Z

    goto :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/apps/translate/MyTts;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/translate/MyTts;->init()V

    .line 40
    return-void
.end method

.method private isNativeTtsAvailable(Ljava/util/Locale;)Z
    .registers 3
    .parameter "locale"

    .prologue
    .line 108
    sget-boolean v0, Lcom/google/android/apps/translate/MyTts;->sHasDonutTts:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mDonutTts:Lcom/google/android/apps/translate/DonutTtsWrapper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/DonutTtsWrapper;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public init()V
    .registers 3

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/apps/translate/NetworkTts;

    invoke-direct {v0}, Lcom/google/android/apps/translate/NetworkTts;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mNetworkTts:Lcom/google/android/apps/translate/NetworkTts;

    .line 45
    sget-boolean v0, Lcom/google/android/apps/translate/MyTts;->sHasDonutTts:Z

    if-eqz v0, :cond_19

    .line 46
    const-string v0, "new Donut TTS"

    invoke-static {v0}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/google/android/apps/translate/DonutTtsWrapper;

    iget-object v1, p0, Lcom/google/android/apps/translate/MyTts;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/google/android/apps/translate/DonutTtsWrapper;-><init>(Landroid/content/Context;Lcom/google/android/apps/translate/DonutTtsCallback;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mDonutTts:Lcom/google/android/apps/translate/DonutTtsWrapper;

    .line 49
    :cond_19
    return-void
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)Z
    .registers 4
    .parameter "locale"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/translate/Profile;->getPreferNetworkTts(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mNetworkTts:Lcom/google/android/apps/translate/NetworkTts;

    invoke-static {p1}, Lcom/google/android/apps/translate/NetworkTts;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 99
    const/4 v0, 0x1

    .line 104
    :goto_11
    return v0

    .line 103
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is language available (Donut) for locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/MyTts;->isNativeTtsAvailable(Ljava/util/Locale;)Z

    move-result v0

    goto :goto_11
.end method

.method public onInit(Z)V
    .registers 3
    .parameter "succeed"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mDonutCallback:Lcom/google/android/apps/translate/DonutTtsCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mDonutCallback:Lcom/google/android/apps/translate/DonutTtsCallback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/translate/DonutTtsCallback;->onInit(Z)V

    .line 114
    :cond_9
    return-void
.end method

.method public prefetch(Ljava/util/Locale;Ljava/lang/String;)V
    .registers 5
    .parameter "locale"
    .parameter "text"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/translate/Profile;->getPreferNetworkTts(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mNetworkTts:Lcom/google/android/apps/translate/NetworkTts;

    iget-object v1, p0, Lcom/google/android/apps/translate/MyTts;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/apps/translate/NetworkTts;->prefetch(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    .line 92
    :cond_f
    return-void
.end method

.method public setCallback(Lcom/google/android/apps/translate/DonutTtsCallback;)V
    .registers 2
    .parameter "donutCallback"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/translate/MyTts;->mDonutCallback:Lcom/google/android/apps/translate/DonutTtsCallback;

    .line 65
    return-void
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 55
    sget-boolean v0, Lcom/google/android/apps/translate/MyTts;->sHasDonutTts:Z

    if-eqz v0, :cond_d

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mDonutTts:Lcom/google/android/apps/translate/DonutTtsWrapper;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mDonutTts:Lcom/google/android/apps/translate/DonutTtsWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/DonutTtsWrapper;->shutdown()V

    .line 58
    :cond_d
    return-void
.end method

.method public speak(Ljava/util/Locale;Ljava/lang/String;Lcom/google/android/apps/translate/NetworkTts$Callback;)V
    .registers 6
    .parameter "locale"
    .parameter "text"
    .parameter "c"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/translate/Profile;->getPreferNetworkTts(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mNetworkTts:Lcom/google/android/apps/translate/NetworkTts;

    invoke-static {p1}, Lcom/google/android/apps/translate/NetworkTts;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mDonutTts:Lcom/google/android/apps/translate/DonutTtsWrapper;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mDonutTts:Lcom/google/android/apps/translate/DonutTtsWrapper;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/DonutTtsWrapper;->stop()V

    .line 73
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mNetworkTts:Lcom/google/android/apps/translate/NetworkTts;

    iget-object v1, p0, Lcom/google/android/apps/translate/MyTts;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/apps/translate/NetworkTts;->speak(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;Lcom/google/android/apps/translate/NetworkTts$Callback;)V

    .line 82
    :cond_20
    :goto_20
    return-void

    .line 78
    :cond_21
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/MyTts;->isNativeTtsAvailable(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mNetworkTts:Lcom/google/android/apps/translate/NetworkTts;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/NetworkTts;->stop()V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/translate/MyTts;->mDonutTts:Lcom/google/android/apps/translate/DonutTtsWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/apps/translate/DonutTtsWrapper;->speak(Ljava/util/Locale;Ljava/lang/String;I)V

    goto :goto_20
.end method
