.class public final Lcom/google/android/youtube/core/Analytics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/client/c;

.field private final b:Lcom/google/android/youtube/core/utils/i;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/client/c;Lcom/google/android/youtube/core/utils/i;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "analyticsClient cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/c;

    iput-object v0, p0, Lcom/google/android/youtube/core/Analytics;->a:Lcom/google/android/youtube/core/client/c;

    .line 45
    const-string v0, "networkStatus cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/i;

    iput-object v0, p0, Lcom/google/android/youtube/core/Analytics;->b:Lcom/google/android/youtube/core/utils/i;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 79
    const-string v0, "PlaySelected"

    invoke-virtual {p1}, Lcom/google/android/youtube/core/Analytics$VideoCategory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/Analytics;->a:Lcom/google/android/youtube/core/client/c;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/client/c;->a(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    if-nez p2, :cond_3a

    const-string v0, "?"

    .line 67
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/Analytics;->b:Lcom/google/android/youtube/core/utils/i;

    invoke-interface {v1}, Lcom/google/android/youtube/core/utils/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    if-eqz p3, :cond_36

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",offline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_36
    invoke-virtual {p0, p1, v0, p4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    return-void

    .line 66
    :cond_3a
    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/Stream$Quality;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V

    .line 76
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/core/Analytics;->a:Lcom/google/android/youtube/core/client/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/youtube/core/client/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    return-void
.end method
