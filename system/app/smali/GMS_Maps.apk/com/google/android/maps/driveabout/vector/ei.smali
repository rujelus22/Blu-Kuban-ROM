.class public Lcom/google/android/maps/driveabout/vector/ei;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ln/am;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/ej;

.field private final c:Ljava/util/Map;

.field private d:Ln/Q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 120
    new-instance v0, Ln/am;

    invoke-direct {v0, v1, v1, v1}, Ln/am;-><init>(III)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ei;->b:Ln/am;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/ej;)V
    .registers 3
    .parameter

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ei;->c:Ljava/util/Map;

    .line 196
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ei;->a:Lcom/google/android/maps/driveabout/vector/ej;

    .line 197
    return-void
.end method

.method private a(IIILcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/ej;)Lcom/google/android/maps/driveabout/vector/eh;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ei;->a:Lcom/google/android/maps/driveabout/vector/ej;

    if-eq p5, v0, :cond_2b

    invoke-virtual {p5, p4}, Lcom/google/android/maps/driveabout/vector/ej;->a(Lcom/google/android/maps/driveabout/vector/dg;)Lcom/google/android/maps/driveabout/vector/eh;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 235
    invoke-virtual {p5, p4}, Lcom/google/android/maps/driveabout/vector/ej;->a(Lcom/google/android/maps/driveabout/vector/dg;)Lcom/google/android/maps/driveabout/vector/eh;

    move-result-object v0

    .line 236
    if-nez v0, :cond_2a

    .line 237
    const-string v0, "ZoomTableQuadTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No zoom table for tile type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/google/android/maps/driveabout/vector/eh;->a:Lcom/google/android/maps/driveabout/vector/eh;

    .line 253
    :cond_2a
    :goto_2a
    return-object v0

    .line 242
    :cond_2b
    add-int/lit8 v3, p3, -0x1

    .line 243
    invoke-virtual {p5, p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/ej;->a(III)I

    move-result v0

    .line 244
    invoke-virtual {p5, v0}, Lcom/google/android/maps/driveabout/vector/ej;->a(I)Lcom/google/android/maps/driveabout/vector/ej;

    move-result-object v5

    .line 245
    if-nez v5, :cond_5a

    .line 246
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ei;->a:Lcom/google/android/maps/driveabout/vector/ej;

    invoke-virtual {v0, p4}, Lcom/google/android/maps/driveabout/vector/ej;->a(Lcom/google/android/maps/driveabout/vector/dg;)Lcom/google/android/maps/driveabout/vector/eh;

    move-result-object v0

    .line 247
    if-nez v0, :cond_2a

    .line 248
    const-string v0, "ZoomTableQuadTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No root zoom table for tile type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/google/android/maps/driveabout/vector/eh;->a:Lcom/google/android/maps/driveabout/vector/eh;

    goto :goto_2a

    :cond_5a
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    .line 253
    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/ei;->a(IIILcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/ej;)Lcom/google/android/maps/driveabout/vector/eh;

    move-result-object v0

    goto :goto_2a
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/android/maps/driveabout/vector/ei;
    .registers 16
    .parameter

    .prologue
    .line 136
    if-nez p0, :cond_4

    .line 137
    const/4 v0, 0x0

    .line 192
    :goto_3
    return-object v0

    .line 139
    :cond_4
    const-string v0, "ZoomTableQuadTree.fromProto"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ej;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/ej;-><init>()V

    .line 141
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v9

    .line 142
    const/4 v1, 0x0

    move v8, v1

    :goto_15
    if-ge v8, v9, :cond_a9

    .line 143
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v10

    .line 145
    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 147
    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    .line 148
    const/4 v1, 0x5

    invoke-virtual {v10, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    .line 151
    if-lez v4, :cond_3c

    .line 152
    new-array v1, v4, [I

    .line 153
    const/4 v2, 0x0

    :goto_30
    if-ge v2, v4, :cond_4d

    .line 154
    const/4 v5, 0x2

    invoke-virtual {v10, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v5

    aput v5, v1, v2

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 159
    :cond_3c
    add-int/lit8 v1, v3, 0x1

    sub-int/2addr v1, v6

    new-array v1, v1, [I

    .line 160
    const/4 v2, 0x0

    :goto_42
    sub-int v4, v3, v6

    if-gt v2, v4, :cond_4d

    .line 161
    add-int v4, v2, v6

    aput v4, v1, v2

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 164
    :cond_4d
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 166
    new-instance v5, Lcom/google/android/maps/driveabout/vector/eh;

    invoke-direct {v5, v1, v6, v2, v3}, Lcom/google/android/maps/driveabout/vector/eh;-><init>([IIII)V

    .line 169
    const/4 v1, 0x4

    invoke-virtual {v10, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v11

    .line 171
    const/4 v1, 0x0

    move v7, v1

    :goto_5e
    if-ge v7, v11, :cond_a4

    .line 172
    const/4 v1, 0x4

    invoke-virtual {v10, v1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v12

    .line 174
    const/4 v1, 0x2

    invoke-virtual {v12, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 175
    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 176
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 177
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v13

    .line 178
    new-instance v14, Ln/am;

    invoke-direct {v14, v1, v2, v3}, Ln/am;-><init>(III)V

    .line 179
    const/4 v1, 0x0

    move v6, v1

    :goto_80
    if-ge v6, v13, :cond_a0

    .line 180
    const/4 v1, 0x1

    invoke-virtual {v12, v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/dg;->a(I)Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v4

    .line 184
    if-eqz v4, :cond_9c

    .line 185
    invoke-virtual {v14}, Ln/am;->c()I

    move-result v1

    invoke-virtual {v14}, Ln/am;->d()I

    move-result v2

    invoke-virtual {v14}, Ln/am;->b()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/ej;->a(IIILcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/eh;)V

    .line 179
    :cond_9c
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_80

    .line 171
    :cond_a0
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_5e

    .line 142
    :cond_a4
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_15

    .line 191
    :cond_a9
    const-string v1, "ZoomTableQuadTree.fromProto"

    invoke-static {v1}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ei;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/vector/ei;-><init>(Lcom/google/android/maps/driveabout/vector/ej;)V

    move-object v0, v1

    goto/16 :goto_3
.end method


# virtual methods
.method public a(Ln/Q;Lcom/google/android/maps/driveabout/vector/dg;)Lcom/google/android/maps/driveabout/vector/eh;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ei;->d:Ln/Q;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ei;->d:Ln/Q;

    invoke-virtual {v0, p1}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 264
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ei;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/eh;

    .line 265
    if-eqz v0, :cond_1c

    .line 279
    :goto_16
    return-object v0

    .line 269
    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ei;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 271
    :cond_1c
    const/16 v0, 0x1e

    invoke-static {v0, p1}, Ln/am;->a(ILn/Q;)Ln/am;

    move-result-object v0

    .line 272
    if-nez v0, :cond_26

    .line 273
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ei;->b:Ln/am;

    .line 275
    :cond_26
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ei;->d:Ln/Q;

    .line 276
    invoke-virtual {v0}, Ln/am;->c()I

    move-result v1

    invoke-virtual {v0}, Ln/am;->d()I

    move-result v2

    invoke-virtual {v0}, Ln/am;->b()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/ei;->a:Lcom/google/android/maps/driveabout/vector/ej;

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/ei;->a(IIILcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/ej;)Lcom/google/android/maps/driveabout/vector/eh;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ei;->c:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16
.end method
