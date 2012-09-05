.class public Lorg/columba/ristretto/imap/parser/UIDParser;
.super Ljava/lang/Object;
.source "UIDParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/columba/ristretto/imap/IMAPResponse;)Ljava/lang/Integer;
    .registers 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/columba/ristretto/imap/parser/MessageAttributeParser;->parse(Ljava/lang/String;)Lorg/columba/ristretto/message/Attributes;

    move-result-object v0

    .line 60
    .local v0, attributes:Lorg/columba/ristretto/message/Attributes;
    const-string v1, "UID"

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/message/Attributes;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 61
    new-instance v1, Lorg/columba/ristretto/parser/ParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No UID found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_2d
    new-instance v2, Ljava/lang/Integer;

    const-string v1, "UID"

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/message/Attributes;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    return-object v2
.end method
