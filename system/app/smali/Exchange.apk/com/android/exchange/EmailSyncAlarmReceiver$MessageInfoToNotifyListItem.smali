.class Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;
.super Ljava/lang/Object;
.source "EmailSyncAlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/EmailSyncAlarmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageInfoToNotifyListItem"
.end annotation


# instance fields
.field public mailboxId:J

.field public messageId:J

.field final synthetic this$0:Lcom/android/exchange/EmailSyncAlarmReceiver;


# direct methods
.method constructor <init>(Lcom/android/exchange/EmailSyncAlarmReceiver;JJ)V
    .registers 8
    .parameter
    .parameter "boxId"
    .parameter "msgId"

    .prologue
    const-wide/16 v0, -0x1

    .line 69
    iput-object p1, p0, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;->this$0:Lcom/android/exchange/EmailSyncAlarmReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide v0, p0, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;->mailboxId:J

    .line 67
    iput-wide v0, p0, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;->messageId:J

    .line 70
    iput-wide p2, p0, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;->mailboxId:J

    .line 71
    iput-wide p4, p0, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;->messageId:J

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 76
    instance-of v0, p1, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;

    if-eqz v0, :cond_1d

    move-object v0, p1

    .line 77
    check-cast v0, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;

    iget-wide v0, v0, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;->mailboxId:J

    iget-wide v2, p0, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;->mailboxId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    check-cast p1, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;

    .end local p1
    iget-wide v0, p1, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;->messageId:J

    iget-wide v2, p0, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;->messageId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 79
    const/4 v0, 0x1

    .line 84
    :goto_1a
    return v0

    .line 81
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a

    .line 84
    .restart local p1
    :cond_1d
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1a
.end method
