.class public Lorg/columba/ristretto/parser/AddressParser;
.super Ljava/lang/Object;
.source "AddressParser.java"


# static fields
.field private static final addressTokenizerPattern:Ljava/util/regex/Pattern;

.field private static final trimPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string v0, "([^\\s]+?)(\\s|<|$)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/parser/AddressParser;->addressTokenizerPattern:Ljava/util/regex/Pattern;

    .line 56
    const-string v0, "[\"<]?([^\"<>]*)[\">]?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/parser/AddressParser;->trimPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAddress(Ljava/lang/CharSequence;)Lorg/columba/ristretto/message/Address;
    .registers 8
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 92
    sget-object v4, Lorg/columba/ristretto/parser/AddressParser;->addressTokenizerPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 94
    .local v0, addressTokenizer:Ljava/util/regex/Matcher;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v3, tokens:Ljava/util/ArrayList;
    :goto_d
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 97
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 100
    :cond_1b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v5, :cond_29

    .line 101
    new-instance v4, Lorg/columba/ristretto/parser/ParserException;

    const-string v5, "No valid EMail address"

    invoke-direct {v4, v5, p0}, Lorg/columba/ristretto/parser/ParserException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw v4

    .line 102
    :cond_29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_40

    .line 103
    new-instance v5, Lorg/columba/ristretto/message/Address;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/columba/ristretto/parser/AddressParser;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/columba/ristretto/message/Address;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 112
    :goto_3f
    return-object v4

    .line 105
    :cond_40
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, name:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_4c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_65

    .line 108
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 112
    :cond_65
    new-instance v5, Lorg/columba/ristretto/message/Address;

    invoke-static {v2}, Lorg/columba/ristretto/parser/AddressParser;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/columba/ristretto/parser/AddressParser;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/columba/ristretto/message/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_3f
.end method

.method public static parseMailboxList(Ljava/lang/CharSequence;)[Lorg/columba/ristretto/message/Address;
    .registers 6
    .parameter "mailboxList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 72
    .local v2, result:Ljava/util/List;
    invoke-static {p0}, Lorg/columba/ristretto/parser/AddressParser;->tokenizeList(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 74
    .local v3, tokens:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    array-length v4, v3

    if-ge v1, v4, :cond_19

    .line 75
    aget-object v4, v3, v1

    invoke-static {v4}, Lorg/columba/ristretto/parser/AddressParser;->parseAddress(Ljava/lang/CharSequence;)Lorg/columba/ristretto/message/Address;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 78
    :cond_19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Lorg/columba/ristretto/message/Address;

    .local v0, a:[Lorg/columba/ristretto/message/Address;
    move-object v4, v0

    .line 79
    check-cast v4, [Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    return-object v0
.end method

.method private static tokenizeList(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .registers 7
    .parameter "input"

    .prologue
    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v3, result:Ljava/util/List;
    const/4 v2, 0x0

    .line 131
    .local v2, quoted:Z
    const/4 v4, 0x0

    .line 134
    .local v4, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_27

    .line 135
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 137
    .local v0, c:C
    sparse-switch v0, :sswitch_data_3c

    .line 134
    :cond_15
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 139
    :sswitch_18
    xor-int/lit8 v2, v2, 0x1

    .line 140
    goto :goto_15

    .line 144
    :sswitch_1b
    if-nez v2, :cond_15

    .line 145
    invoke-interface {p0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v4, v1, 0x1

    goto :goto_15

    .line 152
    .end local v0           #c:C
    :cond_27
    if-ge v4, v1, :cond_30

    .line 153
    invoke-interface {p0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_30
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    check-cast v5, [Ljava/lang/CharSequence;

    return-object v5

    .line 137
    :sswitch_data_3c
    .sparse-switch
        0x22 -> :sswitch_18
        0x2c -> :sswitch_1b
    .end sparse-switch
.end method

.method private static trim(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .parameter "input"

    .prologue
    .line 118
    sget-object v1, Lorg/columba/ristretto/parser/AddressParser;->trimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 120
    .local v0, trimMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    :goto_11
    return-object v1

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method
