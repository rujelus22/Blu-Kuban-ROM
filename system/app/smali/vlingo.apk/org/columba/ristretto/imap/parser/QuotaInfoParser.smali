.class public Lorg/columba/ristretto/imap/parser/QuotaInfoParser;
.super Ljava/lang/Object;
.source "QuotaInfoParser.java"


# static fields
.field private static final quotaPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-string v0, "(\\d+)\\s(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/QuotaInfoParser;->quotaPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/QuotaInfo;
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/columba/ristretto/imap/parser/QuotaInfoParser;->parse(Lorg/columba/ristretto/imap/IMAPResponse;Lorg/columba/ristretto/imap/QuotaInfo;)Lorg/columba/ristretto/imap/QuotaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/columba/ristretto/imap/IMAPResponse;Lorg/columba/ristretto/imap/QuotaInfo;)Lorg/columba/ristretto/imap/QuotaInfo;
    .registers 7
    .parameter "in"
    .parameter "quotaInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p1, :cond_2c

    move-object v2, p1

    .line 78
    .local v2, result:Lorg/columba/ristretto/imap/QuotaInfo;
    :goto_3
    sget-object v3, Lorg/columba/ristretto/imap/parser/QuotaInfoParser;->quotaPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 79
    .local v1, quotaMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 82
    const/4 v3, 0x1

    :try_start_14
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/columba/ristretto/imap/QuotaInfo;->setSize(J)V
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1f} :catch_32

    .line 89
    const/4 v3, 0x2

    :try_start_20
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/columba/ristretto/imap/QuotaInfo;->setMaxSize(J)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2b} :catch_39

    .line 96
    :cond_2b
    return-object v2

    .line 76
    .end local v1           #quotaMatcher:Ljava/util/regex/Matcher;
    .end local v2           #result:Lorg/columba/ristretto/imap/QuotaInfo;
    :cond_2c
    new-instance v2, Lorg/columba/ristretto/imap/QuotaInfo;

    invoke-direct {v2}, Lorg/columba/ristretto/imap/QuotaInfo;-><init>()V

    goto :goto_3

    .line 84
    .restart local v1       #quotaMatcher:Ljava/util/regex/Matcher;
    .restart local v2       #result:Lorg/columba/ristretto/imap/QuotaInfo;
    :catch_32
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/columba/ristretto/parser/ParserException;

    invoke-direct {v3, v0}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 91
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_39
    move-exception v0

    .line 92
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/columba/ristretto/parser/ParserException;

    invoke-direct {v3, v0}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
