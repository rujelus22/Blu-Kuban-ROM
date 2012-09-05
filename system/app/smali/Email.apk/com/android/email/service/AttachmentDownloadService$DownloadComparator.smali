.class Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 246
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)I
    .registers 9
    .parameter "req1"
    .parameter "req2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 250
    iget v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    iget v3, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    if-eq v2, v3, :cond_11

    .line 251
    iget v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    iget v3, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    if-ge v2, v3, :cond_f

    .line 259
    .local v0, res:I
    :goto_e
    return v0

    .end local v0           #res:I
    :cond_f
    move v0, v1

    .line 251
    goto :goto_e

    .line 253
    :cond_11
    iget-wide v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    iget-wide v4, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    .line 254
    const/4 v0, 0x0

    .restart local v0       #res:I
    goto :goto_e

    .line 256
    .end local v0           #res:I
    :cond_1b
    iget-wide v2, p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    iget-wide v4, p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_24

    .restart local v0       #res:I
    :goto_23
    goto :goto_e

    .end local v0           #res:I
    :cond_24
    move v0, v1

    goto :goto_23
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    check-cast p1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .end local p1
    check-cast p2, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;->compare(Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;)I

    move-result v0

    return v0
.end method
