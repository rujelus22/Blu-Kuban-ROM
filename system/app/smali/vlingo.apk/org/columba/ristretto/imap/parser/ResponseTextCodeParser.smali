.class public Lorg/columba/ristretto/imap/parser/ResponseTextCodeParser;
.super Ljava/lang/Object;
.source "ResponseTextCodeParser.java"


# static fields
.field private static final typePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "^((ALERT)|(BADCHARSET)|(CAPABILITY)|(PARSE)|(PERMANENTFLAGS)|(READ.ONLY)|(READ.WRITE)|(TRYCREATE)|(UIDNEXT)|(UIDVALIDITY)|(UNSEEN))\\s?(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/ResponseTextCodeParser;->typePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/columba/ristretto/imap/ResponseTextCode;
    .registers 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0xd

    .line 72
    new-instance v1, Lorg/columba/ristretto/imap/ResponseTextCode;

    invoke-direct {v1}, Lorg/columba/ristretto/imap/ResponseTextCode;-><init>()V

    .line 73
    .local v1, result:Lorg/columba/ristretto/imap/ResponseTextCode;
    sget-object v2, Lorg/columba/ristretto/imap/parser/ResponseTextCodeParser;->typePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 75
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 76
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setType(I)V

    .line 110
    :cond_21
    :goto_21
    return-object v1

    .line 78
    :cond_22
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setType(I)V

    .line 80
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/columba/ristretto/imap/parser/StringListParser;->parse(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setStringArrayValue([Ljava/lang/String;)V

    goto :goto_21

    .line 81
    :cond_38
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 82
    invoke-virtual {v1, v4}, Lorg/columba/ristretto/imap/ResponseTextCode;->setType(I)V

    .line 83
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/columba/ristretto/imap/parser/StringListParser;->parse(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setStringArrayValue([Ljava/lang/String;)V

    goto :goto_21

    .line 84
    :cond_4d
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 85
    invoke-virtual {v1, v5}, Lorg/columba/ristretto/imap/ResponseTextCode;->setType(I)V

    goto :goto_21

    .line 86
    :cond_57
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 87
    invoke-virtual {v1, v6}, Lorg/columba/ristretto/imap/ResponseTextCode;->setType(I)V

    .line 88
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/columba/ristretto/imap/parser/StringListParser;->parse(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setStringArrayValue([Ljava/lang/String;)V

    goto :goto_21

    .line 89
    :cond_6d
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 90
    invoke-virtual {v1, v7}, Lorg/columba/ristretto/imap/ResponseTextCode;->setType(I)V

    goto :goto_21

    .line 91
    :cond_78
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_85

    .line 92
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setType(I)V

    goto :goto_21

    .line 93
    :cond_85
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_92

    .line 94
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setType(I)V

    goto :goto_21

    .line 95
    :cond_92
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ac

    .line 96
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setType(I)V

    .line 97
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/columba/ristretto/imap/parser/ResponseTextCodeParser;->parseIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setIntValue(I)V

    goto/16 :goto_21

    .line 98
    :cond_ac
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c6

    .line 99
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setType(I)V

    .line 100
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/columba/ristretto/imap/parser/ResponseTextCodeParser;->parseIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setIntValue(I)V

    goto/16 :goto_21

    .line 101
    :cond_c6
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 102
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setType(I)V

    .line 103
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/columba/ristretto/imap/parser/ResponseTextCodeParser;->parseIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setIntValue(I)V

    goto/16 :goto_21

    .line 106
    :cond_e0
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setType(I)V

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/imap/ResponseTextCode;->setStringValue(Ljava/lang/String;)V

    goto/16 :goto_21
.end method

.method private static parseIntValue(Ljava/lang/String;)I
    .registers 2
    .parameter "string"

    .prologue
    .line 114
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
