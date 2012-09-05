.class public Lcom/vlingo/client/core/util/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrapInCDATA(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "data"

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v0, buff:Ljava/lang/StringBuffer;
    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, "]]>"

    const-string v2, "]]]><![CDATA[]>"

    invoke-static {p0, v1, v2}, Lcom/vlingo/client/core/util/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static xmlDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "str"

    .prologue
    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v1, 0x0

    .line 62
    :goto_3
    return-object v1

    .line 60
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 61
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-static {p0, v0}, Lcom/vlingo/client/core/util/XmlUtils;->xmlDecode(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static xmlDecode(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 7
    .parameter "str"
    .parameter "sb"

    .prologue
    const/16 v4, 0x26

    .line 66
    if-nez p0, :cond_5

    .line 100
    :cond_4
    return-void

    .line 68
    :cond_5
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 70
    .local v0, c:C
    if-ne v0, v4, :cond_6a

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, substr:Ljava/lang/String;
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 74
    add-int/lit8 v1, v1, 0x5

    .line 75
    const/16 v3, 0x22

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    .end local v2           #substr:Ljava/lang/String;
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 77
    .restart local v2       #substr:Ljava/lang/String;
    :cond_28
    const-string v3, "&apos;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 78
    add-int/lit8 v1, v1, 0x5

    .line 79
    const/16 v3, 0x27

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_25

    .line 81
    :cond_38
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 82
    add-int/lit8 v1, v1, 0x4

    .line 83
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_25

    .line 85
    :cond_46
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 86
    add-int/lit8 v1, v1, 0x3

    .line 87
    const/16 v3, 0x3c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_25

    .line 89
    :cond_56
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 90
    add-int/lit8 v1, v1, 0x3

    .line 91
    const/16 v3, 0x3e

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_25

    .line 94
    :cond_66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_25

    .line 97
    .end local v2           #substr:Ljava/lang/String;
    :cond_6a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_25
.end method

.method public static xmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "str"

    .prologue
    .line 20
    if-nez p0, :cond_4

    .line 21
    const/4 v1, 0x0

    .line 24
    :goto_3
    return-object v1

    .line 22
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 23
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-static {p0, v0}, Lcom/vlingo/client/core/util/XmlUtils;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static xmlEncode(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 5
    .parameter "str"
    .parameter "sb"

    .prologue
    .line 28
    if-nez p0, :cond_3

    .line 40
    :cond_2
    return-void

    .line 30
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 32
    .local v0, c:C
    const/16 v2, 0x22

    if-ne v0, v2, :cond_1a

    const-string v2, "&quot;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    :cond_17
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 33
    :cond_1a
    const/16 v2, 0x27

    if-ne v0, v2, :cond_24

    const-string v2, "&apos;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_17

    .line 34
    :cond_24
    const/16 v2, 0x26

    if-ne v0, v2, :cond_2e

    const-string v2, "&amp;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_17

    .line 35
    :cond_2e
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_38

    const-string v2, "&lt;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_17

    .line 36
    :cond_38
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_42

    const-string v2, "&gt;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_17

    .line 38
    :cond_42
    const/16 v2, 0x1f

    if-le v0, v2, :cond_17

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_17
.end method

.method public static xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "str"
    .parameter "sb"

    .prologue
    .line 43
    if-nez p0, :cond_3

    .line 55
    :cond_2
    return-void

    .line 45
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 47
    .local v0, c:C
    const/16 v2, 0x22

    if-ne v0, v2, :cond_1a

    const-string v2, "&quot;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_17
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 48
    :cond_1a
    const/16 v2, 0x27

    if-ne v0, v2, :cond_24

    const-string v2, "&apos;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 49
    :cond_24
    const/16 v2, 0x26

    if-ne v0, v2, :cond_2e

    const-string v2, "&amp;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 50
    :cond_2e
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_38

    const-string v2, "&lt;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 51
    :cond_38
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_42

    const-string v2, "&gt;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 53
    :cond_42
    const/16 v2, 0x1f

    if-le v0, v2, :cond_17

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17
.end method
