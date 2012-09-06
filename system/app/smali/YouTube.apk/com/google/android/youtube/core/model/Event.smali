.class public final Lcom/google/android/youtube/core/model/Event;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final action:Lcom/google/android/youtube/core/model/Event$Action;

.field public final displayUsername:Ljava/lang/String;

.field public final groupId:Ljava/lang/String;

.field public final subject:Ljava/lang/String;

.field public final subjectUri:Landroid/net/Uri;

.field public final target:Ljava/lang/String;

.field public targetVideo:Lcom/google/android/youtube/core/model/Video;

.field public final when:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/Event$Action;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event;->subject:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Event;->subjectUri:Landroid/net/Uri;

    .line 103
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    .line 104
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    .line 105
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    .line 106
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Event;->when:Ljava/util/Date;

    .line 107
    if-eqz p3, :cond_20

    iget-boolean v0, p3, Lcom/google/android/youtube/core/model/Event$Action;->targetsVideo:Z

    if-nez v0, :cond_20

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 109
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Event;->displayUsername:Ljava/lang/String;

    .line 113
    :goto_1d
    iput-object p8, p0, Lcom/google/android/youtube/core/model/Event;->groupId:Ljava/lang/String;

    .line 114
    return-void

    .line 111
    :cond_20
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Event;->displayUsername:Ljava/lang/String;

    goto :goto_1d
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 137
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Event;->buildUpon()Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Event$Builder;
    .registers 3

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Event$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->subject(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->subjectUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->subjectUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->action(Lcom/google/android/youtube/core/model/Event$Action;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->target(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->targetVideo(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->displayUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->when:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->when(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->groupId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final targetIsChannel()Z
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Event$Action;->targetsVideo:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final targetIsVideo()Z
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Event$Action;->targetsVideo:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
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
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->f(Ljava/lang/String;)Ljava/lang/String;

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
