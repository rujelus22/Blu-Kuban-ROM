.class public Lorg/columba/ristretto/imap/parser/ListInfoParser;
.super Ljava/lang/Object;
.source "ListInfoParser.java"


# static fields
.field private static final listResponsePattern:Ljava/util/regex/Pattern;

.field private static final parameterPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55
    const-string v0, "^\\(([^)]*)\\) ((\"([^\"]+)\")|(NIL)) \"?([^\"]*)\"?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/ListInfoParser;->listResponsePattern:Ljava/util/regex/Pattern;

    .line 60
    const-string v0, "((\\\\Noinferiors)|(\\\\Noselect)|(\\\\Marked)|(\\\\UnMarked)) ?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/ListInfoParser;->parameterPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/ListInfo;
    .registers 10
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v6, Lorg/columba/ristretto/imap/parser/ListInfoParser;->listResponsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 76
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 77
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, parameterString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 79
    .local v4, parameters:I
    if-eqz v3, :cond_1c

    .line 80
    invoke-static {v3}, Lorg/columba/ristretto/imap/parser/ListInfoParser;->parseParameters(Ljava/lang/String;)I

    move-result v4

    .line 82
    :cond_1c
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, delimiter:Ljava/lang/String;
    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/columba/ristretto/imap/IMAPResponse;->getData(Ljava/lang/CharSequence;)Lorg/columba/ristretto/io/Source;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    new-instance v5, Lorg/columba/ristretto/imap/ListInfo;

    invoke-direct {v5, v2, v0, v4}, Lorg/columba/ristretto/imap/ListInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    .local v5, result:Lorg/columba/ristretto/imap/ListInfo;
    return-object v5

    .line 92
    .end local v0           #delimiter:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #parameterString:Ljava/lang/String;
    .end local v4           #parameters:I
    .end local v5           #result:Lorg/columba/ristretto/imap/ListInfo;
    :cond_38
    new-instance v6, Lorg/columba/ristretto/parser/ParserException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Invalid List/Lsub response : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static parseParameters(Ljava/lang/String;)I
    .registers 4
    .parameter "parameterString"

    .prologue
    .line 97
    sget-object v2, Lorg/columba/ristretto/imap/parser/ListInfoParser;->parameterPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 98
    .local v0, matcher:Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 100
    .local v1, result:I
    :cond_7
    :goto_7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 102
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 103
    or-int/lit8 v1, v1, 0x1

    .line 104
    goto :goto_7

    .line 107
    :cond_17
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 108
    or-int/lit8 v1, v1, 0x2

    .line 109
    goto :goto_7

    .line 112
    :cond_21
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 113
    or-int/lit8 v1, v1, 0x4

    .line 114
    goto :goto_7

    .line 117
    :cond_2b
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 118
    or-int/lit8 v1, v1, 0x8

    .line 119
    goto :goto_7

    .line 123
    :cond_35
    return v1
.end method
