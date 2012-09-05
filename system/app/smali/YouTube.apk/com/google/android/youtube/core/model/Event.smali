.class public final Lcom/google/android/youtube/core/model/Event;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final action:Lcom/google/android/youtube/core/model/Event$Action;

.field public final displayUsername:Ljava/lang/String;

.field public final subject:Ljava/lang/String;

.field public final target:Ljava/lang/String;

.field public final when:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Event$Action;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event;->subject:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    .line 74
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Event;->when:Ljava/util/Date;

    .line 76
    if-eqz p2, :cond_1a

    iget-boolean v0, p2, Lcom/google/android/youtube/core/model/Event$Action;->targetsVideo:Z

    if-nez v0, :cond_1a

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 78
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Event;->displayUsername:Ljava/lang/String;

    .line 82
    :goto_19
    return-void

    .line 80
    :cond_1a
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Event;->displayUsername:Ljava/lang/String;

    goto :goto_19
.end method


# virtual methods
.method public final targetIsChannel()Z
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Event$Action;->targetsVideo:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final targetIsVideo()Z
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Event$Action;->targetsVideo:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Event$Action;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    const-string v0, ""

    goto :goto_1b
.end method
