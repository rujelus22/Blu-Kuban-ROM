.class Lorg/apache/james/mime4j/field/address/Builder;
.super Ljava/lang/Object;


# static fields
.field private static singleton:Lorg/apache/james/mime4j/field/address/Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/Builder;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/parser/Token;)V
    .registers 4

    if-eqz p2, :cond_c

    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/parser/Token;)V

    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    return-void
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .registers 7

    const/4 v3, 0x1

    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;

    invoke-direct {p0, v0, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    invoke-direct {p0, v0, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/james/mime4j/field/address/Mailbox;

    invoke-direct {v1, p1, v2, v0}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method private buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .registers 6

    new-instance v2, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v2, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    const/4 v1, 0x0

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    instance-of v3, v0, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    if-eqz v3, :cond_23

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildRoute(Lorg/apache/james/mime4j/field/address/parser/ASTroute;)Lorg/apache/james/mime4j/field/address/DomainList;

    move-result-object v1

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    :cond_18
    instance-of v2, v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v2, :cond_2d

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    return-object v0

    :cond_23
    instance-of v2, v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-nez v2, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private buildGroupBody(Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lorg/apache/james/mime4j/field/address/MailboxList;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v2, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    :goto_a
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    instance-of v3, v0, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    if-eqz v3, :cond_22

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildMailbox(Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_28
    new-instance v0, Lorg/apache/james/mime4j/field/address/MailboxList;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method private buildNameAddr(Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .registers 5

    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    instance-of v2, v0, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v2, :cond_2c

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v1, :cond_32

    invoke-static {v2}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/james/mime4j/field/address/Mailbox;

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    return-object v2

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private buildRoute(Lorg/apache/james/mime4j/field/address/parser/ASTroute;)Lorg/apache/james/mime4j/field/address/DomainList;
    .registers 7

    const/4 v4, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/ASTroute;->jjtGetNumChildren()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v2, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    :goto_f
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    instance-of v3, v0, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    if-eqz v3, :cond_27

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    invoke-direct {p0, v0, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2d
    new-instance v0, Lorg/apache/james/mime4j/field/address/DomainList;

    invoke-direct {v0, v1, v4}, Lorg/apache/james/mime4j/field/address/DomainList;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method private buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;
    .registers 7

    iget-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_9
    :goto_9
    if-eq v0, v1, :cond_1a

    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez p2, :cond_9

    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v2, v3}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/parser/Token;)V

    goto :goto_9

    :cond_1a
    iget-object v0, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/apache/james/mime4j/field/address/Builder;
    .registers 1

    sget-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-object v0
.end method


# virtual methods
.method public buildAddress(Lorg/apache/james/mime4j/field/address/parser/ASTaddress;)Lorg/apache/james/mime4j/field/address/Address;
    .registers 5

    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    instance-of v2, v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v2, :cond_14

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    instance-of v2, v0, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v2, :cond_1f

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    goto :goto_13

    :cond_1f
    instance-of v2, v0, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v2, :cond_5a

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    if-eqz v1, :cond_3f

    new-instance v1, Lorg/apache/james/mime4j/field/address/Group;

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildGroupBody(Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/james/mime4j/field/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V

    move-object v0, v1

    goto :goto_13

    :cond_3f
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v1, :cond_54

    invoke-static {v2}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lorg/apache/james/mime4j/field/address/Mailbox;

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    move-object v0, v1

    goto :goto_13

    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public buildAddressList(Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lorg/apache/james/mime4j/field/address/AddressList;
    .registers 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetNumChildren()I

    move-result v0

    if-ge v1, v0, :cond_1e

    invoke-virtual {p1, v1}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetChild(I)Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddress(Lorg/apache/james/mime4j/field/address/parser/ASTaddress;)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_1e
    new-instance v0, Lorg/apache/james/mime4j/field/address/AddressList;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lorg/apache/james/mime4j/field/address/AddressList;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method public buildMailbox(Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .registers 4

    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v1, :cond_14

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v1, :cond_1f

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    goto :goto_13

    :cond_1f
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    if-eqz v1, :cond_2a

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildNameAddr(Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    goto :goto_13

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
