.class public final Lcom/google/android/youtube/core/transfer/Transfer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:Lcom/google/android/youtube/core/transfer/d;

.field public final h:Lcom/google/android/youtube/core/transfer/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer$Status;IJJLcom/google/android/youtube/core/transfer/d;Lcom/google/android/youtube/core/transfer/d;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "filePath may not be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    .line 53
    const-string v0, "networkUri may not be empty"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->b:Ljava/lang/String;

    .line 54
    const-string v0, "status may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 55
    iput p4, p0, Lcom/google/android/youtube/core/transfer/Transfer;->d:I

    .line 56
    iput-wide p5, p0, Lcom/google/android/youtube/core/transfer/Transfer;->e:J

    .line 57
    iput-wide p7, p0, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    .line 58
    const-string v0, "inputExtras may not be null"

    invoke-static {p9, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    .line 59
    const-string v0, "outputExtras may not be null"

    invoke-static {p10, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->h:Lcom/google/android/youtube/core/transfer/d;

    .line 60
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 73
    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/google/android/youtube/core/transfer/Transfer;

    if-nez v0, :cond_8

    .line 74
    :cond_6
    const/4 v0, 0x0

    .line 77
    :goto_7
    return v0

    .line 76
    :cond_8
    check-cast p1, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{filePath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/Transfer;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
