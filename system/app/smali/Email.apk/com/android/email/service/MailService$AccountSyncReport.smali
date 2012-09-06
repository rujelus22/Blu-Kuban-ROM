.class Lcom/android/email/service/MailService$AccountSyncReport;
.super Ljava/lang/Object;
.source "MailService.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountSyncReport"
.end annotation


# instance fields
.field accountId:J

.field nextSyncTime:J

.field prevSyncTime:J

.field syncEnabled:Z

.field syncInterval:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/service/MailService$AccountSyncReport;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/email/service/MailService$AccountSyncReport;->setNextSyncTime()V

    return-void
.end method

.method private setNextSyncTime()V
    .registers 5

    .prologue
    .line 451
    iget v0, p0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v0, :cond_18

    iget-wide v0, p0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 452
    iget-wide v0, p0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v2, p0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 454
    :cond_18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prevSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nextSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
