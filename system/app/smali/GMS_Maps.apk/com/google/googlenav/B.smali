.class public Lcom/google/googlenav/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/googlenav/a;)Lcom/google/googlenav/bc;
    .registers 5
    .parameter

    .prologue
    .line 187
    new-instance v0, Lcom/google/googlenav/bd;

    invoke-direct {v0}, Lcom/google/googlenav/bd;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->a(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    .line 193
    invoke-virtual {p0}, Lcom/google/googlenav/a;->f()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The passed in activity has no location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1d
    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {p0}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    .line 226
    :goto_45
    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_52

    .line 228
    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    .line 231
    :cond_52
    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    .line 232
    return-object v0

    .line 203
    :cond_57
    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 204
    if-eqz v2, :cond_67

    .line 205
    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    goto :goto_45

    .line 209
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not create query for home Check-in without a reverse geocode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_6f
    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_96

    .line 216
    if-eqz v2, :cond_92

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " near "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_92
    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    goto :goto_45

    .line 221
    :cond_96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not create query for a place with no display name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(JZZ)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v5, 0x1

    .line 49
    cmp-long v2, p0, v0

    if-gez v2, :cond_b

    move-wide p0, v0

    .line 54
    :cond_b
    const-wide/32 v2, 0x5265c00

    div-long v2, p0, v2

    .line 55
    cmp-long v4, v2, v0

    if-lez v4, :cond_44

    .line 57
    if-eqz p3, :cond_35

    .line 58
    if-eqz p2, :cond_2b

    const/16 v0, 0x1af

    .line 67
    :goto_1a
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_2a
    return-object v0

    .line 58
    :cond_2b
    cmp-long v0, v2, v5

    if-nez v0, :cond_32

    const/16 v0, 0x1ae

    goto :goto_1a

    :cond_32
    const/16 v0, 0x1ad

    goto :goto_1a

    .line 63
    :cond_35
    if-eqz p2, :cond_3a

    const/16 v0, 0x140

    goto :goto_1a

    :cond_3a
    cmp-long v0, v2, v5

    if-nez v0, :cond_41

    const/16 v0, 0x13f

    goto :goto_1a

    :cond_41
    const/16 v0, 0x13e

    goto :goto_1a

    .line 71
    :cond_44
    const-wide/32 v2, 0x36ee80

    div-long v2, p0, v2

    .line 72
    cmp-long v0, v2, v0

    if-lez v0, :cond_7d

    .line 74
    if-eqz p3, :cond_6e

    .line 75
    if-eqz p2, :cond_64

    const/16 v0, 0x1b2

    .line 84
    :goto_53
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 75
    :cond_64
    cmp-long v0, v2, v5

    if-nez v0, :cond_6b

    const/16 v0, 0x1b1

    goto :goto_53

    :cond_6b
    const/16 v0, 0x1b0

    goto :goto_53

    .line 80
    :cond_6e
    if-eqz p2, :cond_73

    const/16 v0, 0x161

    goto :goto_53

    :cond_73
    cmp-long v0, v2, v5

    if-nez v0, :cond_7a

    const/16 v0, 0x160

    goto :goto_53

    :cond_7a
    const/16 v0, 0x15f

    goto :goto_53

    .line 88
    :cond_7d
    const-wide/32 v0, 0xea60

    div-long v1, p0, v0

    .line 90
    cmp-long v0, v1, v5

    if-gtz v0, :cond_8d

    .line 91
    const/16 v0, 0x132

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 92
    :cond_8d
    if-eqz p3, :cond_a7

    .line 93
    if-eqz p2, :cond_a4

    const/16 v0, 0x1b4

    .line 98
    :goto_93
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v0, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 93
    :cond_a4
    const/16 v0, 0x1b3

    goto :goto_93

    .line 96
    :cond_a7
    if-eqz p2, :cond_ac

    const/16 v0, 0x16b

    goto :goto_93

    :cond_ac
    const/16 v0, 0x16a

    goto :goto_93
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x2

    .line 109
    if-nez p0, :cond_7

    .line 110
    const/4 v0, 0x0

    .line 121
    :goto_6
    return-object v0

    .line 113
    :cond_7
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 115
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_27

    .line 116
    invoke-virtual {p0, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    if-nez v3, :cond_24

    .line 118
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 115
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 121
    :cond_27
    invoke-static {p0, v4}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 126
    if-nez p0, :cond_5

    .line 127
    const/4 v0, 0x0

    .line 138
    :cond_4
    :goto_4
    return-object v0

    .line 129
    :cond_5
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 130
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 132
    :cond_10
    invoke-static {p0}, Lcom/google/googlenav/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {p0}, Lcom/google/googlenav/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 138
    goto :goto_4
.end method

.method public static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 143
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-lt v0, v1, :cond_d

    .line 144
    invoke-static {p0, v2, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 151
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-ltz v0, :cond_d

    .line 152
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 2
    .parameter

    .prologue
    .line 160
    if-nez p0, :cond_4

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_3
    return v0

    :cond_4
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    goto :goto_3
.end method

.method public static f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;
    .registers 2
    .parameter

    .prologue
    .line 167
    if-nez p0, :cond_4

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    goto :goto_3
.end method
