.class public final Lcom/google/android/youtube/core/Analytics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/b/b;

.field private final b:Lcom/google/android/youtube/core/utils/k;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/b/b;Lcom/google/android/youtube/core/utils/k;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "analyticsClient cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/b;

    iput-object v0, p0, Lcom/google/android/youtube/core/Analytics;->a:Lcom/google/android/youtube/core/b/b;

    .line 48
    const-string v0, "networkStatus cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/Analytics;->b:Lcom/google/android/youtube/core/utils/k;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/Analytics;->a:Lcom/google/android/youtube/core/b/b;

    invoke-interface {v0, v1, p2, p3, v1}, Lcom/google/android/youtube/core/b/b;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 81
    const-string v0, "PlaySelected"

    invoke-virtual {p1}, Lcom/google/android/youtube/core/Analytics$VideoCategory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/Analytics;->a:Lcom/google/android/youtube/core/b/b;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/b/b;->a(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V

    .line 78
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;ZI)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    if-nez p2, :cond_3a

    const-string v0, "?"

    .line 69
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/Analytics;->b:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v1}, Lcom/google/android/youtube/core/utils/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz p3, :cond_36

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",offline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_36
    invoke-virtual {p0, p1, v0, p4}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    return-void

    .line 68
    :cond_3a
    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/Stream$Quality;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/Analytics;->a:Lcom/google/android/youtube/core/b/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/youtube/core/b/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    return-void
.end method
