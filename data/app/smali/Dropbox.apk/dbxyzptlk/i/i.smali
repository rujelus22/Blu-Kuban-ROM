.class public final Ldbxyzptlk/i/i;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field a:Lcom/dropbox/android/util/Z;

.field b:J


# direct methods
.method public constructor <init>(J)V
    .registers 5
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldbxyzptlk/i/i;->b:J

    .line 53
    iput-wide p1, p0, Ldbxyzptlk/i/i;->b:J

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/android/util/Z;)V
    .registers 4
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldbxyzptlk/i/i;->b:J

    .line 49
    iput-object p1, p0, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    .line 50
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 58
    instance-of v1, p1, Ldbxyzptlk/i/i;

    if-nez v1, :cond_6

    .line 69
    :cond_5
    :goto_5
    return v0

    .line 62
    :cond_6
    check-cast p1, Ldbxyzptlk/i/i;

    .line 64
    iget-object v1, p0, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    if-nez v1, :cond_1a

    iget-object v1, p1, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    if-nez v1, :cond_1a

    .line 65
    iget-wide v1, p0, Ldbxyzptlk/i/i;->b:J

    iget-wide v3, p1, Ldbxyzptlk/i/i;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    .line 66
    :cond_1a
    iget-object v1, p0, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    if-eqz v1, :cond_5

    iget-object v1, p1, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    if-eqz v1, :cond_5

    .line 67
    iget-object v0, p0, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    iget-object v1, p1, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/Z;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    if-eqz v0, :cond_b

    .line 76
    iget-object v0, p0, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->hashCode()I

    move-result v0

    .line 78
    :goto_a
    return v0

    :cond_b
    iget-wide v0, p0, Ldbxyzptlk/i/i;->b:J

    long-to-int v0, v0

    goto :goto_a
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ldbxyzptlk/i/i;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_39
    iget-object v0, p0, Ldbxyzptlk/i/i;->a:Lcom/dropbox/android/util/Z;

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method
