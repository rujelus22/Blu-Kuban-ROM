.class public final Lcom/google/android/youtube/core/model/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lcom/google/android/youtube/core/model/Stream;

.field public final c:Lcom/google/android/youtube/core/model/Stream;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/model/Stream;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p1}, Lcom/google/android/youtube/core/model/t;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_1d

    .line 21
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/t;->c:Lcom/google/android/youtube/core/model/Stream;

    .line 22
    iput-object p2, p0, Lcom/google/android/youtube/core/model/t;->b:Lcom/google/android/youtube/core/model/Stream;

    .line 27
    :goto_f
    iget-object v0, p0, Lcom/google/android/youtube/core/model/t;->b:Lcom/google/android/youtube/core/model/Stream;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/t;->c:Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-eq v0, v1, :cond_26

    const/4 v0, 0x1

    :goto_1a
    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/t;->a:Z

    .line 28
    return-void

    .line 24
    :cond_1d
    iput-object p1, p0, Lcom/google/android/youtube/core/model/t;->b:Lcom/google/android/youtube/core/model/Stream;

    .line 25
    if-eqz p2, :cond_24

    :goto_21
    iput-object p2, p0, Lcom/google/android/youtube/core/model/t;->c:Lcom/google/android/youtube/core/model/Stream;

    goto :goto_f

    :cond_24
    move-object p2, p1

    goto :goto_21

    .line 27
    :cond_26
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hi="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/t;->b:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/t;->c:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsQualityToggle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/t;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
