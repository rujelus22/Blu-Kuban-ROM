.class public Lorg/columba/ristretto/imap/parser/MailboxStatusParser;
.super Ljava/lang/Object;
.source "MailboxStatusParser.java"


# static fields
.field private static final attributePattern:Ljava/util/regex/Pattern;

.field private static final statusPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string v0, "([^\\s]+)\\s\\(([^\\)]*)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/MailboxStatusParser;->statusPattern:Ljava/util/regex/Pattern;

    .line 54
    const-string v0, "\\s?([^\\s]+)\\s(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/MailboxStatusParser;->attributePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/MailboxStatus;
    .registers 8
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 64
    new-instance v1, Lorg/columba/ristretto/imap/MailboxStatus;

    invoke-direct {v1}, Lorg/columba/ristretto/imap/MailboxStatus;-><init>()V

    .line 65
    .local v1, result:Lorg/columba/ristretto/imap/MailboxStatus;
    sget-object v3, Lorg/columba/ristretto/imap/parser/MailboxStatusParser;->statusPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 67
    .local v2, statusMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 68
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/columba/ristretto/imap/parser/MailboxStatusParser;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/columba/ristretto/imap/MailboxStatus;->setName(Ljava/lang/String;)V

    .line 69
    sget-object v3, Lorg/columba/ristretto/imap/parser/MailboxStatusParser;->attributePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 70
    .local v0, attributeMatcher:Ljava/util/regex/Matcher;
    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 71
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MESSAGES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 72
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/columba/ristretto/imap/MailboxStatus;->setMessages(I)V

    goto :goto_2c

    .line 73
    :cond_4a
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RECENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 74
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/columba/ristretto/imap/MailboxStatus;->setRecent(I)V

    goto :goto_2c

    .line 75
    :cond_62
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UNSEEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 76
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/columba/ristretto/imap/MailboxStatus;->setUnseen(I)V

    goto :goto_2c

    .line 77
    :cond_7a
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UIDVALIDITY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 78
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/columba/ristretto/imap/MailboxStatus;->setUidValidity(J)V

    goto :goto_2c

    .line 79
    :cond_92
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UIDNEXT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 80
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/columba/ristretto/imap/MailboxStatus;->setUidNext(J)V

    goto :goto_2c

    .line 86
    .end local v0           #attributeMatcher:Ljava/util/regex/Matcher;
    :cond_aa
    new-instance v3, Lorg/columba/ristretto/parser/ParserException;

    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    .restart local v0       #attributeMatcher:Ljava/util/regex/Matcher;
    :cond_b4
    return-object v1
.end method

.method private static removeQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "string"

    .prologue
    .line 90
    move-object v0, p0

    .line 91
    .local v0, result:Ljava/lang/String;
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_e
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_21
    return-object v0
.end method
