.class public Lcom/android/email/mail/store/Pop3Store$Pop3Message;
.super Lcom/android/emailcommon/internet/MimeMessage;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pop3Message"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V
    .registers 4
    .parameter "uid"
    .parameter "folder"

    .prologue
    .line 971
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;-><init>()V

    .line 972
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->mUid:Ljava/lang/String;

    .line 973
    iput-object p2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->mFolder:Lcom/android/emailcommon/mail/Folder;

    .line 974
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->mSize:I

    .line 975
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
    .line 983
    invoke-super {p0, p1}, Lcom/android/emailcommon/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 984
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

    .line 988
    invoke-super {p0, p1, p2}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 989
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->mFolder:Lcom/android/emailcommon/mail/Folder;

    new-array v1, v2, [Lcom/android/emailcommon/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/android/emailcommon/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 990
    return-void
.end method

.method public setSize(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 978
    iput p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->mSize:I

    .line 979
    return-void
.end method
