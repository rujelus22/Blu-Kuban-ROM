.class public final Lcom/google/android/youtube/app/ui/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/o;


# instance fields
.field private final a:Lcom/google/android/youtube/app/ui/az;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/android/youtube/app/ui/az;

    invoke-direct {v0}, Lcom/google/android/youtube/app/ui/az;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/av;->a:Lcom/google/android/youtube/app/ui/az;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/av;->b:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/av;->c:Ljava/util/Set;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Event;)Z
    .registers 4
    .parameter

    .prologue
    .line 33
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Event;->targetIsVideo()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/av;->a:Lcom/google/android/youtube/app/ui/az;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/az;->a(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->groupId:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/av;->b:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Event;->groupId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_22
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/av;->c:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 38
    :cond_2e
    const/4 v0, 0x0

    .line 42
    :goto_2f
    return v0

    .line 40
    :cond_30
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/av;->b:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Event;->groupId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/av;->c:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    const/4 v0, 0x1

    goto :goto_2f
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/youtube/core/model/Event;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/av;->a(Lcom/google/android/youtube/core/model/Event;)Z

    move-result v0

    return v0
.end method
