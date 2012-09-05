.class public final Lcom/google/android/youtube/core/model/SubtitleTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final languageCode:Ljava/lang/String;

.field public final languageName:Ljava/lang/String;

.field public final sourceLanguageCode:Ljava/lang/String;

.field public final trackName:Ljava/lang/String;

.field public final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iget-object v0, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageName:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    .line 66
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    .line 47
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageName:Ljava/lang/String;

    .line 48
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    .line 55
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageName:Ljava/lang/String;

    .line 57
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    .line 58
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 88
    instance-of v1, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    if-nez v1, :cond_6

    .line 92
    :cond_5
    :goto_5
    return v0

    .line 91
    :cond_6
    check-cast p1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .line 92
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    if-nez v1, :cond_2e

    iget-object v1, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    if-eqz v1, :cond_38

    :cond_2e
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_38
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 107
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->videoId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_27
    return v0
.end method

.method public final isAutoTranslated()Z
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->sourceLanguageCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 78
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/model/SubtitleTrack;->trackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/SubtitleTrack;->isAutoTranslated()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 81
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
