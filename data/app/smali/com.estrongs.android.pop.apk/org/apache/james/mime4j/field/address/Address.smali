.class public abstract Lorg/apache/james/mime4j/field/address/Address;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x8ccbe18f7550292L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Address;
    .registers 3

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    :try_start_a
    invoke-static {}, Lorg/apache/james/mime4j/field/address/Builder;->getInstance()Lorg/apache/james/mime4j/field/address/Builder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseAddress()Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddress(Lorg/apache/james/mime4j/field/address/parser/ASTaddress;)Lorg/apache/james/mime4j/field/address/Address;
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
.method final addMailboxesTo(Ljava/util/List;)V
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

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/Address;->doAddMailboxesTo(Ljava/util/List;)V

    return-void
.end method

.method protected abstract doAddMailboxesTo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)V"
        }
    .end annotation
.end method

.method public final getDisplayString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/Address;->getDisplayString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDisplayString(Z)Ljava/lang/String;
.end method

.method public abstract getEncodedString()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/Address;->getDisplayString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
