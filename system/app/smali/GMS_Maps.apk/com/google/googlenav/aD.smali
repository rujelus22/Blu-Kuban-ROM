.class public Lcom/google/googlenav/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final b:Lcom/google/googlenav/ui/aV;

.field protected static final c:Lcom/google/googlenav/ui/aV;


# instance fields
.field a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    sput-object v0, Lcom/google/googlenav/ad;->b:Lcom/google/googlenav/ui/aV;

    .line 24
    sget-object v0, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    sput-object v0, Lcom/google/googlenav/ad;->c:Lcom/google/googlenav/ui/aV;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0, p1}, Lcom/google/googlenav/ad;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    iput-object p1, p0, Lcom/google/googlenav/ad;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 37
    :cond_b
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Vector;ZZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 87
    invoke-static {p1, v10}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {p1, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v0, v1

    .line 90
    :goto_c
    if-ge v0, v3, :cond_7c

    .line 91
    if-eqz p3, :cond_15

    if-nez v0, :cond_15

    .line 92
    invoke-direct {p0, p2, p4}, Lcom/google/googlenav/ad;->b(Ljava/util/Vector;Z)V

    .line 94
    :cond_15
    invoke-virtual {p1, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 95
    invoke-static {v4, v9}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v5

    .line 97
    const/4 v6, 0x3

    invoke-static {v4, v6}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-static {v4, v10}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5d

    invoke-static {v6}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5d

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x368

    invoke-static {v7}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/String;

    aput-object v5, v8, v1

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/googlenav/ad;->b:Lcom/google/googlenav/ui/aV;

    invoke-direct {p0, v4, v5, v6, p2}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/aV;Ljava/util/Vector;)V

    .line 90
    :cond_5a
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 106
    :cond_5d
    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/googlenav/ad;->b:Lcom/google/googlenav/ui/aV;

    invoke-direct {p0, v5, v4, v6, p2}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/aV;Ljava/util/Vector;)V

    goto :goto_5a

    .line 110
    :cond_7c
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/aV;Ljava/util/Vector;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 72
    new-instance v0, Lcom/google/googlenav/ui/view/a;

    const/16 v1, 0x902

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    .line 74
    invoke-static {p1, p3, v4, v4, v0}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;ZZLcom/google/googlenav/ui/view/a;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 75
    const/4 v1, 0x1

    invoke-static {p2, p3, v1, v4, v0}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;ZZLcom/google/googlenav/ui/view/a;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    if-nez p1, :cond_5

    .line 128
    :cond_4
    :goto_4
    return v0

    .line 121
    :cond_5
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 123
    const/4 v3, 0x3

    invoke-static {p1, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_1f
    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method

.method private b(Ljava/util/Vector;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 46
    new-instance v1, Lcom/google/googlenav/ui/view/a;

    const/16 v0, 0x902

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_39

    sget-char v0, Lcom/google/googlenav/ui/bn;->bd:C

    :goto_13
    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x367

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ad;->c:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2, v4, v4, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;ZZLcom/google/googlenav/ui/view/a;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 54
    return-void

    .line 48
    :cond_39
    sget-char v0, Lcom/google/googlenav/ui/bn;->bc:C

    goto :goto_13
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 137
    if-nez p1, :cond_6

    .line 158
    :cond_5
    :goto_5
    return v0

    .line 141
    :cond_6
    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 147
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 148
    if-eqz v3, :cond_5

    move v2, v0

    .line 152
    :goto_17
    if-ge v2, v3, :cond_26

    .line 153
    invoke-virtual {p1, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 154
    invoke-direct {p0, v4}, Lcom/google/googlenav/ad;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_26
    move v0, v1

    .line 158
    goto :goto_5
.end method

.method private c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 167
    if-nez p1, :cond_5

    .line 187
    :cond_4
    :goto_4
    return v0

    .line 172
    :cond_5
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ad;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 178
    if-eqz v2, :cond_4

    move v1, v0

    .line 182
    :goto_17
    if-ge v1, v2, :cond_26

    .line 183
    invoke-virtual {p1, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/googlenav/ad;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 187
    :cond_26
    const/4 v0, 0x1

    goto :goto_4
.end method


# virtual methods
.method public a(Ljava/util/Vector;)V
    .registers 5
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/googlenav/ad;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_10

    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ad;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 199
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/googlenav/ad;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Vector;ZZ)V

    .line 201
    :cond_10
    return-void
.end method

.method public a(Ljava/util/Vector;Z)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/google/googlenav/ad;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_24

    .line 210
    iget-object v0, p0, Lcom/google/googlenav/ad;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    move v3, v2

    .line 211
    :goto_e
    if-ge v3, v4, :cond_24

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/ad;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v6, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 213
    if-nez v3, :cond_22

    if-eqz p2, :cond_22

    move v0, v1

    :goto_1b
    invoke-direct {p0, v5, p1, v0, v1}, Lcom/google/googlenav/ad;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Vector;ZZ)V

    .line 211
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    :cond_22
    move v0, v2

    .line 213
    goto :goto_1b

    .line 216
    :cond_24
    return-void
.end method
