.class public Lorg/columba/ristretto/pop3/parser/POP3ResponseParser;
.super Ljava/lang/Object;
.source "POP3ResponseParser.java"


# static fields
.field private static final responsePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-string v0, "(\\+|\\-)(OK|ERR)? ?([^\r\n]*)\r?\n?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/pop3/parser/POP3ResponseParser;->responsePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/pop3/POP3Response;
    .registers 6
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 61
    sget-object v2, Lorg/columba/ristretto/pop3/parser/POP3ResponseParser;->responsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 63
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 64
    new-instance v1, Lorg/columba/ristretto/pop3/POP3Response;

    invoke-direct {v1, p0}, Lorg/columba/ristretto/pop3/POP3Response;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    .local v1, response:Lorg/columba/ristretto/pop3/POP3Response;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v1, v2}, Lorg/columba/ristretto/pop3/POP3Response;->setType(I)V

    .line 69
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/pop3/POP3Response;->setMessage(Ljava/lang/String;)V

    .line 71
    return-object v1

    .line 66
    :cond_2b
    const/4 v2, -0x1

    goto :goto_1f

    .line 73
    .end local v1           #response:Lorg/columba/ristretto/pop3/POP3Response;
    :cond_2d
    new-instance v2, Lorg/columba/ristretto/parser/ParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Malformed POP3 response : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
