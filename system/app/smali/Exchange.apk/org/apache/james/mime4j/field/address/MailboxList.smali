.class public Lorg/apache/james/mime4j/field/address/MailboxList;
.super Ljava/lang/Object;
.source "MailboxList.java"


# instance fields
.field private mailboxes:Ljava/util/ArrayList;
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
    .line 37
    .local p1, mailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-eqz p1, :cond_11

    .line 39
    if-eqz p2, :cond_a

    .end local p1           #mailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    :goto_7
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    .line 42
    :goto_9
    return-void

    .line 39
    .restart local p1       #mailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    goto :goto_7

    .line 41
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    goto :goto_9
.end method


# virtual methods
.method public get(I)Lorg/apache/james/mime4j/field/address/Mailbox;
    .registers 3
    .parameter "index"

    .prologue
    .line 55
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/MailboxList;->size()I

    move-result v0

    if-gt v0, p1, :cond_e

    .line 56
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 57
    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Mailbox;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
