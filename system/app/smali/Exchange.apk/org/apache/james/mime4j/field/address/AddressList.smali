.class public Lorg/apache/james/mime4j/field/address/AddressList;
.super Ljava/lang/Object;
.source "AddressList.java"


# instance fields
.field private addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .registers 5
    .parameter
    .parameter "dontCopy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_11

    .line 43
    if-eqz p2, :cond_a

    .end local p1           #addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    :goto_7
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    .line 46
    :goto_9
    return-void

    .line 43
    .restart local p1       #addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    goto :goto_7

    .line 45
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    goto :goto_9
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;
    .registers 4
    .parameter "rawAddressList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    .line 113
    .local v0, parser:Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
    invoke-static {}, Lorg/apache/james/mime4j/field/address/Builder;->getInstance()Lorg/apache/james/mime4j/field/address/Builder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parse()Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddressList(Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public flatten()Lorg/apache/james/mime4j/field/address/MailboxList;
    .registers 8

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, groupDetected:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v4

    if-ge v2, v4, :cond_11

    .line 73
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressList;->get(I)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/james/mime4j/field/address/Mailbox;

    if-nez v4, :cond_1c

    .line 74
    const/4 v1, 0x1

    .line 79
    :cond_11
    if-nez v1, :cond_1f

    .line 80
    new-instance v4, Lorg/apache/james/mime4j/field/address/MailboxList;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    .line 90
    :goto_1b
    return-object v4

    .line 72
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 82
    :cond_1f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    const/4 v2, 0x0

    :goto_25
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v4

    if-ge v2, v4, :cond_35

    .line 84
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressList;->get(I)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v0

    .line 85
    .local v0, addr:Lorg/apache/james/mime4j/field/address/Address;
    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/Address;->addMailboxesTo(Ljava/util/ArrayList;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 90
    .end local v0           #addr:Lorg/apache/james/mime4j/field/address/Address;
    :cond_35
    new-instance v4, Lorg/apache/james/mime4j/field/address/MailboxList;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    goto :goto_1b
.end method

.method public get(I)Lorg/apache/james/mime4j/field/address/Address;
    .registers 3
    .parameter "index"

    .prologue
    .line 59
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v0

    if-gt v0, p1, :cond_e

    .line 60
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 61
    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Address;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
