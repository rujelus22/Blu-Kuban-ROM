.class public Lcom/google/android/maps/driveabout/vector/cX;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;


# instance fields
.field private final b:[Lcom/google/android/maps/driveabout/vector/cV;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cX;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/cV;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cX;->b:[Lcom/google/android/maps/driveabout/vector/cV;

    .line 169
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 161
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cX;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cX;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cX;->b:[Lcom/google/android/maps/driveabout/vector/cV;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    .line 244
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cX;->b:[Lcom/google/android/maps/driveabout/vector/cV;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 245
    if-eqz v3, :cond_d

    .line 246
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 244
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 249
    :cond_10
    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 134
    const-string v0, "TexturePool.initialize"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cX;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cX;-><init>()V

    .line 136
    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/vector/cX;->b(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 137
    sget-object v1, Lcom/google/android/maps/driveabout/vector/cX;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "TexturePool.initialize"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cX;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cX;

    .line 147
    if-eqz v0, :cond_12

    .line 148
    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cX;->a()V

    .line 149
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cX;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_12
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 259
    invoke-virtual {v0, p6}, Lcom/google/android/maps/driveabout/vector/cV;->a(Z)V

    .line 260
    invoke-virtual {v0, p7}, Lcom/google/android/maps/driveabout/vector/cV;->b(Z)V

    .line 261
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->c(Z)V

    .line 262
    if-eqz p5, :cond_1f

    .line 263
    if-eqz p8, :cond_1b

    .line 264
    invoke-virtual {v0, p2, p4}, Lcom/google/android/maps/driveabout/vector/cV;->d(Landroid/content/res/Resources;I)V

    .line 276
    :goto_16
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cX;->b:[Lcom/google/android/maps/driveabout/vector/cV;

    aput-object v0, v1, p3

    .line 277
    return-void

    .line 266
    :cond_1b
    invoke-virtual {v0, p2, p4}, Lcom/google/android/maps/driveabout/vector/cV;->c(Landroid/content/res/Resources;I)V

    goto :goto_16

    .line 269
    :cond_1f
    if-eqz p8, :cond_25

    .line 270
    invoke-virtual {v0, p2, p4}, Lcom/google/android/maps/driveabout/vector/cV;->b(Landroid/content/res/Resources;I)V

    goto :goto_16

    .line 272
    :cond_25
    invoke-virtual {v0, p2, p4}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/content/res/Resources;I)V

    goto :goto_16
.end method

.method private b(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 173
    const/4 v3, 0x0

    const v4, 0x7f02016c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 176
    const/16 v3, 0x19

    const v4, 0x7f020178

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 178
    const/16 v3, 0x1a

    const v4, 0x7f02016d

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 180
    const/16 v3, 0x1b

    const v4, 0x7f02016e

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 182
    const/16 v3, 0x1c

    const v4, 0x7f02016f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 184
    const/16 v3, 0x1d

    const v4, 0x7f020170

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 186
    const/16 v3, 0x1e

    const v4, 0x7f020169

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 189
    const/4 v3, 0x1

    const v4, 0x7f020171

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 191
    const/4 v3, 0x2

    const v4, 0x7f020173

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 193
    const/4 v3, 0x3

    const v4, 0x7f020175

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 195
    const/4 v3, 0x4

    const v4, 0x7f020177

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 197
    const/4 v3, 0x5

    const v4, 0x7f020172

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 199
    const/4 v3, 0x6

    const v4, 0x7f020174

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 201
    const/16 v3, 0x16

    const v4, 0x7f020176

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 203
    const/4 v3, 0x7

    const v4, 0x7f02017a

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 205
    const/16 v3, 0x15

    const v4, 0x7f020179

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 207
    const/16 v3, 0x8

    const v4, 0x7f02017b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 209
    const/16 v3, 0x9

    const v4, 0x7f02017c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 211
    const/16 v3, 0xa

    const v4, 0x7f02017d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 213
    const/16 v3, 0x14

    const v4, 0x7f020163

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 215
    const/16 v3, 0x17

    const v4, 0x7f02016a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 217
    const/16 v3, 0x18

    const v4, 0x7f020166

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 221
    const/16 v3, 0xb

    const v4, 0x7f02017e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;Landroid/content/res/Resources;IIZZZZ)V

    .line 241
    return-void
.end method
