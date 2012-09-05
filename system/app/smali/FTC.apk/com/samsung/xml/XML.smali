.class public Lcom/samsung/xml/XML;
.super Ljava/lang/Object;
.source "XML.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "input"

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final escapeXMLChars(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .parameter "input"
    .parameter "quote"

    .prologue
    const/4 v6, 0x0

    .line 39
    if-nez p0, :cond_5

    .line 40
    const/4 p0, 0x0

    .line 65
    .end local p0
    :cond_4
    :goto_4
    return-object p0

    .line 41
    .restart local p0
    :cond_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v4, out:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 43
    .local v3, oldsize:I
    new-array v2, v3, [C

    .line 44
    .local v2, old:[C
    invoke-virtual {p0, v6, v3, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 45
    const/4 v5, 0x0

    .line 46
    .local v5, selstart:I
    const/4 v0, 0x0

    .line 47
    .local v0, entity:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    if-lt v1, v3, :cond_24

    .line 62
    if-eqz v5, :cond_4

    .line 64
    sub-int v6, v3, v5

    invoke-virtual {v4, v2, v5, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 48
    :cond_24
    aget-char v6, v2, v1

    sparse-switch v6, :sswitch_data_4c

    .line 55
    :cond_29
    :goto_29
    if-eqz v0, :cond_36

    .line 56
    sub-int v6, v1, v5

    invoke-virtual {v4, v2, v5, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    add-int/lit8 v5, v1, 0x1

    .line 59
    const/4 v0, 0x0

    .line 47
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 49
    :sswitch_39
    const-string v0, "&amp;"

    goto :goto_29

    .line 50
    :sswitch_3c
    const-string v0, "&lt;"

    goto :goto_29

    .line 51
    :sswitch_3f
    const-string v0, "&gt;"

    goto :goto_29

    .line 52
    :sswitch_42
    if-eqz p1, :cond_47

    const-string v0, "&apos;"

    goto :goto_29

    .line 53
    :cond_47
    :sswitch_47
    if-eqz p1, :cond_29

    const-string v0, "&quot;"

    goto :goto_29

    .line 48
    :sswitch_data_4c
    .sparse-switch
        0x22 -> :sswitch_47
        0x26 -> :sswitch_39
        0x27 -> :sswitch_42
        0x3c -> :sswitch_3c
        0x3e -> :sswitch_3f
    .end sparse-switch
.end method
