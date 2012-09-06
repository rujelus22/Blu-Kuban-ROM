.class public Lcom/android/email/mail/transport/StatusOutputStream;
.super Ljava/io/FilterOutputStream;
.source "StatusOutputStream.java"


# instance fields
.field private mCount:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/mail/transport/StatusOutputStream;->mCount:J

    .line 32
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 6
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 37
    iget-wide v0, p0, Lcom/android/email/mail/transport/StatusOutputStream;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/email/mail/transport/StatusOutputStream;->mCount:J

    .line 38
    sget-boolean v0, Lcom/android/emailcommon/Logging;->LOGD:Z

    if-eqz v0, :cond_33

    .line 39
    iget-wide v0, p0, Lcom/android/email/mail/transport/StatusOutputStream;->mCount:J

    const-wide/16 v2, 0x400

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_33

    .line 40
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/mail/transport/StatusOutputStream;->mCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_33
    return-void
.end method
