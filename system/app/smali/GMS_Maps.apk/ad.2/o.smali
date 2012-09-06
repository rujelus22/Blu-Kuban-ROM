.class public Lad/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lad/o;


# instance fields
.field private final a:Lcom/google/googlenav/common/io/j;

.field private volatile b:Z

.field private c:Ljava/util/Hashtable;

.field private d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final e:Ljava/lang/String;

.field private volatile g:Lad/r;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    iput-object v0, p0, Lad/o;->a:Lcom/google/googlenav/common/io/j;

    .line 52
    iput-boolean v1, p0, Lad/o;->b:Z

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lad/o;->c:Ljava/util/Hashtable;

    .line 70
    iput-object p1, p0, Lad/o;->e:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static declared-synchronized a()Lad/o;
    .registers 2

    .prologue
    .line 78
    const-class v1, Lad/o;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lad/o;->f:Lad/o;

    if-nez v0, :cond_a

    .line 79
    invoke-static {}, Lad/o;->b()V

    .line 83
    :cond_a
    sget-object v0, Lad/o;->f:Lad/o;

    invoke-virtual {v0}, Lad/o;->c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    if-nez v0, :cond_17

    .line 84
    sget-object v0, Lad/o;->f:Lad/o;

    invoke-direct {v0}, Lad/o;->f()V

    .line 87
    :cond_17
    sget-object v0, Lad/o;->f:Lad/o;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lad/o;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lad/o;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method static synthetic a(Lad/o;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lad/o;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    .line 323
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 325
    :try_start_5
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 326
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 327
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_1c

    .line 332
    invoke-direct {p0}, Lad/o;->h()Ljava/lang/String;

    move-result-object v0

    .line 333
    iget-object v2, p0, Lad/o;->a:Lcom/google/googlenav/common/io/j;

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I

    move-result v0

    .line 334
    if-gtz v0, :cond_1b

    .line 339
    :cond_1b
    return-void

    .line 328
    :catch_1c
    move-exception v0

    .line 329
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error saving directions options: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 113
    iput-object p1, p0, Lad/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 114
    invoke-virtual {p1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 115
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3, v2}, Ljava/util/Hashtable;-><init>(I)V

    move v0, v1

    .line 117
    :goto_e
    if-ge v0, v2, :cond_22

    .line 118
    invoke-virtual {p1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 120
    invoke-virtual {v4, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    .line 121
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 129
    :cond_22
    iput-object v3, p0, Lad/o;->c:Ljava/util/Hashtable;

    .line 130
    iput-boolean v1, p0, Lad/o;->b:Z

    .line 133
    if-nez p2, :cond_4b

    .line 134
    iget-object v0, p0, Lad/o;->g:Lad/r;

    if-eqz v0, :cond_34

    .line 135
    iget-object v0, p0, Lad/o;->g:Lad/r;

    invoke-interface {v0}, Lad/r;->a()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lad/o;->g:Lad/r;

    .line 138
    :cond_34
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 139
    invoke-virtual {v0, v6, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 141
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lad/p;

    invoke-direct {v2, p0, v0}, Lad/p;-><init>(Lad/o;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    .line 148
    :cond_4b
    return-void
.end method

.method public static declared-synchronized b()V
    .registers 3

    .prologue
    .line 95
    const-class v1, Lad/o;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/googlenav/common/Config;->f()Ljava/lang/String;

    move-result-object v0

    .line 96
    sget-object v2, Lad/o;->f:Lad/o;

    if-eqz v2, :cond_15

    sget-object v2, Lad/o;->f:Lad/o;

    iget-object v2, v2, Lad/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 97
    :cond_15
    new-instance v2, Lad/o;

    invoke-direct {v2, v0}, Lad/o;-><init>(Ljava/lang/String;)V

    sput-object v2, Lad/o;->f:Lad/o;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    .line 99
    :cond_1c
    monitor-exit v1

    return-void

    .line 95
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lad/o;->b:Z

    .line 202
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v1, Lad/q;

    invoke-direct {v1, p0}, Lad/q;-><init>(Lad/o;)V

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 203
    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 281
    invoke-direct {p0}, Lad/o;->g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_14

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 284
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lad/o;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 287
    :cond_14
    return-void
.end method

.method private g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lad/o;->a:Lcom/google/googlenav/common/io/j;

    invoke-direct {p0}, Lad/o;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v2

    .line 298
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/ag;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 301
    if-eqz v2, :cond_17

    array-length v3, v2

    if-nez v3, :cond_19

    :cond_17
    move-object v0, v1

    .line 314
    :goto_18
    return-object v0

    .line 306
    :cond_19
    :try_start_19
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_18

    .line 307
    :catch_1d
    move-exception v0

    move-object v0, v1

    .line 311
    goto :goto_18
.end method

.method private h()Ljava/lang/String;
    .registers 3

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OptionDefinitionBlock_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lad/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/util/Vector;
    .registers 13
    .parameter

    .prologue
    const/16 v10, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lad/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_e

    .line 242
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 274
    :goto_d
    return-object v0

    .line 244
    :cond_e
    packed-switch p1, :pswitch_data_4c

    .line 258
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto :goto_d

    :pswitch_17
    move v0, v1

    .line 261
    :goto_18
    iget-object v3, p0, Lad/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 262
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v6}, Ljava/util/Vector;-><init>(I)V

    move v5, v1

    .line 263
    :goto_24
    if-ge v5, v6, :cond_49

    .line 264
    iget-object v4, p0, Lad/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v4, v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 266
    invoke-virtual {v7, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v8

    move v4, v1

    .line 267
    :goto_31
    if-ge v4, v8, :cond_3c

    .line 268
    invoke-virtual {v7, v10, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v9

    if-ne v9, v0, :cond_46

    .line 269
    invoke-virtual {v3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_3c
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_24

    :pswitch_40
    move v0, v2

    .line 250
    goto :goto_18

    .line 252
    :pswitch_42
    const/4 v0, 0x2

    .line 253
    goto :goto_18

    .line 255
    :pswitch_44
    const/4 v0, 0x3

    .line 256
    goto :goto_18

    .line 267
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_49
    move-object v0, v3

    .line 274
    goto :goto_d

    .line 244
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_40
        :pswitch_42
        :pswitch_44
    .end packed-switch
.end method

.method public a(Lad/r;)V
    .registers 2
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lad/o;->g:Lad/r;

    .line 408
    return-void
.end method

.method public a([I)V
    .registers 5
    .parameter

    .prologue
    .line 183
    iget-boolean v0, p0, Lad/o;->b:Z

    if-eqz v0, :cond_5

    .line 194
    :cond_4
    :goto_4
    return-void

    .line 187
    :cond_5
    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 188
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lad/o;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 190
    invoke-direct {p0}, Lad/o;->e()V

    goto :goto_4

    .line 187
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lad/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lad/o;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lad/o;->b:Z

    if-nez v0, :cond_d

    .line 169
    invoke-direct {p0}, Lad/o;->e()V

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
