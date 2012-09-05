.class public Lorg/columba/ristretto/imap/parser/MessageAttributeParser;
.super Ljava/lang/Object;
.source "MessageAttributeParser.java"


# static fields
.field private static final msg_att_key:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, " ?(ENVELOPE|INTERNALDATE|RFC822.(HEADER|TEXT|SIZE)|UID|FLAGS|BODYSTRUCTURE|BODY(\\[[^\\]]*\\])?) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/MessageAttributeParser;->msg_att_key:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/columba/ristretto/message/Attributes;
    .registers 8
    .parameter "input"

    .prologue
    const/4 v6, 0x1

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, strippedParentheses:Ljava/lang/String;
    sget-object v5, Lorg/columba/ristretto/imap/parser/MessageAttributeParser;->msg_att_key:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 65
    .local v2, matcher:Ljava/util/regex/Matcher;
    new-instance v3, Lorg/columba/ristretto/message/Attributes;

    invoke-direct {v3}, Lorg/columba/ristretto/message/Attributes;-><init>()V

    .line 66
    .local v3, result:Lorg/columba/ristretto/message/Attributes;
    const/4 v1, 0x0

    .line 67
    .local v1, lastKey:Ljava/lang/String;
    const/4 v0, 0x0

    .line 70
    .local v0, lastEnd:I
    :goto_18
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 71
    if-eqz v1, :cond_2b

    .line 72
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/columba/ristretto/message/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    :cond_2b
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v5, "BODY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    const-string v5, "BODYSTRUCTURE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 77
    const-string v1, "BODY"

    .line 79
    :cond_41
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_18

    .line 82
    :cond_46
    if-eqz v1, :cond_53

    .line 83
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/columba/ristretto/message/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_53
    return-object v3
.end method
