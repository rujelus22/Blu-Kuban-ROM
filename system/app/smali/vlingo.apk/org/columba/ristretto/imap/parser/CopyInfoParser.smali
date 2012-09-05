.class public Lorg/columba/ristretto/imap/parser/CopyInfoParser;
.super Ljava/lang/Object;
.source "CopyInfoParser.java"


# static fields
.field private static final copyInfoPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string v0, "^COPYUID ([0-9]*) ([^ ]*) ([^ ]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/CopyInfoParser;->copyInfoPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/CopyInfo;
    .registers 9
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseTextCode()Lorg/columba/ristretto/imap/ResponseTextCode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/columba/ristretto/imap/ResponseTextCode;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, in:Ljava/lang/String;
    sget-object v3, Lorg/columba/ristretto/imap/parser/CopyInfoParser;->copyInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 66
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 68
    :try_start_14
    new-instance v3, Lorg/columba/ristretto/imap/CopyInfo;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/columba/ristretto/imap/parser/SequenceSetParser;->parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/imap/SequenceSet;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/columba/ristretto/imap/parser/SequenceSetParser;->parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/imap/SequenceSet;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/columba/ristretto/imap/CopyInfo;-><init>(JLorg/columba/ristretto/imap/SequenceSet;Lorg/columba/ristretto/imap/SequenceSet;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_34} :catch_35

    return-object v3

    .line 70
    :catch_35
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lorg/columba/ristretto/parser/ParserException;

    invoke-direct {v3, v0}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 75
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3c
    new-instance v3, Lorg/columba/ristretto/parser/ParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "No COPYUID response : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
