.class public Lcom/syncmldstmo/base/vitem/smlVItemTools;
.super Ljava/lang/Object;
.source "smlVItemTools.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field m_items:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlVItemItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlVItemTools;->m_items:Ljava/util/Vector;

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

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v2, pBuf:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 190
    .local v1, nSrcSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v1, :cond_47

    .line 192
    if-nez v0, :cond_7c

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_5a

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_5a

    .line 196
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_36

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_36

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4c

    .line 198
    :cond_36
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    :cond_3f
    :goto_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v4, p2, -0x1

    if-lt v3, v4, :cond_af

    .line 256
    :cond_47
    :goto_47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 202
    :cond_4c
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 203
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 208
    :cond_5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_74

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :goto_6b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v4, p2, -0x1

    if-lt v3, v4, :cond_3f

    goto :goto_47

    .line 214
    :cond_74
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 225
    :cond_7c
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_bb

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_bb

    .line 227
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_9e

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_9e

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_b3

    .line 229
    :cond_9e
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    :goto_a7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v4, p2, -0x1

    if-ge v3, v4, :cond_47

    .line 190
    :cond_af
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    .line 233
    :cond_b3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a7

    .line 236
    :cond_bb
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_47

    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_d3

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a7

    .line 248
    :cond_d3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a7
.end method

.method public VitemGetList(Ljava/lang/String;Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;)Z
    .registers 16
    .parameter "szVItem"
    .parameter "hash"

    .prologue
    .line 24
    const/4 v3, 0x0

    .line 27
    .local v3, i:I
    const/4 v9, 0x0

    .line 28
    .local v9, vcarditem:Lcom/syncmldstmo/base/vitem/smlVItemItem;
    const/4 v4, 0x0

    .line 30
    .local v4, multiline:Z
    invoke-static {p1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 31
    const/4 v10, 0x0

    .line 124
    :goto_a
    return v10

    .line 33
    :cond_b
    const-string v10, "\r\n"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 34
    .local v8, v:[Ljava/lang/String;
    const-string v6, ""

    .line 37
    .local v6, sline:Ljava/lang/String;
    const/4 v3, 0x0

    :goto_14
    array-length v10, v8

    if-ge v3, v10, :cond_e9

    .line 39
    if-nez v4, :cond_25

    aget-object v10, v8, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-ge v10, v11, :cond_25

    .line 37
    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 42
    :cond_25
    aget-object v10, v8, v3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    .line 43
    aget-object v10, v8, v3

    invoke-static {v10}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_22

    .line 46
    aget-object v10, v8, v3

    aget-object v11, v8, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_70

    .line 48
    const-string v10, "QUOTED-PRINTABLE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5b

    aget-object v10, v8, v3

    const-string v11, "QUOTED-PRINTABLE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_70

    .line 51
    :cond_5b
    aget-object v10, v8, v3

    const/4 v11, 0x0

    aget-object v12, v8, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    const/4 v4, 0x1

    .line 53
    goto :goto_22

    .line 56
    :cond_70
    aget-object v10, v8, v3

    invoke-virtual {v6, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    const/16 v10, 0x3a

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 59
    .local v5, nTmp1:I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_82

    .line 61
    const-string v6, ""

    .line 62
    goto :goto_22

    .line 65
    :cond_82
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, ItemTag:Ljava/lang/String;
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, ItemValue:Ljava/lang/String;
    const/16 v10, 0x3b

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 69
    const/4 v10, -0x1

    if-ne v5, v10, :cond_c0

    .line 70
    move-object v7, v0

    .line 74
    .local v7, tag:Ljava/lang/String;
    :goto_97
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 76
    const-string v10, "PHOTO"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c6

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-nez v10, :cond_c6

    .line 80
    add-int/lit8 v3, v3, 0x1

    aget-object v2, v8, v3

    .line 81
    .local v2, PhotoData:Ljava/lang/String;
    :goto_b1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-eqz v10, :cond_c6

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    add-int/lit8 v3, v3, 0x1

    aget-object v2, v8, v3

    goto :goto_b1

    .line 72
    .end local v2           #PhotoData:Ljava/lang/String;
    .end local v7           #tag:Ljava/lang/String;
    :cond_c0
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #tag:Ljava/lang/String;
    goto :goto_97

    .line 88
    :cond_c6
    new-instance v9, Lcom/syncmldstmo/base/vitem/smlVItemItem;

    .end local v9           #vcarditem:Lcom/syncmldstmo/base/vitem/smlVItemItem;
    const/4 v10, 0x0

    invoke-direct {v9, v10, v0, v1}, Lcom/syncmldstmo/base/vitem/smlVItemItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    .restart local v9       #vcarditem:Lcom/syncmldstmo/base/vitem/smlVItemItem;
    iget-object v10, p2, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->str2no:Ljava/util/Hashtable;

    invoke-virtual {v10, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_df

    .line 92
    invoke-virtual {p2, v7}, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/syncmldstmo/base/vitem/smlVItemItem;->setnTagNo(I)V

    .line 120
    :cond_df
    const-string v6, ""

    .line 121
    const/4 v4, 0x0

    .line 122
    iget-object v10, p0, Lcom/syncmldstmo/base/vitem/smlVItemTools;->m_items:Ljava/util/Vector;

    invoke-virtual {v10, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_22

    .line 124
    .end local v0           #ItemTag:Ljava/lang/String;
    .end local v1           #ItemValue:Ljava/lang/String;
    .end local v5           #nTmp1:I
    .end local v7           #tag:Ljava/lang/String;
    :cond_e9
    const/4 v10, 0x1

    goto/16 :goto_a
.end method
