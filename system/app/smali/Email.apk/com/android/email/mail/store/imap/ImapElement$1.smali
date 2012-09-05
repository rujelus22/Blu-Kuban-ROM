.class final Lcom/android/email/mail/store/imap/ImapElement$1;
.super Lcom/android/email/mail/store/imap/ImapElement;
.source "ImapElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/imap/ImapElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapElement;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

.method public equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z
    .registers 3
    .parameter "that"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/email/mail/store/imap/ImapElement;->equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z

    move-result v0

    return v0
.end method

.method public isList()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public isString()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string v0, "[NO ELEMENT]"

    return-object v0
.end method
