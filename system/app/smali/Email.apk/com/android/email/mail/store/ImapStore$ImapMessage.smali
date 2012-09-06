.class Lcom/android/email/mail/store/ImapStore$ImapMessage;
.super Lcom/android/emailcommon/internet/MimeMessage;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapMessage"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/email/mail/store/ImapFolder;)V
    .registers 3
    .parameter "uid"
    .parameter "folder"

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;-><init>()V

    .line 588
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapMessage;->mUid:Ljava/lang/String;

    .line 589
    iput-object p2, p0, Lcom/android/email/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/android/emailcommon/mail/Folder;

    .line 590
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-super {p0, p1}, Lcom/android/emailcommon/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 599
    return-void
.end method

.method public setFlag(Lcom/android/emailcommon/mail/Flag;Z)V
    .registers 7
    .parameter "flag"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 607
    invoke-super {p0, p1, p2}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 608
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/android/emailcommon/mail/Folder;

    new-array v1, v2, [Lcom/android/emailcommon/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/android/emailcommon/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 609
    return-void
.end method

.method public setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V
    .registers 3
    .parameter "flag"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-super {p0, p1, p2}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 603
    return-void
.end method

.method public setSize(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 593
    iput p1, p0, Lcom/android/email/mail/store/ImapStore$ImapMessage;->mSize:I

    .line 594
    return-void
.end method
