.class public abstract Lax/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax/Q;
.implements Lax/r;


# static fields
.field private static final f:Ljava/util/Comparator;

.field private static final g:Ljava/util/Comparator;


# instance fields
.field protected final a:I

.field protected final b:Lax/N;

.field private final c:Ljava/util/List;

.field private d:Lax/F;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    new-instance v0, Lax/t;

    invoke-direct {v0}, Lax/t;-><init>()V

    sput-object v0, Lax/s;->f:Ljava/util/Comparator;

    .line 68
    new-instance v0, Lax/u;

    invoke-direct {v0}, Lax/u;-><init>()V

    sput-object v0, Lax/s;->g:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lax/N;Lax/F;IZLax/O;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lax/s;->b:Lax/N;

    .line 143
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lax/s;->c:Ljava/util/List;

    .line 144
    invoke-interface {p1, p0}, Lax/N;->a(Lax/Q;)V

    .line 145
    invoke-interface {p1, p3, p5}, Lax/N;->a(ILax/O;)V

    .line 146
    iput-object p2, p0, Lax/s;->d:Lax/F;

    .line 147
    iput p3, p0, Lax/s;->a:I

    .line 148
    iput-boolean p4, p0, Lax/s;->e:Z

    .line 149
    return-void
.end method

.method public static a(ILax/N;Lax/F;)Lax/s;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    packed-switch p0, :pswitch_data_44

    .line 135
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 86
    :pswitch_5
    new-instance v0, Lax/G;

    invoke-direct {v0, p1, p2}, Lax/G;-><init>(Lax/N;Lax/F;)V

    goto :goto_4

    .line 88
    :pswitch_b
    new-instance v0, Lax/k;

    new-instance v1, Lax/v;

    invoke-direct {v1}, Lax/v;-><init>()V

    invoke-direct {v0, p1, p2, p0, v1}, Lax/k;-><init>(Lax/N;Lax/F;ILax/O;)V

    goto :goto_4

    .line 99
    :pswitch_16
    new-instance v0, Lax/k;

    new-instance v1, Lax/w;

    invoke-direct {v1}, Lax/w;-><init>()V

    invoke-direct {v0, p1, p2, p0, v1}, Lax/k;-><init>(Lax/N;Lax/F;ILax/O;)V

    goto :goto_4

    .line 112
    :pswitch_21
    new-instance v0, Lax/k;

    new-instance v1, Lax/x;

    invoke-direct {v1}, Lax/x;-><init>()V

    invoke-direct {v0, p1, p2, p0, v1}, Lax/k;-><init>(Lax/N;Lax/F;ILax/O;)V

    goto :goto_4

    .line 122
    :pswitch_2c
    new-instance v0, Lax/k;

    new-instance v1, Lax/y;

    invoke-direct {v1}, Lax/y;-><init>()V

    invoke-direct {v0, p1, p2, p0, v1}, Lax/k;-><init>(Lax/N;Lax/F;ILax/O;)V

    goto :goto_4

    .line 131
    :pswitch_37
    new-instance v0, Lax/B;

    invoke-direct {v0, p1, p2}, Lax/B;-><init>(Lax/N;Lax/F;)V

    goto :goto_4

    .line 133
    :pswitch_3d
    new-instance v0, Lax/i;

    invoke-direct {v0, p1, p2}, Lax/i;-><init>(Lax/N;Lax/F;)V

    goto :goto_4

    .line 84
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_b
        :pswitch_16
        :pswitch_21
        :pswitch_3d
        :pswitch_2c
        :pswitch_37
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lax/E;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 287
    :goto_6
    return-void

    .line 278
    :cond_7
    :try_start_7
    invoke-virtual {p2}, Lax/E;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_21

    move-result-object v0

    .line 284
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 285
    const/4 v1, 0x4

    invoke-virtual {p2}, Lax/E;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 286
    iget-object v1, p0, Lax/s;->d:Lax/F;

    invoke-virtual {v1, p1, v0}, Lax/F;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_6

    .line 279
    :catch_21
    move-exception v0

    goto :goto_6
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 205
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/hc;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 206
    invoke-virtual {v0, v4, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 207
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lax/s;->b:Lax/N;

    iget v3, p0, Lax/s;->a:I

    invoke-interface {v2, v3, v1}, Lax/N;->a(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_23

    .line 215
    :try_start_19
    invoke-static {v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_30

    move-result-object v1

    .line 219
    invoke-virtual {p0, v1, p1}, Lax/s;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 220
    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 224
    :cond_23
    iget-boolean v1, p0, Lax/s;->e:Z

    if-eqz v1, :cond_33

    .line 225
    iget-object v1, p0, Lax/s;->b:Lax/N;

    iget v2, p0, Lax/s;->a:I

    invoke-interface {v1, v2, v0}, Lax/N;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    .line 227
    :goto_2f
    return v0

    .line 216
    :catch_30
    move-exception v0

    .line 217
    const/4 v0, 0x0

    goto :goto_2f

    .line 227
    :cond_33
    iget-object v1, p0, Lax/s;->b:Lax/N;

    iget v2, p0, Lax/s;->a:I

    invoke-interface {v1, v2, v0}, Lax/N;->b(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    goto :goto_2f
.end method

.method private f(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lax/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/z;

    .line 341
    invoke-interface {v0, p1}, Lax/z;->b(Ljava/lang/String;)V

    goto :goto_6

    .line 343
    :cond_16
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lax/A;
.end method

.method public a(Ljava/lang/String;)Lax/A;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 165
    :cond_7
    :goto_7
    return-object v0

    .line 161
    :cond_8
    iget-object v1, p0, Lax/s;->b:Lax/N;

    iget v2, p0, Lax/s;->a:I

    invoke-interface {v1, v2, p1}, Lax/N;->a(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_7

    .line 163
    invoke-virtual {p0, v1}, Lax/s;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lax/A;

    move-result-object v0

    goto :goto_7
.end method

.method public a()Ljava/util/List;
    .registers 4

    .prologue
    .line 196
    iget-object v0, p0, Lax/s;->b:Lax/N;

    iget v1, p0, Lax/s;->a:I

    invoke-interface {v0, v1}, Lax/N;->b(I)Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 199
    invoke-virtual {p0, v0}, Lax/s;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lax/A;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 201
    :cond_28
    return-object v1
.end method

.method public a(Lat/B;)Ljava/util/List;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 363
    invoke-virtual {p0}, Lax/s;->a()Ljava/util/List;

    move-result-object v3

    .line 364
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lax/A;

    move v1, v2

    .line 365
    :goto_c
    array-length v0, v4

    if-ge v1, v0, :cond_28

    .line 366
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    .line 367
    invoke-virtual {v0}, Lax/A;->j()Lat/B;

    move-result-object v5

    .line 368
    if-eqz v5, :cond_22

    .line 369
    invoke-virtual {v5, p1}, Lat/B;->a(Lat/B;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lax/A;->c(J)V

    .line 371
    :cond_22
    aput-object v0, v4, v1

    .line 365
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 374
    :cond_28
    sget-object v0, Lax/s;->f:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 376
    array-length v0, v4

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 377
    array-length v1, v4

    :goto_33
    if-ge v2, v1, :cond_41

    aget-object v3, v4, v2

    .line 378
    invoke-virtual {v3}, Lax/A;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 380
    :cond_41
    return-object v0
.end method

.method protected abstract a(Lax/A;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
.end method

.method public a(Lax/E;)V
    .registers 3
    .parameter

    .prologue
    .line 264
    invoke-virtual {p1}, Lax/E;->a()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-direct {p0, v0, p1}, Lax/s;->a(Ljava/lang/String;Lax/E;)V

    .line 266
    invoke-direct {p0, v0}, Lax/s;->f(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public a(Lax/z;)V
    .registers 3
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lax/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method

.method protected abstract a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
.end method

.method public a(Lax/A;)Z
    .registers 5
    .parameter

    .prologue
    .line 239
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/hc;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 240
    invoke-virtual {p0, p1, v0}, Lax/s;->a(Lax/A;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 241
    const/4 v1, 0x2

    invoke-virtual {p1}, Lax/A;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 242
    invoke-direct {p0, v0}, Lax/s;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method public a_(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 318
    iget v0, p0, Lax/s;->a:I

    if-eq p1, v0, :cond_5

    .line 326
    :cond_4
    :goto_4
    return-void

    .line 321
    :cond_5
    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 325
    invoke-direct {p0, p2}, Lax/s;->f(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public b(Ljava/lang/String;)Lax/E;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 181
    :cond_7
    :goto_7
    return-object v0

    .line 180
    :cond_8
    iget-object v1, p0, Lax/s;->d:Lax/F;

    invoke-virtual {v1, p1}, Lax/F;->a(Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_7

    new-instance v0, Lax/E;

    invoke-direct {v0, v1}, Lax/E;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_7
.end method

.method public b()Ljava/util/List;
    .registers 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lax/s;->d()Ljava/util/List;

    move-result-object v0

    .line 386
    return-object v0
.end method

.method public b(Lax/z;)V
    .registers 3
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lax/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 391
    iget-object v0, p0, Lax/s;->b:Lax/N;

    iget v1, p0, Lax/s;->a:I

    invoke-interface {v0, v1}, Lax/N;->c(I)V

    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lax/s;->f(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 186
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lax/s;->d:Lax/F;

    invoke-virtual {v0, p1}, Lax/F;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public d()Ljava/util/List;
    .registers 6

    .prologue
    .line 347
    invoke-virtual {p0}, Lax/s;->a()Ljava/util/List;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lax/A;

    .line 350
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 351
    sget-object v2, Lax/s;->g:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 353
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 354
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v3, :cond_2a

    aget-object v4, v1, v0

    .line 355
    invoke-virtual {v4}, Lax/A;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 358
    :cond_2a
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 191
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lax/s;->d:Lax/F;

    invoke-virtual {v0, p1}, Lax/F;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public e(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lax/s;->b:Lax/N;

    iget v1, p0, Lax/s;->a:I

    invoke-interface {v0, v1, p1}, Lax/N;->b(ILjava/lang/String;)V

    .line 299
    invoke-direct {p0, p1}, Lax/s;->f(Ljava/lang/String;)V

    .line 300
    return-void
.end method
