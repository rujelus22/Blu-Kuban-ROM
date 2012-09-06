.class public final Lcom/google/android/youtube/core/model/Event$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/i;
.implements Ljava/io/Serializable;


# instance fields
.field private action:Lcom/google/android/youtube/core/model/Event$Action;

.field private displayUsername:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private subjectUri:Landroid/net/Uri;

.field private target:Ljava/lang/String;

.field private targetVideo:Lcom/google/android/youtube/core/model/Video;

.field private when:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subject:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subjectUri:Landroid/net/Uri;

    .line 233
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event$Action;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->action:Lcom/google/android/youtube/core/model/Event$Action;

    .line 234
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->target:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    .line 236
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->displayUsername:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->when:Ljava/util/Date;

    .line 238
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->groupId:Ljava/lang/String;

    .line 239
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Event$Builder;->build()Lcom/google/android/youtube/core/model/Event;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subjectUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->action:Lcom/google/android/youtube/core/model/Event$Action;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->target:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->displayUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->when:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 228
    return-void
.end method


# virtual methods
.method public final action(Lcom/google/android/youtube/core/model/Event$Action;)Lcom/google/android/youtube/core/model/Event$Builder;
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->action:Lcom/google/android/youtube/core/model/Event$Action;

    .line 175
    return-object p0
.end method

.method public final build()Lcom/google/android/youtube/core/model/Event;
    .registers 10

    .prologue
    .line 204
    new-instance v0, Lcom/google/android/youtube/core/model/Event;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subject:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subjectUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Event$Builder;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Event$Builder;->target:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Event$Builder;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Event$Builder;->displayUsername:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/Event$Builder;->when:Ljava/util/Date;

    iget-object v8, p0, Lcom/google/android/youtube/core/model/Event$Builder;->groupId:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/core/model/Event;-><init>(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/Event$Action;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Event$Builder;->build()Lcom/google/android/youtube/core/model/Event;

    move-result-object v0

    return-object v0
.end method

.method public final displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->displayUsername:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public final groupId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->groupId:Ljava/lang/String;

    .line 200
    return-object p0
.end method

.method public final subject(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subject:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public final subjectUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Event$Builder;
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subjectUri:Landroid/net/Uri;

    .line 170
    return-object p0
.end method

.method public final target(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->target:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public final targetVideo(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Event$Builder;
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    .line 185
    return-object p0
.end method

.method public final when(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Event$Builder;
    .registers 2
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->when:Ljava/util/Date;

    .line 195
    return-object p0
.end method
