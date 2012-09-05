.class public Lorg/columba/ristretto/imap/parser/MimeTreeParser;
.super Ljava/lang/Object;
.source "MimeTreeParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/message/MimeTree;
    .registers 6
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, message:Ljava/lang/String;
    invoke-static {v2}, Lorg/columba/ristretto/imap/parser/MessageAttributeParser;->parse(Ljava/lang/String;)Lorg/columba/ristretto/message/Attributes;

    move-result-object v0

    .line 72
    .local v0, attributes:Lorg/columba/ristretto/message/Attributes;
    const-string v4, "BODYSTRUCTURE"

    invoke-virtual {v0, v4}, Lorg/columba/ristretto/message/Attributes;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, bodystructure:Ljava/lang/String;
    if-nez v1, :cond_18

    new-instance v4, Lorg/columba/ristretto/parser/ParserException;

    invoke-direct {v4, v2}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_18
    invoke-static {p0, v1}, Lorg/columba/ristretto/imap/parser/MimeTreeParser;->parseBodyStructure(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)Lorg/columba/ristretto/message/MimeTree;

    move-result-object v3

    .line 78
    .local v3, mptree:Lorg/columba/ristretto/message/MimeTree;
    return-object v3
.end method

.method protected static parseBS(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;
    .registers 13
    .parameter "response"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 99
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_c5

    .line 100
    new-instance v1, Lorg/columba/ristretto/message/MimePart;

    invoke-direct {v1}, Lorg/columba/ristretto/message/MimePart;-><init>()V

    .line 102
    .local v1, result:Lorg/columba/ristretto/message/MimePart;
    new-instance v4, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;

    invoke-direct {v4, p0, p1}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)V

    .line 106
    .local v4, tokenizer:Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
    invoke-virtual {v4}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 109
    .local v0, nextItem:Lorg/columba/ristretto/imap/parser/Item;
    :goto_18
    if-eqz v0, :cond_20

    .line 110
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v6

    if-eq v6, v10, :cond_73

    .line 121
    :cond_20
    invoke-virtual {v1}, Lorg/columba/ristretto/message/MimePart;->getHeader()Lorg/columba/ristretto/message/MimeHeader;

    move-result-object v7

    new-instance v8, Lorg/columba/ristretto/message/MimeType;

    const-string v9, "multipart"

    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Lorg/columba/ristretto/message/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lorg/columba/ristretto/message/MimeHeader;->setMimeType(Lorg/columba/ristretto/message/MimeType;)V

    .line 127
    invoke-virtual {v4}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v6

    if-ne v6, v10, :cond_85

    .line 129
    new-instance v3, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;

    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, p0, v6}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)V

    .line 134
    .local v3, subtokenizer:Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
    invoke-virtual {v3}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 135
    :goto_51
    if-eqz v0, :cond_85

    .line 136
    invoke-virtual {v3}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v5

    .line 138
    .local v5, valueItem:Lorg/columba/ristretto/imap/parser/Item;
    invoke-virtual {v1}, Lorg/columba/ristretto/message/MimePart;->getHeader()Lorg/columba/ristretto/message/MimeHeader;

    move-result-object v7

    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lorg/columba/ristretto/message/MimeHeader;->putContentParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v3}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    goto :goto_51

    .line 113
    .end local v3           #subtokenizer:Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
    .end local v5           #valueItem:Lorg/columba/ristretto/imap/parser/Item;
    :cond_73
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p0, v6}, Lorg/columba/ristretto/imap/parser/MimeTreeParser;->parseBS(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/columba/ristretto/message/MimePart;->addChild(Lorg/columba/ristretto/message/MimePart;)V

    .line 115
    invoke-virtual {v4}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    goto :goto_18

    .line 147
    :cond_85
    invoke-virtual {v4}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 148
    if-nez v0, :cond_8d

    move-object v2, v1

    .line 167
    .end local v0           #nextItem:Lorg/columba/ristretto/imap/parser/Item;
    .end local v1           #result:Lorg/columba/ristretto/message/MimePart;
    .end local v4           #tokenizer:Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
    .local v2, result:Ljava/lang/Object;
    :goto_8c
    return-object v2

    .line 150
    .end local v2           #result:Ljava/lang/Object;
    .restart local v0       #nextItem:Lorg/columba/ristretto/imap/parser/Item;
    .restart local v1       #result:Lorg/columba/ristretto/message/MimePart;
    .restart local v4       #tokenizer:Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
    :cond_8d
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v6

    if-nez v6, :cond_a4

    .line 151
    invoke-virtual {v1}, Lorg/columba/ristretto/message/MimePart;->getHeader()Lorg/columba/ristretto/message/MimeHeader;

    move-result-object v7

    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/columba/ristretto/message/MimeHeader;->setContentID(Ljava/lang/String;)V

    .line 155
    :cond_a4
    invoke-virtual {v4}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 156
    if-nez v0, :cond_ac

    move-object v2, v1

    .line 157
    .restart local v2       #result:Ljava/lang/Object;
    goto :goto_8c

    .line 158
    .end local v2           #result:Ljava/lang/Object;
    :cond_ac
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v6

    if-nez v6, :cond_c3

    .line 159
    invoke-virtual {v1}, Lorg/columba/ristretto/message/MimePart;->getHeader()Lorg/columba/ristretto/message/MimeHeader;

    move-result-object v7

    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/columba/ristretto/message/MimeHeader;->setContentDescription(Ljava/lang/String;)V

    .end local v0           #nextItem:Lorg/columba/ristretto/imap/parser/Item;
    .end local v4           #tokenizer:Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
    :cond_c3
    :goto_c3
    move-object v2, v1

    .line 167
    .restart local v2       #result:Ljava/lang/Object;
    goto :goto_8c

    .line 164
    .end local v1           #result:Lorg/columba/ristretto/message/MimePart;
    .end local v2           #result:Ljava/lang/Object;
    :cond_c5
    invoke-static {p0, p1}, Lorg/columba/ristretto/imap/parser/MimeTreeParser;->parseMimeStructure(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;

    move-result-object v1

    .restart local v1       #result:Lorg/columba/ristretto/message/MimePart;
    goto :goto_c3
.end method

.method private static parseBodyStructure(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)Lorg/columba/ristretto/message/MimeTree;
    .registers 6
    .parameter "response"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, openParenthesis:I
    add-int/lit8 v2, v1, 0x1

    invoke-static {p1, v1}, Lorg/columba/ristretto/imap/parser/ParenthesisParser;->getClosingPos(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, bodystructure:Ljava/lang/String;
    new-instance v2, Lorg/columba/ristretto/message/MimeTree;

    invoke-static {p0, v0}, Lorg/columba/ristretto/imap/parser/MimeTreeParser;->parseBS(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/columba/ristretto/message/MimeTree;-><init>(Lorg/columba/ristretto/message/MimePart;)V

    return-object v2
.end method

.method private static parseEnvelope(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)Lorg/columba/ristretto/message/Header;
    .registers 8
    .parameter "response"
    .parameter "envelope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 174
    new-instance v1, Lorg/columba/ristretto/message/Header;

    invoke-direct {v1}, Lorg/columba/ristretto/message/Header;-><init>()V

    .line 176
    .local v1, result:Lorg/columba/ristretto/message/Header;
    new-instance v2, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;

    invoke-direct {v2, p0, p1}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)V

    .line 181
    .local v2, tokenizer:Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 182
    .local v0, nextItem:Lorg/columba/ristretto/imap/parser/Item;
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v3

    if-nez v3, :cond_20

    .line 183
    const-string v4, "Date"

    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    :cond_20
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v3

    if-nez v3, :cond_35

    .line 188
    const-string v4, "Subject"

    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    :cond_35
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v3

    if-ne v3, v5, :cond_3f

    .line 195
    :cond_3f
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v3

    if-ne v3, v5, :cond_49

    .line 199
    :cond_49
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v3

    if-ne v3, v5, :cond_53

    .line 203
    :cond_53
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v3

    if-ne v3, v5, :cond_5d

    .line 207
    :cond_5d
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v3

    if-ne v3, v5, :cond_67

    .line 211
    :cond_67
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v3

    if-ne v3, v5, :cond_71

    .line 215
    :cond_71
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v3

    if-nez v3, :cond_86

    .line 217
    const-string v4, "In-Reply-To"

    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    :cond_86
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v3

    if-nez v3, :cond_9b

    .line 222
    const-string v4, "Message-ID"

    invoke-virtual {v0}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lorg/columba/ristretto/message/Header;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    :cond_9b
    return-object v1
.end method

.method private static parseMimeStructure(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;
    .registers 16
    .parameter "response"
    .parameter "structure"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 230
    new-instance v1, Lorg/columba/ristretto/message/MimeHeader;

    invoke-direct {v1}, Lorg/columba/ristretto/message/MimeHeader;-><init>()V

    .line 231
    .local v1, header:Lorg/columba/ristretto/message/MimeHeader;
    new-instance v8, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;

    invoke-direct {v8, p0, p1}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)V

    .line 235
    .local v8, tokenizer:Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
    const/4 v9, 0x0

    .line 236
    .local v9, type:Lorg/columba/ristretto/message/MimeType;
    const/4 v3, 0x0

    .line 238
    .local v3, result:Lorg/columba/ristretto/message/StreamableMimePart;
    const-string v0, "text"

    .line 240
    .local v0, contentType:Ljava/lang/String;
    invoke-virtual {v8}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 241
    .local v2, nextItem:Lorg/columba/ristretto/imap/parser/Item;
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v11

    if-nez v11, :cond_23

    .line 242
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_23
    invoke-virtual {v8}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v11

    if-nez v11, :cond_3f

    .line 247
    new-instance v9, Lorg/columba/ristretto/message/MimeType;

    .end local v9           #type:Lorg/columba/ristretto/message/MimeType;
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v0, v11}, Lorg/columba/ristretto/message/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .restart local v9       #type:Lorg/columba/ristretto/message/MimeType;
    invoke-virtual {v1, v9}, Lorg/columba/ristretto/message/MimeHeader;->setMimeType(Lorg/columba/ristretto/message/MimeType;)V

    .line 255
    :cond_3f
    invoke-virtual {v8}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v11

    if-ne v11, v13, :cond_76

    .line 257
    new-instance v7, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v7, p0, v11}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)V

    .line 262
    .local v7, subtokenizer:Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
    invoke-virtual {v7}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 263
    :goto_58
    if-eqz v2, :cond_76

    .line 264
    invoke-virtual {v7}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v10

    .line 266
    .local v10, valueItem:Lorg/columba/ristretto/imap/parser/Item;
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v12, v11}, Lorg/columba/ristretto/message/MimeHeader;->putContentParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v7}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    goto :goto_58

    .line 275
    .end local v7           #subtokenizer:Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
    .end local v10           #valueItem:Lorg/columba/ristretto/imap/parser/Item;
    :cond_76
    invoke-virtual {v8}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 276
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v11

    if-nez v11, :cond_8d

    .line 277
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/columba/ristretto/message/MimeHeader;->setContentID(Ljava/lang/String;)V

    .line 280
    :cond_8d
    invoke-virtual {v8}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v11

    if-nez v11, :cond_a4

    .line 282
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/columba/ristretto/message/MimeHeader;->setContentDescription(Ljava/lang/String;)V

    .line 286
    :cond_a4
    invoke-virtual {v8}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 287
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v11

    if-nez v11, :cond_bb

    .line 288
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/columba/ristretto/message/MimeHeader;->setContentTransferEncoding(Ljava/lang/String;)V

    .line 292
    :cond_bb
    const/4 v4, 0x0

    .line 293
    .local v4, size:I
    invoke-virtual {v8}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 294
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_d1

    .line 295
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 298
    :cond_d1
    invoke-virtual {v9}, Lorg/columba/ristretto/message/MimeType;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "message"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_142

    invoke-virtual {v9}, Lorg/columba/ristretto/message/MimeType;->getSubtype()Ljava/lang/String;

    move-result-object v11

    const-string v12, "rfc822"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_142

    .line 300
    new-instance v3, Lorg/columba/ristretto/message/MessageMimePart;

    .end local v3           #result:Lorg/columba/ristretto/message/StreamableMimePart;
    invoke-direct {v3, v1}, Lorg/columba/ristretto/message/MessageMimePart;-><init>(Lorg/columba/ristretto/message/MimeHeader;)V

    .line 302
    .restart local v3       #result:Lorg/columba/ristretto/message/StreamableMimePart;
    new-instance v5, Lorg/columba/ristretto/message/Message;

    invoke-direct {v5}, Lorg/columba/ristretto/message/Message;-><init>()V

    .line 306
    .local v5, subMessage:Lorg/columba/ristretto/message/Message;
    invoke-virtual {v8}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v11

    if-ne v11, v13, :cond_10a

    .line 308
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {p0, v11}, Lorg/columba/ristretto/imap/parser/MimeTreeParser;->parseEnvelope(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)Lorg/columba/ristretto/message/Header;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/columba/ristretto/message/Message;->setHeader(Lorg/columba/ristretto/message/Header;)V

    .line 314
    :cond_10a
    invoke-virtual {v8}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 315
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v11

    if-ne v11, v13, :cond_129

    .line 316
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {p0, v11}, Lorg/columba/ristretto/imap/parser/MimeTreeParser;->parseBS(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;

    move-result-object v6

    .line 318
    .local v6, subStructure:Lorg/columba/ristretto/message/MimePart;
    invoke-virtual {v6, v3}, Lorg/columba/ristretto/message/MimePart;->setParent(Lorg/columba/ristretto/message/MimePart;)V

    .line 319
    new-instance v11, Lorg/columba/ristretto/message/MimeTree;

    invoke-direct {v11, v6}, Lorg/columba/ristretto/message/MimeTree;-><init>(Lorg/columba/ristretto/message/MimePart;)V

    invoke-virtual {v5, v11}, Lorg/columba/ristretto/message/Message;->setMimePartTree(Lorg/columba/ristretto/message/MimeTree;)V

    .end local v6           #subStructure:Lorg/columba/ristretto/message/MimePart;
    :cond_129
    move-object v11, v3

    .line 322
    check-cast v11, Lorg/columba/ristretto/message/MessageMimePart;

    invoke-virtual {v11, v5}, Lorg/columba/ristretto/message/MessageMimePart;->setMessage(Lorg/columba/ristretto/message/Message;)V

    .line 325
    invoke-virtual {v8}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 339
    .end local v5           #subMessage:Lorg/columba/ristretto/message/Message;
    :goto_133
    invoke-virtual {v3, v4}, Lorg/columba/ristretto/message/StreamableMimePart;->setSize(I)V

    .line 343
    invoke-virtual {v8}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 344
    if-nez v2, :cond_15e

    .line 345
    new-instance v3, Lorg/columba/ristretto/message/MimePart;

    .end local v3           #result:Lorg/columba/ristretto/message/StreamableMimePart;
    invoke-direct {v3, v1}, Lorg/columba/ristretto/message/MimePart;-><init>(Lorg/columba/ristretto/message/MimeHeader;)V

    .line 390
    :cond_141
    :goto_141
    return-object v3

    .line 328
    .restart local v3       #result:Lorg/columba/ristretto/message/StreamableMimePart;
    :cond_142
    invoke-virtual {v9}, Lorg/columba/ristretto/message/MimeType;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "text"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_158

    .line 329
    new-instance v3, Lorg/columba/ristretto/message/LocalMimePart;

    .end local v3           #result:Lorg/columba/ristretto/message/StreamableMimePart;
    invoke-direct {v3, v1}, Lorg/columba/ristretto/message/LocalMimePart;-><init>(Lorg/columba/ristretto/message/MimeHeader;)V

    .line 332
    .restart local v3       #result:Lorg/columba/ristretto/message/StreamableMimePart;
    invoke-virtual {v8}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    goto :goto_133

    .line 335
    :cond_158
    new-instance v3, Lorg/columba/ristretto/message/LocalMimePart;

    .end local v3           #result:Lorg/columba/ristretto/message/StreamableMimePart;
    invoke-direct {v3, v1}, Lorg/columba/ristretto/message/LocalMimePart;-><init>(Lorg/columba/ristretto/message/MimeHeader;)V

    .restart local v3       #result:Lorg/columba/ristretto/message/StreamableMimePart;
    goto :goto_133

    .line 349
    :cond_15e
    invoke-virtual {v8}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 350
    if-nez v2, :cond_16a

    .line 351
    new-instance v3, Lorg/columba/ristretto/message/MimePart;

    .end local v3           #result:Lorg/columba/ristretto/message/StreamableMimePart;
    invoke-direct {v3, v1}, Lorg/columba/ristretto/message/MimePart;-><init>(Lorg/columba/ristretto/message/MimeHeader;)V

    goto :goto_141

    .line 353
    .restart local v3       #result:Lorg/columba/ristretto/message/StreamableMimePart;
    :cond_16a
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v11

    if-nez v11, :cond_17e

    .line 354
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/columba/ristretto/message/MimeHeader;->setContentDisposition(Ljava/lang/String;)V

    goto :goto_141

    .line 356
    :cond_17e
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v11

    if-ne v11, v13, :cond_141

    .line 357
    new-instance v7, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;

    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v7, p0, v11}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)V

    .line 362
    .restart local v7       #subtokenizer:Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
    invoke-virtual {v7}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 363
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/columba/ristretto/message/MimeHeader;->setContentDisposition(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v7}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 368
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getType()I

    move-result v11

    if-ne v11, v13, :cond_141

    .line 369
    new-instance v7, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;

    .end local v7           #subtokenizer:Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v7, p0, v11}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;-><init>(Lorg/columba/ristretto/imap/IMAPResponse;Ljava/lang/String;)V

    .line 374
    .restart local v7       #subtokenizer:Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;
    invoke-virtual {v7}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    .line 376
    :goto_1b9
    if-eqz v2, :cond_141

    .line 377
    invoke-virtual {v7}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v10

    .line 379
    .restart local v10       #valueItem:Lorg/columba/ristretto/imap/parser/Item;
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lorg/columba/ristretto/imap/parser/Item;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v12, v11}, Lorg/columba/ristretto/message/MimeHeader;->putDispositionParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v7}, Lorg/columba/ristretto/imap/parser/BodystructureTokenizer;->getNextItem()Lorg/columba/ristretto/imap/parser/Item;

    move-result-object v2

    goto :goto_1b9
.end method
