.class public Lorg/columba/ristretto/imap/parser/FlagsParser;
.super Ljava/lang/Object;
.source "FlagsParser.java"


# static fields
.field private static final flagsPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 83
    const-string v0, "(\\\\|$)?(Answered)|(Flagged)|(Deleted)|(Seen)|(Draft)|(Recent)|(Junk) ?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/FlagsParser;->flagsPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/IMAPFlags;
    .registers 9
    .parameter "response"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 93
    new-instance v2, Lorg/columba/ristretto/imap/IMAPFlags;

    invoke-direct {v2}, Lorg/columba/ristretto/imap/IMAPFlags;-><init>()V

    .line 95
    .local v2, result:Lorg/columba/ristretto/imap/IMAPFlags;
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getPreNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/columba/ristretto/imap/IMAPFlags;->setIndex(I)V

    .line 98
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/columba/ristretto/imap/parser/MessageAttributeParser;->parse(Ljava/lang/String;)Lorg/columba/ristretto/message/Attributes;

    move-result-object v0

    .line 101
    .local v0, attributes:Lorg/columba/ristretto/message/Attributes;
    const-string v3, "FLAGS"

    invoke-virtual {v0, v3}, Lorg/columba/ristretto/message/Attributes;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_86

    .line 102
    sget-object v4, Lorg/columba/ristretto/imap/parser/FlagsParser;->flagsPattern:Ljava/util/regex/Pattern;

    const-string v3, "FLAGS"

    invoke-virtual {v0, v3}, Lorg/columba/ristretto/message/Attributes;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 103
    .local v1, matcher:Ljava/util/regex/Matcher;
    :cond_2e
    :goto_2e
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 104
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 105
    invoke-virtual {v2, v5}, Lorg/columba/ristretto/imap/IMAPFlags;->set(S)V

    goto :goto_2e

    .line 106
    :cond_3e
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 107
    invoke-virtual {v2, v7}, Lorg/columba/ristretto/imap/IMAPFlags;->set(S)V

    goto :goto_2e

    .line 108
    :cond_49
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 109
    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lorg/columba/ristretto/imap/IMAPFlags;->set(S)V

    goto :goto_2e

    .line 110
    :cond_55
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_62

    .line 111
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lorg/columba/ristretto/imap/IMAPFlags;->set(S)V

    goto :goto_2e

    .line 112
    :cond_62
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6d

    .line 113
    invoke-virtual {v2, v6}, Lorg/columba/ristretto/imap/IMAPFlags;->set(S)V

    goto :goto_2e

    .line 114
    :cond_6d
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7a

    .line 115
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lorg/columba/ristretto/imap/IMAPFlags;->set(S)V

    goto :goto_2e

    .line 116
    :cond_7a
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 117
    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lorg/columba/ristretto/imap/IMAPFlags;->set(S)V

    goto :goto_2e

    .line 123
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_86
    const-string v3, "UID"

    invoke-virtual {v0, v3}, Lorg/columba/ristretto/message/Attributes;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9e

    .line 124
    new-instance v4, Ljava/lang/Integer;

    const-string v3, "UID"

    invoke-virtual {v0, v3}, Lorg/columba/ristretto/message/Attributes;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/columba/ristretto/imap/IMAPFlags;->setUid(Ljava/lang/Object;)V

    .line 127
    :cond_9e
    return-object v2
.end method

.method public static parseFlags([Lorg/columba/ristretto/imap/IMAPResponse;)[Lorg/columba/ristretto/message/Flags;
    .registers 6
    .parameter "responses"

    .prologue
    .line 137
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 139
    .local v2, v:Ljava/util/List;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2d

    .line 140
    aget-object v3, p0, v1

    if-nez v3, :cond_12

    .line 139
    :cond_f
    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 143
    :cond_12
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseSubType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FETCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 144
    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/columba/ristretto/imap/parser/FlagsParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/IMAPFlags;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    const/4 v3, 0x0

    aput-object v3, p0, v1

    goto :goto_f

    .line 150
    :cond_2d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Lorg/columba/ristretto/message/Flags;

    .line 151
    .local v0, flags:[Lorg/columba/ristretto/message/Flags;
    check-cast v2, Ljava/util/Vector;

    .end local v2           #v:Ljava/util/List;
    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 153
    return-object v0
.end method

.method protected static parseFlagsLine(Ljava/lang/String;)Lorg/columba/ristretto/imap/IMAPFlags;
    .registers 5
    .parameter "str"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 157
    new-instance v0, Lorg/columba/ristretto/imap/IMAPFlags;

    invoke-direct {v0}, Lorg/columba/ristretto/imap/IMAPFlags;-><init>()V

    .line 159
    .local v0, flags:Lorg/columba/ristretto/imap/IMAPFlags;
    const-string v1, "Seen"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_12

    .line 161
    invoke-virtual {v0, v3}, Lorg/columba/ristretto/imap/IMAPFlags;->setSeen(Z)V

    .line 163
    :cond_12
    const-string v1, "Answered"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1d

    .line 165
    invoke-virtual {v0, v3}, Lorg/columba/ristretto/imap/IMAPFlags;->setAnswered(Z)V

    .line 167
    :cond_1d
    const-string v1, "Flagged"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_28

    .line 169
    invoke-virtual {v0, v3}, Lorg/columba/ristretto/imap/IMAPFlags;->setFlagged(Z)V

    .line 171
    :cond_28
    const-string v1, "Deleted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_33

    .line 173
    invoke-virtual {v0, v3}, Lorg/columba/ristretto/imap/IMAPFlags;->setDeleted(Z)V

    .line 176
    :cond_33
    const-string v1, "Recent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_3e

    .line 178
    invoke-virtual {v0, v3}, Lorg/columba/ristretto/imap/IMAPFlags;->setRecent(Z)V

    .line 181
    :cond_3e
    return-object v0
.end method

.method protected static parseUidsLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "data"

    .prologue
    .line 188
    const-string v2, "UID "

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x4

    .line 189
    .local v0, leftIndex:I
    const-string v2, " "

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 191
    .local v1, rightIndex:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    :goto_15
    return-object v2

    :cond_16
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_15
.end method
