.class public Lorg/columba/ristretto/imap/parser/IMAPHeaderParser;
.super Ljava/lang/Object;
.source "IMAPHeaderParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/IMAPHeader;
    .registers 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/columba/ristretto/imap/parser/MessageAttributeParser;->parse(Ljava/lang/String;)Lorg/columba/ristretto/message/Attributes;

    move-result-object v0

    .line 67
    .local v0, attributes:Lorg/columba/ristretto/message/Attributes;
    const-string v5, "BODY"

    invoke-virtual {v0, v5}, Lorg/columba/ristretto/message/Attributes;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, body:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/columba/ristretto/imap/IMAPResponse;->getData(Ljava/lang/CharSequence;)Lorg/columba/ristretto/io/Source;

    move-result-object v5

    invoke-static {v5}, Lorg/columba/ristretto/parser/HeaderParser;->parse(Lorg/columba/ristretto/io/Source;)Lorg/columba/ristretto/message/Header;

    move-result-object v2

    .line 74
    .local v2, header:Lorg/columba/ristretto/message/Header;
    const/4 v4, 0x0

    .line 75
    .local v4, uid:Ljava/lang/Integer;
    const-string v5, "UID"

    invoke-virtual {v0, v5}, Lorg/columba/ristretto/message/Attributes;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 76
    new-instance v4, Ljava/lang/Integer;

    .end local v4           #uid:Ljava/lang/Integer;
    const-string v5, "UID"

    invoke-virtual {v0, v5}, Lorg/columba/ristretto/message/Attributes;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 81
    .restart local v4       #uid:Ljava/lang/Integer;
    :cond_2e
    const-string v5, "RFC822.SIZE"

    invoke-virtual {v0, v5}, Lorg/columba/ristretto/message/Attributes;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_54

    .line 82
    new-instance v3, Ljava/lang/Integer;

    const-string v5, "RFC822.SIZE"

    invoke-virtual {v0, v5}, Lorg/columba/ristretto/message/Attributes;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    div-int/lit16 v5, v5, 0x400

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 87
    .local v3, size:Ljava/lang/Integer;
    :goto_4e
    new-instance v5, Lorg/columba/ristretto/imap/IMAPHeader;

    invoke-direct {v5, v2, v4, v3}, Lorg/columba/ristretto/imap/IMAPHeader;-><init>(Lorg/columba/ristretto/message/Header;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v5

    .line 84
    .end local v3           #size:Ljava/lang/Integer;
    :cond_54
    new-instance v3, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    .restart local v3       #size:Ljava/lang/Integer;
    goto :goto_4e
.end method
