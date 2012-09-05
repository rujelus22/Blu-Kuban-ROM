.class public Lorg/columba/ristretto/imap/parser/AppendInfoParser;
.super Ljava/lang/Object;
.source "AppendInfoParser.java"


# static fields
.field private static final stringAppendPlusPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-string v0, "^APPENDUID ([0-9]*) ([0-9]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/AppendInfoParser;->stringAppendPlusPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/AppendInfo;
    .registers 9
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseTextCode()Lorg/columba/ristretto/imap/ResponseTextCode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/columba/ristretto/imap/ResponseTextCode;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, in:Ljava/lang/String;
    const/4 v3, 0x0

    .line 67
    .local v3, result:Lorg/columba/ristretto/imap/AppendInfo;
    sget-object v4, Lorg/columba/ristretto/imap/parser/AppendInfoParser;->stringAppendPlusPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 68
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 70
    :try_start_15
    new-instance v3, Lorg/columba/ristretto/imap/AppendInfo;

    .end local v3           #result:Lorg/columba/ristretto/imap/AppendInfo;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/columba/ristretto/imap/AppendInfo;-><init>(JJ)V
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_2c} :catch_2d

    .line 80
    .restart local v3       #result:Lorg/columba/ristretto/imap/AppendInfo;
    return-object v3

    .line 72
    .end local v3           #result:Lorg/columba/ristretto/imap/AppendInfo;
    :catch_2d
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v4, Lorg/columba/ristretto/parser/ParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "APPENDUID parse error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #result:Lorg/columba/ristretto/imap/AppendInfo;
    :cond_4b
    new-instance v4, Lorg/columba/ristretto/parser/ParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "No APPENDUID response : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
