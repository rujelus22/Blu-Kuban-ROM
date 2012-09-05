.class public Lcom/android/email/mail/store/imap/ImapMemoryLiteral;
.super Lcom/android/email/mail/store/imap/ImapString;
.source "ImapMemoryLiteral.java"


# instance fields
.field private mData:[B


# direct methods
.method constructor <init>(Lcom/android/email/FixedLengthInputStream;)V
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapString;-><init>()V

    .line 44
    :try_start_3
    invoke-virtual {p1}, Lcom/android/email/FixedLengthInputStream;->getLength()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_2a

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, pos:I
    :goto_c
    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    if-ge v1, v3, :cond_1d

    .line 50
    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    iget-object v4, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v1, v4}, Lcom/android/email/FixedLengthInputStream;->read([BII)I

    move-result v2

    .line 51
    .local v2, read:I
    if-gez v2, :cond_2c

    .line 56
    .end local v2           #read:I
    :cond_1d
    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    if-eq v1, v3, :cond_29

    .line 57
    const-string v3, "Email"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v1           #pos:I
    :cond_29
    :goto_29
    return-void

    .line 45
    :catch_2a
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    goto :goto_29

    .line 54
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #pos:I
    .restart local v2       #read:I
    :cond_2c
    add-int/2addr v1, v2

    .line 55
    goto :goto_c
.end method

.method constructor <init>(Lcom/android/email/FixedLengthInputStream;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .registers 10
    .parameter "in"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapString;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/android/email/FixedLengthInputStream;->getLength()I

    move-result v5

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, pos:I
    const/4 v2, 0x0

    .line 67
    .local v2, progress:I
    const/4 v4, 0x0

    .line 68
    .local v4, temp:I
    invoke-static {}, Lcom/android/email/Controller;->getInstance()Lcom/android/email/Controller;

    move-result-object v0

    .line 70
    .local v0, controller:Lcom/android/email/Controller;
    :cond_12
    :goto_12
    iget-object v5, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v5, v5

    if-ge v1, v5, :cond_23

    .line 71
    iget-object v5, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    iget-object v6, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v6, v6

    sub-int/2addr v6, v1

    invoke-virtual {p1, v5, v1, v6}, Lcom/android/email/FixedLengthInputStream;->read([BII)I

    move-result v3

    .line 72
    .local v3, read:I
    if-gez v3, :cond_30

    .line 98
    .end local v3           #read:I
    :cond_23
    iget-object v5, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v5, v5

    if-eq v1, v5, :cond_2f

    .line 99
    const-string v5, "Email"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2f
    return-void

    .line 75
    .restart local v3       #read:I
    :cond_30
    add-int/2addr v1, v3

    .line 77
    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_53

    .line 78
    const-string v5, "Email"

    const-string v6, "Attachmentdownload is cancelled in ImapMemoryLiteral"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0}, Lcom/android/email/Controller;->IsAttachdownAllStop()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 83
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 85
    :cond_4b
    new-instance v5, Ljava/io/IOException;

    const-string v6, "ATTACHMENT_DOWNLOAD_CANCEL"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_53
    if-eqz p2, :cond_12

    .line 89
    mul-int/lit8 v5, v1, 0x64

    iget-object v6, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v6, v6

    div-int v4, v5, v6

    .line 91
    if-eq v4, v2, :cond_12

    .line 92
    move v2, v4

    .line 93
    sget-object v5, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->IMAPMEMORYLITERAL:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    invoke-interface {p2, v2, v5}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V

    goto :goto_12
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    .line 106
    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapString;->destroy()V

    .line 107
    return-void
.end method

.method public getAsStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 116
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 121
    const-string v0, "{%d byte literal(memory)}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
