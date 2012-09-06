.class public Lorg/apache/james/mime4j/field/address/AddressList;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lorg/apache/james/mime4j/field/address/Address;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-eqz p1, :cond_11

    if-eqz p2, :cond_a

    :goto_7
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/List;

    :goto_9
    return-void

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    goto :goto_7

    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/List;

    goto :goto_9
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_c
    :try_start_c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "quit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_35
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Goodbye."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_3d
    invoke-static {v0}, Lorg/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressList;->print()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_44} :catch_45

    goto :goto_c

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_c
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;
    .registers 3

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Lorg/apache/james/mime4j/field/address/Builder;->getInstance()Lorg/apache/james/mime4j/field/address/Builder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseAddressList()Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddressList(Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public flatten()Lorg/apache/james/mime4j/field/address/MailboxList;
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Address;

    instance-of v0, v0, Lorg/apache/james/mime4j/field/address/Mailbox;

    if-nez v0, :cond_8

    move v0, v1

    :goto_19
    if-nez v0, :cond_23

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/List;

    new-instance v0, Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-direct {v0, v2, v1}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/List;Z)V

    :goto_22
    return-object v0

    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Address;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/address/Address;->addMailboxesTo(Ljava/util/List;)V

    goto :goto_2e

    :cond_3e
    new-instance v0, Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/List;Z)V

    goto :goto_22

    :cond_44
    move v0, v2

    goto :goto_19
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/AddressList;->get(I)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/apache/james/mime4j/field/address/Address;
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Address;

    return-object v0
.end method

.method public print()V
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Address;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Address;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
