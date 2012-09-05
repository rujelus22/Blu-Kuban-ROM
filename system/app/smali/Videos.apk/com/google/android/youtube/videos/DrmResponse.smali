.class public Lcom/google/android/youtube/videos/DrmResponse;
.super Ljava/lang/Object;
.source "DrmResponse.java"


# instance fields
.field public final allowsOffline:Z

.field public final allowsStreaming:Z

.field public final ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

.field public final remainingSeconds:I

.field public final secondsSinceActivation:I


# direct methods
.method public constructor <init>(ZZIILcom/google/android/youtube/videos/DrmManager$Identifiers;)V
    .registers 6
    .parameter "allowsStreaming"
    .parameter "allowsOffline"
    .parameter "remainingSeconds"
    .parameter "secondsSinceActivation"
    .parameter "ids"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/DrmResponse;->allowsStreaming:Z

    .line 21
    iput-boolean p2, p0, Lcom/google/android/youtube/videos/DrmResponse;->allowsOffline:Z

    .line 22
    iput p3, p0, Lcom/google/android/youtube/videos/DrmResponse;->remainingSeconds:I

    .line 23
    iput p4, p0, Lcom/google/android/youtube/videos/DrmResponse;->secondsSinceActivation:I

    .line 24
    iput-object p5, p0, Lcom/google/android/youtube/videos/DrmResponse;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    .line 25
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[st="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/videos/DrmResponse;->allowsStreaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/videos/DrmResponse;->allowsOffline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "remaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/videos/DrmResponse;->remainingSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "activated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/videos/DrmResponse;->secondsSinceActivation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
