.class Lcom/android/email/MessagingController$CommandInfo;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandInfo"
.end annotation


# instance fields
.field mAccountId:J

.field mAttachmentId:J


# direct methods
.method constructor <init>(JJ)V
    .registers 5
    .parameter "accountId"
    .parameter "attachmentId"

    .prologue
    .line 6424
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6425
    iput-wide p1, p0, Lcom/android/email/MessagingController$CommandInfo;->mAccountId:J

    .line 6426
    iput-wide p3, p0, Lcom/android/email/MessagingController$CommandInfo;->mAttachmentId:J

    .line 6427
    return-void
.end method
