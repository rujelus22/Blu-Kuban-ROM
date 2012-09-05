.class public Lorg/columba/ristretto/parser/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# static fields
.field private static final keyValuePattern:Ljava/util/regex/Pattern;

.field private static final linePattern:Ljava/util/regex/Pattern;

.field private static final lineWrapPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "([^\r\n]*)(\r?\n)|(\r\n?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/parser/HeaderParser;->linePattern:Ljava/util/regex/Pattern;

    .line 53
    const-string v0, "([^:\\s]+): (.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/parser/HeaderParser;->keyValuePattern:Ljava/util/regex/Pattern;

    .line 54
    const-string v0, "\\s(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/parser/HeaderParser;->lineWrapPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static normalizeKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 156
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 157
    .local v3, normalizedKey:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 159
    .local v2, last:C
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_47

    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 163
    .local v0, act:C
    const/16 v4, 0x2d

    if-eq v2, v4, :cond_34

    const/16 v4, 0x49

    if-eq v2, v4, :cond_30

    const/16 v4, 0x69

    if-ne v2, v4, :cond_3f

    :cond_30
    const/16 v4, 0x64

    if-ne v0, v4, :cond_3f

    .line 164
    :cond_34
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    :goto_3b
    move v2, v0

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 166
    :cond_3f
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3b

    .line 171
    .end local v0           #act:C
    :cond_47
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static parse(Lorg/columba/ristretto/io/Source;)Lorg/columba/ristretto/message/Header;
    .registers 11
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 70
    new-instance v1, Lorg/columba/ristretto/message/Header;

    invoke-direct {v1}, Lorg/columba/ristretto/message/Header;-><init>()V

    .line 71
    .local v1, header:Lorg/columba/ristretto/message/Header;
    sget-object v7, Lorg/columba/ristretto/parser/HeaderParser;->linePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 72
    .local v5, lineMatcher:Ljava/util/regex/Matcher;
    sget-object v7, Lorg/columba/ristretto/parser/HeaderParser;->keyValuePattern:Ljava/util/regex/Pattern;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 73
    .local v2, keyValueMatcher:Ljava/util/regex/Matcher;
    sget-object v7, Lorg/columba/ristretto/parser/HeaderParser;->lineWrapPattern:Ljava/util/regex/Pattern;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 75
    .local v6, lineWrapMatcher:Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    .line 76
    .local v3, lastKey:Ljava/lang/String;
    const/4 v4, 0x0

    .line 78
    .local v4, lastValue:Ljava/lang/String;
    :cond_1e
    :goto_1e
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_93

    .line 80
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_30

    .line 82
    if-eqz v4, :cond_2f

    .line 83
    invoke-virtual {v1, v3, v4}, Lorg/columba/ristretto/message/Header;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_2f
    :goto_2f
    return-object v1

    .line 91
    :cond_30
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 93
    if-eqz v4, :cond_41

    .line 94
    invoke-virtual {v1, v3, v4}, Lorg/columba/ristretto/message/Header;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_41
    :try_start_41
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-interface {p0, v7}, Lorg/columba/ristretto/io/Source;->seek(I)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_48} :catch_49

    goto :goto_2f

    .line 100
    :catch_49
    move-exception v0

    .line 101
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    .line 110
    .end local v0           #e:Ljava/io/IOException;
    :cond_4e
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 111
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 113
    if-eqz v4, :cond_60

    .line 114
    invoke-virtual {v1, v3, v4}, Lorg/columba/ristretto/message/Header;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_60
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/columba/ristretto/parser/HeaderParser;->normalizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    .line 122
    :cond_6e
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 123
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 124
    if-eqz v4, :cond_1e

    .line 126
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    .line 135
    :cond_93
    if-eqz v4, :cond_98

    .line 136
    invoke-virtual {v1, v3, v4}, Lorg/columba/ristretto/message/Header;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_98
    :try_start_98
    invoke-interface {p0}, Lorg/columba/ristretto/io/Source;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {p0, v7}, Lorg/columba/ristretto/io/Source;->seek(I)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a1} :catch_a2

    goto :goto_2f

    .line 141
    :catch_a2
    move-exception v0

    .line 142
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f
.end method
