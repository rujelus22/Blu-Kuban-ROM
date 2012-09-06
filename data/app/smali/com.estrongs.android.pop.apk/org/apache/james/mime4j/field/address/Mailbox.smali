.class public Lorg/apache/james/mime4j/field/address/Mailbox;
.super Lorg/apache/james/mime4j/field/address/Address;


# static fields
.field private static final EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/field/address/DomainList; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final domain:Ljava/lang/String;

.field private final localPart:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final route:Lorg/apache/james/mime4j/field/address/DomainList;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/apache/james/mime4j/field/address/DomainList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/address/DomainList;-><init>(Ljava/util/List;Z)V

    sput-object v0, Lorg/apache/james/mime4j/field/address/Mailbox;->EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/field/address/DomainList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/Address;-><init>()V

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_12
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    :cond_1a
    move-object p1, v0

    :cond_1b
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    if-nez p2, :cond_21

    sget-object p2, Lorg/apache/james/mime4j/field/address/Mailbox;->EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/field/address/DomainList;

    :cond_21
    iput-object p2, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->route:Lorg/apache/james/mime4j/field/address/DomainList;

    iput-object p3, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    if-eqz p4, :cond_2d

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2e

    :cond_2d
    move-object p4, v0

    :cond_2e
    iput-object p4, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .registers 6

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/address/Mailbox;->getRoute()Lorg/apache/james/mime4j/field/address/DomainList;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getCanonicalizedAddress()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .registers 3

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    :try_start_a
    invoke-static {}, Lorg/apache/james/mime4j/field/address/Builder;->getInstance()Lorg/apache/james/mime4j/field/address/Builder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseMailbox()Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildMailbox(Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;)Lorg/apache/james/mime4j/field/address/Mailbox;
    :try_end_15
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_a .. :try_end_15} :catch_17

    move-result-object v0

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final doAddMailboxesTo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lorg/apache/james/mime4j/field/address/Mailbox;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lorg/apache/james/mime4j/field/address/Mailbox;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/Mailbox;->getCanonicalizedAddress()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/Mailbox;->getCanonicalizedAddress()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public getAddress()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getDisplayString(Z)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->route:Lorg/apache/james/mime4j/field/address/DomainList;

    if-eqz v0, :cond_58

    move v0, v1

    :goto_7
    and-int/2addr v0, p1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    if-nez v3, :cond_e

    if-eqz v0, :cond_f

    :cond_e
    move v2, v1

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_22
    if-eqz v2, :cond_29

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_29
    if-eqz v0, :cond_39

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->route:Lorg/apache/james/mime4j/field/address/DomainList;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/DomainList;->toRouteString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_39
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    if-eqz v0, :cond_4c

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    if-eqz v2, :cond_53

    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_58
    move v0, v2

    goto :goto_7
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    if-eqz v1, :cond_2e

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    if-eqz v1, :cond_37

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPart()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Lorg/apache/james/mime4j/field/address/DomainList;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->route:Lorg/apache/james/mime4j/field/address/DomainList;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/Mailbox;->getCanonicalizedAddress()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
