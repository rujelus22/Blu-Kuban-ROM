.class Lcom/android/email/MessagingController$SortableMessage;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortableMessage"
.end annotation


# instance fields
.field private final mMessage:Lcom/android/emailcommon/mail/Message;

.field private final mUid:J


# direct methods
.method constructor <init>(Lcom/android/emailcommon/mail/Message;J)V
    .registers 4
    .parameter "message"
    .parameter "uid"

    .prologue
    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-object p1, p0, Lcom/android/email/MessagingController$SortableMessage;->mMessage:Lcom/android/emailcommon/mail/Message;

    .line 600
    iput-wide p2, p0, Lcom/android/email/MessagingController$SortableMessage;->mUid:J

    .line 601
    return-void
.end method

.method static synthetic access$600(Lcom/android/email/MessagingController$SortableMessage;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 594
    iget-wide v0, p0, Lcom/android/email/MessagingController$SortableMessage;->mUid:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/email/MessagingController$SortableMessage;)Lcom/android/emailcommon/mail/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/email/MessagingController$SortableMessage;->mMessage:Lcom/android/emailcommon/mail/Message;

    return-object v0
.end method
