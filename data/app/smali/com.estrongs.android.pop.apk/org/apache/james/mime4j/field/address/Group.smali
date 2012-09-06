.class public Lorg/apache/james/mime4j/field/address/Group;
.super Lorg/apache/james/mime4j/field/address/Address;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 6
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

    new-instance v0, Lorg/apache/james/mime4j/field/address/MailboxList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/List;Z)V

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V
    .registers 4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/Address;-><init>()V

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    if-nez p2, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_13
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/Group;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .registers 6

    new-instance v0, Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/List;Z)V

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Group;
    .registers 3

    invoke-static {p0}, Lorg/apache/james/mime4j/field/address/Address;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/Group;

    if-nez v1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a group address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    check-cast v0, Lorg/apache/james/mime4j/field/address/Group;

    return-object v0
.end method


# virtual methods
.method protected doAddMailboxesTo(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/MailboxList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Mailbox;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_16
    return-void
.end method

.method public getDisplayString(Z)Ljava/lang/String;
    .registers 7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/MailboxList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Mailbox;

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    :goto_26
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/field/address/Mailbox;->getDisplayString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_33
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_39
    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedString()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Group;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/MailboxList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Mailbox;

    if-eqz v1, :cond_37

    const/4 v1, 0x0

    :goto_2a
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Mailbox;->getEncodedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_37
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_3d
    const/16 v0, 0x3b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMailboxes()Lorg/apache/james/mime4j/field/address/MailboxList;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Group;->name:Ljava/lang/String;

    return-object v0
.end method
