.class public Lcom/wssnps/base/smlVItemTools;
.super Ljava/lang/Object;
.source "smlVItemTools.java"


# instance fields
.field m_items:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/wssnps/base/smlVItemItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlVItemTools;->m_items:Ljava/util/Vector;

    .line 6
    return-void
.end method


# virtual methods
.method public DecodeEscapeChar(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .parameter "pSrc"
    .parameter "nBufSize"

    .prologue
    const/16 v7, 0x3b

    const/16 v6, 0x2c

    const/16 v5, 0x5c

    .line 159
    const-string v2, ""

    .line 162
    .local v2, pBuf:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 164
    .local v1, nSrcSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-lt v0, v1, :cond_10

    .line 232
    :cond_f
    :goto_f
    return-object v2

    .line 166
    :cond_10
    if-nez v0, :cond_80

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_5f

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_5f

    .line 170
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_34

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_34

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_58

    .line 173
    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 192
    :goto_4d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, p2, -0x1

    if-ge v3, v4, :cond_f

    .line 164
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 178
    :cond_58
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4d

    .line 183
    :cond_5f
    if-nez v2, :cond_6a

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_4d

    .line 189
    :cond_6a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4d

    .line 197
    :cond_80
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_db

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_db

    .line 199
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_a2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_a2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_c5

    .line 202
    :cond_a2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    add-int/lit8 v0, v0, 0x1

    .line 226
    :goto_bb
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, p2, -0x1

    if-lt v3, v4, :cond_55

    goto/16 :goto_f

    .line 207
    :cond_c5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_bb

    .line 210
    :cond_db
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_f

    .line 216
    if-nez v2, :cond_ec

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_bb

    .line 222
    :cond_ec
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_bb
.end method

.method public EncodeEscapeChar(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "pSrc"
    .parameter "nBufSize"

    .prologue
    .line 135
    const-string v2, ""

    .line 139
    .local v2, pBuf:Ljava/lang/String;
    if-nez p1, :cond_6

    .line 140
    const/4 v3, 0x0

    .line 154
    :goto_5
    return-object v3

    .line 142
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 144
    .local v1, nSrcSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-lt v0, v1, :cond_f

    move-object v3, v2

    .line 154
    goto :goto_5

    .line 146
    :cond_f
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_2d

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 148
    :cond_2d
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_49

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\\\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 151
    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a
.end method

.method public VitemGetList(Ljava/lang/String;Lcom/wssnps/base/smlVItemTag$VitemHash;)Z
    .registers 16
    .parameter "szVItem"
    .parameter "hash"

    .prologue
    .line 12
    const/4 v2, 0x0

    .line 18
    .local v2, i:I
    const/4 v8, 0x0

    .line 20
    .local v8, vcarditem:Lcom/wssnps/base/smlVItemItem;
    if-nez p1, :cond_6

    .line 22
    const/4 v9, 0x0

    .line 127
    :goto_5
    return v9

    .line 25
    :cond_6
    const-string v9, "\n"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 28
    .local v7, v:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v9, ""

    invoke-direct {v5, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 29
    .local v5, sline:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :goto_14
    array-length v9, v7

    if-lt v2, v9, :cond_19

    .line 127
    const/4 v9, 0x1

    goto :goto_5

    .line 31
    :cond_19
    aget-object v9, v7, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_25

    .line 29
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 33
    :cond_25
    aget-object v9, v7, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v2

    .line 35
    aget-object v9, v7, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6e

    aget-object v9, v7, v2

    aget-object v10, v7, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_6e

    .line 37
    const-string v9, "QUOTED-PRINTABLE"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5b

    aget-object v9, v7, v2

    const-string v10, "QUOTED-PRINTABLE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6e

    .line 40
    :cond_5b
    aget-object v9, v7, v2

    const/4 v10, 0x0

    aget-object v11, v7, v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 45
    :cond_6e
    aget-object v9, v7, v2

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "X-CUSTOM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 51
    .local v3, nTmp1:I
    :goto_93
    const/4 v9, -0x1

    if-ne v3, v9, :cond_aa

    .line 54
    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->capacity()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 50
    .end local v3           #nTmp1:I
    :cond_9f
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .restart local v3       #nTmp1:I
    goto :goto_93

    .line 57
    :cond_aa
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, ItemTag:Ljava/lang/String;
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, ItemValue:Ljava/lang/String;
    const-string v9, ";"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 60
    const/4 v9, -0x1

    if-ne v3, v9, :cond_106

    .line 61
    move-object v6, v0

    .line 65
    .local v6, tag:Ljava/lang/String;
    :goto_bf
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 66
    const-string v9, "PHOTO"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dd

    .line 68
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v9, ""

    invoke-direct {v4, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 71
    .local v4, photoStr:Ljava/lang/StringBuffer;
    :goto_d6
    array-length v9, v7

    if-gt v9, v2, :cond_10c

    .line 84
    :cond_d9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .end local v4           #photoStr:Ljava/lang/StringBuffer;
    :cond_dd
    new-instance v8, Lcom/wssnps/base/smlVItemItem;

    .end local v8           #vcarditem:Lcom/wssnps/base/smlVItemItem;
    const/4 v9, 0x0

    invoke-direct {v8, v9, v0, v1}, Lcom/wssnps/base/smlVItemItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    .restart local v8       #vcarditem:Lcom/wssnps/base/smlVItemItem;
    iget-object v9, p2, Lcom/wssnps/base/smlVItemTag$VitemHash;->str2no:Ljava/util/Hashtable;

    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f6

    .line 91
    invoke-virtual {p2, v6}, Lcom/wssnps/base/smlVItemTag$VitemHash;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/wssnps/base/smlVItemItem;->setnTagNo(I)V

    .line 122
    :cond_f6
    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->capacity()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 123
    iget-object v9, p0, Lcom/wssnps/base/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 124
    const/4 v8, 0x0

    goto/16 :goto_22

    .line 63
    .end local v6           #tag:Ljava/lang/String;
    :cond_106
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #tag:Ljava/lang/String;
    goto :goto_bf

    .line 73
    .restart local v4       #photoStr:Ljava/lang/StringBuffer;
    :cond_10c
    add-int/lit8 v9, v2, 0x1

    aget-object v9, v7, v9

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 74
    const/4 v9, -0x1

    if-ne v3, v9, :cond_d9

    .line 77
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\r\n"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v2, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 69
    goto :goto_d6
.end method
