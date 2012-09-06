.class final Lcom/google/googlenav/appwidget/friends/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/google/googlenav/friend/aK;

.field private final c:Ljava/util/List;

.field private final d:J

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/googlenav/friend/aK;Ljava/util/List;ZJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/c;->a:Ljava/util/List;

    .line 101
    iput-object p2, p0, Lcom/google/googlenav/appwidget/friends/c;->b:Lcom/google/googlenav/friend/aK;

    .line 102
    iput-object p3, p0, Lcom/google/googlenav/appwidget/friends/c;->c:Ljava/util/List;

    .line 103
    iput-boolean p4, p0, Lcom/google/googlenav/appwidget/friends/c;->e:Z

    .line 104
    iput-wide p5, p0, Lcom/google/googlenav/appwidget/friends/c;->d:J

    .line 105
    return-void
.end method

.method public static a()Lcom/google/googlenav/appwidget/friends/c;
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 111
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "LATITUDE_WIDGET_MODEL"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 112
    if-eqz v0, :cond_15

    array-length v1, v0

    if-nez v1, :cond_17

    :cond_15
    move-object v0, v7

    .line 181
    :goto_16
    return-object v0

    .line 118
    :cond_17
    :try_start_17
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 119
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 120
    new-instance v8, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->z:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 121
    invoke-virtual {v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 125
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_d2

    .line 127
    new-instance v2, Lcom/google/googlenav/friend/aK;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/googlenav/friend/aK;-><init>(Lcom/google/googlenav/friend/aM;ZLcom/google/googlenav/ai;)V

    .line 131
    :goto_3d
    sget v0, Lcom/google/googlenav/appwidget/friends/b;->a:I

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 132
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    move v3, v4

    .line 133
    :goto_49
    if-ge v3, v0, :cond_61

    .line 134
    new-instance v5, Lcom/google/googlenav/friend/aK;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v8, v10, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v10

    invoke-static {v10}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v10

    invoke-direct {v5, v6, v9, v10}, Lcom/google/googlenav/friend/aK;-><init>(Lcom/google/googlenav/friend/aM;ZLcom/google/googlenav/ai;)V

    .line 136
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 140
    :cond_61
    :goto_61
    sget v3, Lcom/google/googlenav/appwidget/friends/b;->a:I

    if-ge v0, v3, :cond_6c

    .line 141
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 145
    :cond_6c
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 146
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 147
    :goto_75
    if-ge v4, v0, :cond_ad

    .line 148
    const/4 v5, 0x3

    invoke-virtual {v8, v5, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(II)[B

    move-result-object v5

    .line 149
    array-length v6, v5

    if-nez v6, :cond_86

    .line 150
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :goto_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    .line 152
    :cond_86
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 153
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 154
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 155
    const/4 v9, 0x0

    array-length v10, v5

    invoke-static {v5, v9, v10, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_9b} :catch_9c

    goto :goto_83

    .line 177
    :catch_9c
    move-exception v0

    .line 180
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "LATITUDE_WIDGET_MODEL"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    move-object v0, v7

    .line 181
    goto/16 :goto_16

    .line 161
    :cond_ad
    :goto_ad
    :try_start_ad
    sget v4, Lcom/google/googlenav/appwidget/friends/b;->a:I

    if-ge v0, v4, :cond_b8

    .line 162
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    .line 166
    :cond_b8
    const/4 v0, 0x5

    invoke-static {v8, v0}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v4

    .line 170
    const-wide/high16 v5, -0x8000

    .line 171
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 172
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v5

    .line 175
    :cond_cb
    new-instance v0, Lcom/google/googlenav/appwidget/friends/c;

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/appwidget/friends/c;-><init>(Ljava/util/List;Lcom/google/googlenav/friend/aK;Ljava/util/List;ZJ)V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_d0} :catch_9c

    goto/16 :goto_16

    :cond_d2
    move-object v2, v7

    goto/16 :goto_3d
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/friends/c;)Z
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/googlenav/appwidget/friends/c;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/friends/c;)Lcom/google/googlenav/friend/aK;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->b:Lcom/google/googlenav/friend/aK;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/appwidget/friends/c;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/appwidget/friends/c;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/appwidget/friends/c;)J
    .registers 3
    .parameter

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/googlenav/appwidget/friends/c;->d:J

    return-wide v0
.end method


# virtual methods
.method public b()V
    .registers 7

    .prologue
    .line 187
    :try_start_0
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ag;->z:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 190
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->b:Lcom/google/googlenav/friend/aK;

    if-eqz v0, :cond_1f

    .line 191
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/c;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/aK;->a()Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 195
    const/4 v0, 0x5

    iget-boolean v2, p0, Lcom/google/googlenav/appwidget/friends/c;->e:Z

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addBool(IZ)V

    .line 199
    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->a:Ljava/util/List;

    if-eqz v0, :cond_58

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aK;

    .line 201
    if-eqz v0, :cond_29

    .line 202
    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->a()Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_29

    .line 234
    :catch_44
    move-exception v0

    .line 237
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    const-string v2, "LATITUDE_WIDGET_MODEL"

    invoke-interface {v1, v2}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 238
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 209
    :cond_58
    :try_start_58
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->c:Ljava/util/List;

    if-eqz v0, :cond_97

    .line 210
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 211
    if-nez v0, :cond_78

    .line 212
    const/4 v0, 0x3

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addBytes(I[B)V

    goto :goto_62

    .line 214
    :cond_78
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 215
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 216
    const/4 v0, 0x3

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addBytes(I[B)V

    goto :goto_62

    .line 218
    :cond_8f
    const/4 v0, 0x3

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addBytes(I[B)V

    goto :goto_62

    .line 225
    :cond_97
    iget-wide v2, p0, Lcom/google/googlenav/appwidget/friends/c;->d:J

    const-wide/high16 v4, -0x8000

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a5

    .line 226
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/googlenav/appwidget/friends/c;->d:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 230
    :cond_a5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 231
    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 232
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "LATITUDE_WIDGET_MODEL"

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_be} :catch_44

    .line 240
    return-void
.end method

.method public c()Lcom/google/googlenav/friend/aK;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/c;->b:Lcom/google/googlenav/friend/aK;

    return-object v0
.end method
