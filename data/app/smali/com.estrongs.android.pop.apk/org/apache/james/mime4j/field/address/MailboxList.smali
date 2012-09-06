.class public Lorg/apache/james/mime4j/field/address/MailboxList;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lorg/apache/james/mime4j/field/address/Mailbox;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mailboxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
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
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-eqz p1, :cond_11

    if-eqz p2, :cond_a

    :goto_7
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/List;

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

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/List;

    goto :goto_9
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/MailboxList;->get(I)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/apache/james/mime4j/field/address/Mailbox;
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Mailbox;

    return-object v0
.end method

.method public print()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/MailboxList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/MailboxList;->get(I)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Mailbox;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
