.class public Ljcifs/netbios/Name;
.super Ljava/lang/Object;
.source "Name.java"


# static fields
.field private static final DEFAULT_SCOPE:Ljava/lang/String; = null

.field static final OEM_ENCODING:Ljava/lang/String; = null

.field private static final SCOPE_OFFSET:I = 0x21

.field private static final TYPE_OFFSET:I = 0x1f


# instance fields
.field public hexCode:I

.field public name:Ljava/lang/String;

.field public scope:Ljava/lang/String;

.field srcHashCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    const-string v0, "jcifs.netbios.scope"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/Name;->DEFAULT_SCOPE:Ljava/lang/String;

    .line 33
    const-string v0, "jcifs.encoding"

    .line 34
    const-string v1, "file.encoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    sput-object v0, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    .line 26
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "hexCode"
    .parameter "scope"

    .prologue
    const/16 v2, 0xf

    const/4 v1, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_10

    .line 46
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 48
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 49
    iput p2, p0, Ljcifs/netbios/Name;->hexCode:I

    .line 50
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25

    .end local p3
    :goto_20
    iput-object p3, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 51
    iput v1, p0, Ljcifs/netbios/Name;->srcHashCode:I

    .line 52
    return-void

    .line 50
    .restart local p3
    :cond_25
    sget-object p3, Ljcifs/netbios/Name;->DEFAULT_SCOPE:Ljava/lang/String;

    goto :goto_20
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    instance-of v3, p1, Ljcifs/netbios/Name;

    if-nez v3, :cond_7

    .line 175
    :cond_6
    :goto_6
    return v1

    :cond_7
    move-object v0, p1

    .line 171
    check-cast v0, Ljcifs/netbios/Name;

    .line 172
    .local v0, n:Ljcifs/netbios/Name;
    iget-object v3, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    if-nez v3, :cond_24

    iget-object v3, v0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 173
    iget-object v3, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    iget-object v4, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Ljcifs/netbios/Name;->hexCode:I

    iget v4, v0, Ljcifs/netbios/Name;->hexCode:I

    if-ne v3, v4, :cond_6

    move v1, v2

    goto :goto_6

    .line 175
    :cond_24
    iget-object v3, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    iget-object v4, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Ljcifs/netbios/Name;->hexCode:I

    iget v4, v0, Ljcifs/netbios/Name;->hexCode:I

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    iget-object v4, v0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_6
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const v2, 0x1003f

    .line 155
    iget-object v1, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 156
    .local v0, result:I
    iget v1, p0, Ljcifs/netbios/Name;->hexCode:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 157
    iget v1, p0, Ljcifs/netbios/Name;->srcHashCode:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 160
    iget-object v1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_24

    .line 161
    iget-object v1, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_24
    return v0
.end method

.method readScopeWireFormat([BI)I
    .registers 10
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 129
    move v3, p2

    .line 133
    .local v3, start:I
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .local v2, srcIndex:I
    aget-byte v4, p1, p2

    and-int/lit16 v0, v4, 0xff

    .local v0, n:I
    if-nez v0, :cond_f

    .line 134
    const/4 v4, 0x0

    iput-object v4, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 135
    const/4 v4, 0x1

    move p2, v2

    .line 149
    .end local v2           #srcIndex:I
    .restart local p2
    :goto_e
    return v4

    .line 139
    .end local p2
    .restart local v2       #srcIndex:I
    :cond_f
    :try_start_f
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v4, p1, v2, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_1b} :catch_42

    .line 140
    .local v1, sb:Ljava/lang/StringBuffer;
    add-int p2, v2, v0

    .end local v2           #srcIndex:I
    .restart local p2
    move v2, p2

    .line 141
    .end local p2
    .restart local v2       #srcIndex:I
    :goto_1e
    add-int/lit8 p2, v2, 0x1

    .end local v2           #srcIndex:I
    .restart local p2
    :try_start_20
    aget-byte v4, p1, v2

    and-int/lit16 v0, v4, 0xff

    if-nez v0, :cond_2f

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    .line 149
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :goto_2c
    sub-int v4, p2, v3

    goto :goto_e

    .line 142
    .restart local v1       #sb:Ljava/lang/StringBuffer;
    :cond_2f
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v5, p1, p2, v0, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_3f} :catch_45

    .line 143
    add-int/2addr p2, v0

    move v2, p2

    .end local p2
    .restart local v2       #srcIndex:I
    goto :goto_1e

    .line 146
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :catch_42
    move-exception v4

    move p2, v2

    .end local v2           #srcIndex:I
    .restart local p2
    goto :goto_2c

    .restart local v1       #sb:Ljava/lang/StringBuffer;
    :catch_45
    move-exception v4

    goto :goto_2c
.end method

.method readWireFormat([BI)I
    .registers 9
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 79
    const/16 v3, 0x21

    new-array v2, v3, [B

    .line 80
    .local v2, tmp:[B
    const/16 v1, 0xf

    .line 81
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    const/16 v3, 0xf

    if-lt v0, v3, :cond_3b

    .line 89
    :try_start_b
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v3, v2, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_15} :catch_6a

    .line 92
    :goto_15
    add-int/lit8 v3, p2, 0x1f

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x41

    shl-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljcifs/netbios/Name;->hexCode:I

    .line 93
    iget v3, p0, Ljcifs/netbios/Name;->hexCode:I

    add-int/lit8 v4, p2, 0x1f

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x41

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    iput v3, p0, Ljcifs/netbios/Name;->hexCode:I

    .line 94
    add-int/lit8 v3, p2, 0x21

    invoke-virtual {p0, p1, v3}, Ljcifs/netbios/Name;->readScopeWireFormat([BI)I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    return v3

    .line 82
    :cond_3b
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x41

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 83
    aget-byte v3, v2, v0

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x41

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 84
    aget-byte v3, v2, v0

    const/16 v4, 0x20

    if-eq v3, v4, :cond_67

    .line 85
    add-int/lit8 v1, v0, 0x1

    .line 81
    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 90
    :catch_6a
    move-exception v3

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x2e

    .line 178
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v2, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    .line 182
    .local v1, n:Ljava/lang/String;
    if-nez v1, :cond_3d

    .line 183
    const-string v1, "null"

    .line 192
    :cond_f
    :goto_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Ljcifs/netbios/Name;->hexCode:I

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    iget-object v3, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    if-eqz v3, :cond_38

    .line 194
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :cond_38
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 184
    :cond_3d
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_f

    .line 185
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 186
    .local v0, c:[C
    aput-char v4, v0, v5

    .line 187
    aput-char v4, v0, v6

    .line 188
    const/16 v3, 0xe

    aput-char v4, v0, v3

    .line 189
    new-instance v1, Ljava/lang/String;

    .end local v1           #n:Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .restart local v1       #n:Ljava/lang/String;
    goto :goto_f
.end method

.method writeScopeWireFormat([BI)I
    .registers 13
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/16 v9, 0x2e

    const/4 v8, 0x0

    .line 97
    iget-object v5, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    if-nez v5, :cond_b

    .line 98
    aput-byte v8, p1, p2

    .line 99
    const/4 v5, 0x1

    .line 126
    :goto_a
    return v5

    .line 103
    :cond_b
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, dstIndex:I
    aput-byte v9, p1, p2

    .line 105
    :try_start_f
    iget-object v5, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    sget-object v6, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v5, v6, p1, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_21} :catch_51

    .line 108
    :goto_21
    iget-object v5, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int p2, v1, v5

    .line 110
    .end local v1           #dstIndex:I
    .restart local p2
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #dstIndex:I
    aput-byte v8, p1, p2

    .line 114
    add-int/lit8 v3, v1, -0x2

    .line 115
    .local v3, i:I
    iget-object v5, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v2, v3, v5

    .line 116
    .local v2, e:I
    const/4 v0, 0x0

    .line 119
    .local v0, c:I
    :goto_38
    aget-byte v5, p1, v3

    if-ne v5, v9, :cond_4e

    .line 120
    int-to-byte v5, v0

    aput-byte v5, p1, v3

    .line 121
    const/4 v0, 0x0

    .line 125
    :goto_40
    add-int/lit8 v4, v3, -0x1

    .end local v3           #i:I
    .local v4, i:I
    if-gt v3, v2, :cond_53

    .line 126
    iget-object v5, p0, Ljcifs/netbios/Name;->scope:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    move p2, v1

    .end local v1           #dstIndex:I
    .restart local p2
    goto :goto_a

    .line 123
    .end local v4           #i:I
    .end local p2
    .restart local v1       #dstIndex:I
    .restart local v3       #i:I
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 106
    .end local v0           #c:I
    .end local v2           #e:I
    .end local v3           #i:I
    :catch_51
    move-exception v5

    goto :goto_21

    .restart local v0       #c:I
    .restart local v2       #e:I
    .restart local v4       #i:I
    :cond_53
    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_38
.end method

.method writeWireFormat([BI)I
    .registers 7
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 56
    const/16 v2, 0x20

    aput-byte v2, p1, p2

    .line 60
    :try_start_4
    iget-object v2, p0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    sget-object v3, Ljcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 62
    .local v1, tmp:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    array-length v2, v1

    if-lt v0, v2, :cond_37

    .line 66
    :goto_10
    const/16 v2, 0xf

    if-lt v0, v2, :cond_58

    .line 70
    add-int/lit8 v2, p2, 0x1f

    iget v3, p0, Ljcifs/netbios/Name;->hexCode:I

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 71
    add-int/lit8 v2, p2, 0x1f

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Ljcifs/netbios/Name;->hexCode:I

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    aput-byte v3, p1, v2
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_2e} :catch_6d

    .line 74
    .end local v0           #i:I
    .end local v1           #tmp:[B
    :goto_2e
    add-int/lit8 v2, p2, 0x21

    invoke-virtual {p0, p1, v2}, Ljcifs/netbios/Name;->writeScopeWireFormat([BI)I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    return v2

    .line 63
    .restart local v0       #i:I
    .restart local v1       #tmp:[B
    :cond_37
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p2

    :try_start_3c
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 64
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    aget-byte v3, v1, v0

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 67
    :cond_58
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p2

    const/16 v3, 0x43

    aput-byte v3, p1, v2

    .line 68
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    const/16 v3, 0x41

    aput-byte v3, p1, v2
    :try_end_6a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3c .. :try_end_6a} :catch_6d

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 72
    .end local v0           #i:I
    .end local v1           #tmp:[B
    :catch_6d
    move-exception v2

    goto :goto_2e
.end method
