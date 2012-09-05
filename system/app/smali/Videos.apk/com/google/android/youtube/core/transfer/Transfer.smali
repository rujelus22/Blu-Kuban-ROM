.class public final Lcom/google/android/youtube/core/transfer/Transfer;
.super Ljava/lang/Object;
.source "Transfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/transfer/Transfer$Status;
    }
.end annotation


# instance fields
.field public final bytesTotal:J

.field public final bytesTransfered:J

.field public final filePath:Ljava/lang/String;

.field public final inputExtras:Landroid/os/Bundle;

.field public final networkUri:Ljava/lang/String;

.field public final outputExtras:Landroid/os/Bundle;

.field public final status:Lcom/google/android/youtube/core/transfer/Transfer$Status;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer$Status;JJLandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 11
    .parameter "filePath"
    .parameter "networkUri"
    .parameter "status"
    .parameter "bytesTransferred"
    .parameter "bytesTotal"
    .parameter "inputExtras"
    .parameter "outputExtras"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "filePath may not be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    .line 38
    const-string v0, "networkUri may not be empty"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->networkUri:Ljava/lang/String;

    .line 39
    const-string v0, "status may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 40
    iput-wide p4, p0, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTransfered:J

    .line 41
    iput-wide p6, p0, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTotal:J

    .line 42
    const-string v0, "inputExtras may not be null"

    invoke-static {p8, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->inputExtras:Landroid/os/Bundle;

    .line 43
    const-string v0, "outputExtras may not be null"

    invoke-static {p9, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->outputExtras:Landroid/os/Bundle;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 58
    if-eqz p1, :cond_6

    instance-of v1, p1, Lcom/google/android/youtube/core/transfer/Transfer;

    if-nez v1, :cond_8

    .line 59
    :cond_6
    const/4 v1, 0x0

    .line 62
    :goto_7
    return v1

    :cond_8
    move-object v0, p1

    .line 61
    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 62
    .local v0, other:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/Transfer;->networkUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
