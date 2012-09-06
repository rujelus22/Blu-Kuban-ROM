.class public Lorg/apache/james/mime4j/message/Message;
.super Lorg/apache/james/mime4j/message/Entity;

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/message/Message;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;Lorg/apache/james/mime4j/storage/StorageProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .registers 4

    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/message/Message;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;Lorg/apache/james/mime4j/storage/StorageProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .registers 6

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    :try_start_3
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    new-instance v1, Lorg/apache/james/mime4j/message/MessageBuilder;

    invoke-direct {v1, p0, p3}, Lorg/apache/james/mime4j/message/MessageBuilder;-><init>(Lorg/apache/james/mime4j/message/Entity;Lorg/apache/james/mime4j/storage/StorageProvider;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V
    :try_end_13
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_3 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    new-instance v1, Lorg/apache/james/mime4j/MimeIOException;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/MimeIOException;-><init>(Lorg/apache/james/mime4j/MimeException;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/message/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/Entity;-><init>(Lorg/apache/james/mime4j/message/Entity;)V

    return-void
.end method

.method private getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/AddressListField;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/AddressListField;->getAddressList()Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    goto :goto_9
.end method

.method private getMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/MailboxField;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/MailboxField;->getMailbox()Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    goto :goto_9
.end method

.method private getMailboxList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/MailboxList;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/MailboxListField;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/MailboxListField;->getMailboxList()Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v0

    goto :goto_9
.end method

.method private setAddressList(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_c
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    :goto_f
    return-void

    :cond_10
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->addressList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_f
.end method

.method private setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V
    .registers 4

    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void

    :cond_7
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_3
.end method

.method private varargs setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V
    .registers 4

    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void

    :cond_7
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method

.method private setMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    if-nez p2, :cond_a

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    :goto_9
    return-void

    :cond_a
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->mailbox(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_9
.end method

.method private setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_c
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    :goto_f
    return-void

    :cond_10
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->mailboxList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_f
.end method

.method private setMailboxList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .registers 4

    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void

    :cond_7
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_3
.end method

.method private varargs setMailboxList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .registers 4

    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void

    :cond_7
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public createMessageId(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->messageId(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public getBcc()Lorg/apache/james/mime4j/field/address/AddressList;
    .registers 2

    const-string v0, "Bcc"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getCc()Lorg/apache/james/mime4j/field/address/AddressList;
    .registers 2

    const-string v0, "Cc"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .registers 2

    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_b
.end method

.method public getFrom()Lorg/apache/james/mime4j/field/address/MailboxList;
    .registers 2

    const-string v0, "From"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getMailboxList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 2

    const-string v0, "Message-ID"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/Field;->getBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getReplyTo()Lorg/apache/james/mime4j/field/address/AddressList;
    .registers 2

    const-string v0, "Reply-To"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Lorg/apache/james/mime4j/field/address/Mailbox;
    .registers 2

    const-string v0, "Sender"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    const-string v0, "Subject"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/UnstructuredField;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/UnstructuredField;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public getTo()Lorg/apache/james/mime4j/field/address/AddressList;
    .registers 2

    const-string v0, "To"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public setBcc(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Bcc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setBcc(Lorg/apache/james/mime4j/field/address/Address;)V
    .registers 3

    const-string v0, "Bcc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public varargs setBcc([Lorg/apache/james/mime4j/field/address/Address;)V
    .registers 3

    const-string v0, "Bcc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public setCc(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Cc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setCc(Lorg/apache/james/mime4j/field/address/Address;)V
    .registers 3

    const-string v0, "Cc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public varargs setCc([Lorg/apache/james/mime4j/field/address/Address;)V
    .registers 3

    const-string v0, "Cc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/Message;->setDate(Ljava/util/Date;Ljava/util/TimeZone;)V

    return-void
.end method

.method public setDate(Ljava/util/Date;Ljava/util/TimeZone;)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    if-nez p1, :cond_c

    const-string v1, "Date"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    const-string v1, "Date"

    invoke-static {v1, p1, p2}, Lorg/apache/james/mime4j/field/Fields;->date(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_b
.end method

.method public setFrom(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setFrom(Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .registers 3

    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    return-void
.end method

.method public varargs setFrom([Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .registers 3

    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Mailbox;)V

    return-void
.end method

.method public setReplyTo(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setReplyTo(Lorg/apache/james/mime4j/field/address/Address;)V
    .registers 3

    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public varargs setReplyTo([Lorg/apache/james/mime4j/field/address/Address;)V
    .registers 3

    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public setSender(Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .registers 3

    const-string v0, "Sender"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    if-nez p1, :cond_c

    const-string v1, "Subject"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->subject(Ljava/lang/String;)Lorg/apache/james/mime4j/field/UnstructuredField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_b
.end method

.method public setTo(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setTo(Lorg/apache/james/mime4j/field/address/Address;)V
    .registers 3

    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public varargs setTo([Lorg/apache/james/mime4j/field/address/Address;)V
    .registers 3

    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->DEFAULT:Lorg/apache/james/mime4j/message/MessageWriter;

    invoke-virtual {v0, p0, p1}, Lorg/apache/james/mime4j/message/MessageWriter;->writeEntity(Lorg/apache/james/mime4j/message/Entity;Ljava/io/OutputStream;)V

    return-void
.end method
