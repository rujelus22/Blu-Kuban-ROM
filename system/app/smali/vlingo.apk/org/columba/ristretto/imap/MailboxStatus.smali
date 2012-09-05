.class public Lorg/columba/ristretto/imap/MailboxStatus;
.super Ljava/lang/Object;
.source "MailboxStatus.java"


# instance fields
.field private messages:I

.field private name:Ljava/lang/String;

.field private recent:I

.field private uidNext:J

.field private uidValidity:J

.field private unseen:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->recent:I

    iput v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->unseen:I

    iput v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->messages:I

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->uidNext:J

    iput-wide v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->uidValidity:J

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/message/MailboxInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Lorg/columba/ristretto/message/MailboxInfo;->getExists()I

    move-result v0

    iput v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->messages:I

    .line 69
    invoke-virtual {p1}, Lorg/columba/ristretto/message/MailboxInfo;->getRecent()I

    move-result v0

    iput v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->recent:I

    .line 70
    invoke-virtual {p1}, Lorg/columba/ristretto/message/MailboxInfo;->getUidNext()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->uidNext:J

    .line 71
    invoke-virtual {p1}, Lorg/columba/ristretto/message/MailboxInfo;->getUidValidity()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->uidValidity:J

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->unseen:I

    .line 75
    return-void
.end method


# virtual methods
.method public getMessages()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->messages:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecent()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->recent:I

    return v0
.end method

.method public getUidNext()J
    .registers 3

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->uidNext:J

    return-wide v0
.end method

.method public getUidValidity()J
    .registers 3

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->uidValidity:J

    return-wide v0
.end method

.method public getUnseen()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lorg/columba/ristretto/imap/MailboxStatus;->unseen:I

    return v0
.end method

.method public setMessages(I)V
    .registers 2
    .parameter "messages"

    .prologue
    .line 87
    iput p1, p0, Lorg/columba/ristretto/imap/MailboxStatus;->messages:I

    .line 88
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 99
    iput-object p1, p0, Lorg/columba/ristretto/imap/MailboxStatus;->name:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setRecent(I)V
    .registers 2
    .parameter "recent"

    .prologue
    .line 111
    iput p1, p0, Lorg/columba/ristretto/imap/MailboxStatus;->recent:I

    .line 112
    return-void
.end method

.method public setUidNext(J)V
    .registers 3
    .parameter "uidNext"

    .prologue
    .line 123
    iput-wide p1, p0, Lorg/columba/ristretto/imap/MailboxStatus;->uidNext:J

    .line 124
    return-void
.end method

.method public setUidValidity(J)V
    .registers 3
    .parameter "uidValidity"

    .prologue
    .line 135
    iput-wide p1, p0, Lorg/columba/ristretto/imap/MailboxStatus;->uidValidity:J

    .line 136
    return-void
.end method

.method public setUnseen(I)V
    .registers 2
    .parameter "unseen"

    .prologue
    .line 147
    iput p1, p0, Lorg/columba/ristretto/imap/MailboxStatus;->unseen:I

    .line 148
    return-void
.end method
