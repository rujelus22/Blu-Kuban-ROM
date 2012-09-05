.class public Lorg/columba/ristretto/imap/parser/NamespaceParser;
.super Ljava/lang/Object;
.source "NamespaceParser.java"


# static fields
.field private static final namespacePattern:Ljava/util/regex/Pattern;

.field private static final quotedPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string v0, "\\(\"([^\"]*)\"\\s\"([^\"]*)\"(\\s\"([^\"]*)\"\\s\\(([^\\)]*)\\))?\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/NamespaceParser;->namespacePattern:Ljava/util/regex/Pattern;

    .line 66
    const-string v0, "\"([^\"]*)\"\\s?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/imap/parser/NamespaceParser;->quotedPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parse(Ljava/lang/String;)Lorg/columba/ristretto/imap/NamespaceCollection;
    .registers 14
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 90
    new-instance v7, Lorg/columba/ristretto/imap/NamespaceCollection;

    invoke-direct {v7}, Lorg/columba/ristretto/imap/NamespaceCollection;-><init>()V

    .line 94
    .local v7, result:Lorg/columba/ristretto/imap/NamespaceCollection;
    invoke-static {p0}, Lorg/columba/ristretto/imap/parser/NamespaceParser;->tokenizeParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, parts:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    const/4 v8, 0x3

    if-ge v0, v8, :cond_7c

    .line 98
    aget-object v5, v6, v0

    .line 101
    .local v5, part:Ljava/lang/String;
    const-string v8, "nil"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 102
    new-instance v8, Lorg/columba/ristretto/imap/Namespace;

    invoke-direct {v8, v12, v12}, Lorg/columba/ristretto/imap/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0, v8}, Lorg/columba/ristretto/imap/NamespaceCollection;->addNamespace(ILorg/columba/ristretto/imap/Namespace;)V

    .line 97
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 105
    :cond_25
    sget-object v8, Lorg/columba/ristretto/imap/parser/NamespaceParser;->namespacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 107
    .local v1, namespaceMatcher:Ljava/util/regex/Matcher;
    :goto_2b
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 108
    new-instance v2, Lorg/columba/ristretto/imap/Namespace;

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lorg/columba/ristretto/imap/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v2, ns:Lorg/columba/ristretto/imap/Namespace;
    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_78

    .line 113
    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/columba/ristretto/imap/Namespace;->setExtensionName(Ljava/lang/String;)V

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v3, parameterList:Ljava/util/List;
    sget-object v8, Lorg/columba/ristretto/imap/parser/NamespaceParser;->quotedPattern:Ljava/util/regex/Pattern;

    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 119
    .local v4, parameterMatcher:Ljava/util/regex/Matcher;
    :goto_5c
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 120
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 124
    :cond_6a
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v2, v8}, Lorg/columba/ristretto/imap/Namespace;->setExtensionParameter([Ljava/lang/String;)V

    .line 128
    .end local v3           #parameterList:Ljava/util/List;
    .end local v4           #parameterMatcher:Ljava/util/regex/Matcher;
    :cond_78
    invoke-virtual {v7, v0, v2}, Lorg/columba/ristretto/imap/NamespaceCollection;->addNamespace(ILorg/columba/ristretto/imap/Namespace;)V

    goto :goto_2b

    .line 133
    .end local v1           #namespaceMatcher:Ljava/util/regex/Matcher;
    .end local v2           #ns:Lorg/columba/ristretto/imap/Namespace;
    .end local v5           #part:Ljava/lang/String;
    :cond_7c
    return-object v7
.end method

.method public static final parse(Lorg/columba/ristretto/imap/IMAPResponse;)Lorg/columba/ristretto/imap/NamespaceCollection;
    .registers 2
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/columba/ristretto/imap/parser/NamespaceParser;->parse(Ljava/lang/String;)Lorg/columba/ristretto/imap/NamespaceCollection;

    move-result-object v0

    return-object v0
.end method

.method private static tokenizeParts(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 137
    new-array v2, v6, [Ljava/lang/String;

    .line 138
    .local v2, result:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 139
    .local v3, start:I
    const/4 v0, -0x1

    .line 141
    .local v0, end:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v6, :cond_38

    .line 142
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_31

    .line 143
    invoke-static {p0, v3}, Lorg/columba/ristretto/imap/parser/ParenthesisParser;->getClosingPos(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 146
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 151
    :goto_1c
    add-int/lit8 v3, v0, 0x1

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2e

    .line 155
    add-int/lit8 v3, v3, 0x1

    .line 141
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 148
    :cond_31
    add-int/lit8 v0, v3, 0x2

    .line 149
    const-string v4, "NIL"

    aput-object v4, v2, v1

    goto :goto_1c

    .line 159
    :cond_38
    return-object v2
.end method
