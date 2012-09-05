.class public final Lcom/google/android/youtube/core/model/LiveEvent;
.super Ljava/lang/Object;
.source "LiveEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/LiveEvent$1;,
        Lcom/google/android/youtube/core/model/LiveEvent$Builder;,
        Lcom/google/android/youtube/core/model/LiveEvent$Status;
    }
.end annotation


# instance fields
.field public final end:Ljava/util/Date;

.field public final selfUri:Landroid/net/Uri;

.field public final start:Ljava/util/Date;

.field public final status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

.field public final video:Lcom/google/android/youtube/core/model/Video;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcom/google/android/youtube/core/model/LiveEvent$Status;Landroid/net/Uri;Lcom/google/android/youtube/core/model/Video;)V
    .registers 7
    .parameter "start"
    .parameter "end"
    .parameter "status"
    .parameter "selfUri"
    .parameter "video"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "start time can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->start:Ljava/util/Date;

    .line 41
    iput-object p2, p0, Lcom/google/android/youtube/core/model/LiveEvent;->end:Ljava/util/Date;

    .line 42
    iput-object p3, p0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    .line 43
    const-string v0, "selfUri can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    .line 44
    const-string v0, "video can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    .line 45
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/LiveEvent;->buildUpon()Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/LiveEvent$Builder;
    .registers 3

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->start:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->start(Ljava/util/Date;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->end:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->end(Ljava/util/Date;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->status(Lcom/google/android/youtube/core/model/LiveEvent$Status;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->selfUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->video(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 49
    instance-of v1, p1, Lcom/google/android/youtube/core/model/LiveEvent;

    if-nez v1, :cond_6

    .line 50
    const/4 v1, 0x0

    .line 53
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 52
    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    .line 53
    .local v0, other:Lcom/google/android/youtube/core/model/LiveEvent;
    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPlayable()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    sget-object v2, Lcom/google/android/youtube/core/model/LiveEvent$1;->$SwitchMap$com$google$android$youtube$core$model$LiveEvent$Status:[I

    iget-object v3, p0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1a

    move v0, v1

    .line 76
    :cond_10
    :goto_10
    :pswitch_10
    return v0

    .line 74
    :pswitch_11
    iget-object v2, p0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget v2, v2, Lcom/google/android/youtube/core/model/Video;->duration:I

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10

    .line 68
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public isUpcoming()Z
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->PENDING:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->DELAYED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Live Event [id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', status: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', start: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent;->start:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
