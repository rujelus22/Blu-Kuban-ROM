.class Lcom/google/googlenav/friend/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/f;
.implements Lcom/google/googlenav/friend/bh;
.implements Lcom/google/googlenav/r;


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/googlenav/friend/android/a;

.field private c:Lcom/google/googlenav/friend/android/d;

.field private d:Lcom/google/googlenav/friend/checkins/c;

.field private e:Lcom/google/googlenav/a;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/android/a;Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/friend/android/d;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/google/googlenav/friend/android/c;->d:Lcom/google/googlenav/friend/checkins/c;

    .line 106
    iput-object p3, p0, Lcom/google/googlenav/friend/android/c;->c:Lcom/google/googlenav/friend/android/d;

    .line 107
    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->d(Lcom/google/googlenav/friend/android/a;)Lcom/google/googlenav/friend/android/p;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/friend/android/c;->a:Z

    .line 348
    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->d(Lcom/google/googlenav/friend/android/a;)Lcom/google/googlenav/friend/android/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/friend/android/p;->b()V

    .line 350
    :cond_14
    return-void
.end method

.method private a(Lcom/google/googlenav/a;Ljava/util/List;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 283
    invoke-static {p2}, Lcom/google/googlenav/friend/android/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {p1}, Lcom/google/googlenav/a;->i()Ljava/lang/String;

    move-result-object v2

    .line 287
    const/16 v1, 0x223

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v8

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    const/16 v0, 0x224

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/String;

    aput-object v2, v3, v8

    invoke-static {v0, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-virtual {p1}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v4

    .line 295
    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    const/4 v5, 0x0

    const v7, 0x7f02027d

    move-object v3, v1

    invoke-static/range {v0 .. v8}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V

    .line 297
    return-void
.end method

.method private a(Lcom/google/googlenav/h;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/c;->b(Lcom/google/googlenav/h;)V

    .line 231
    return-void
.end method

.method private a(Lcom/google/googlenav/h;Z)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 266
    const/16 v0, 0x227

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    const/16 v0, 0x228

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {p1}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v3

    .line 270
    const v7, 0x7f020280

    .line 272
    invoke-virtual {p1}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v4

    .line 274
    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    move-object v5, p1

    move v8, p2

    invoke-static/range {v0 .. v8}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/h;ZIZ)V

    .line 275
    return-void
.end method

.method private a(Lcom/google/googlenav/h;ZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->b(Lcom/google/googlenav/friend/android/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/checkins/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->b(Lcom/google/googlenav/friend/android/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/h;->l()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/checkins/a;->a(Landroid/content/Context;Z)V

    .line 201
    if-eqz p2, :cond_20

    .line 203
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/c;->a(Lcom/google/googlenav/h;)V

    .line 219
    :goto_1f
    return-void

    .line 205
    :cond_20
    if-eqz p3, :cond_2a

    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/friend/android/c;->a(Lcom/google/googlenav/h;Z)V

    .line 217
    :goto_26
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/c;->a()V

    goto :goto_1f

    .line 215
    :cond_2a
    const-string v0, "oo"

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->d(Ljava/lang/String;)V

    goto :goto_26
.end method

.method private b(Lcom/google/googlenav/h;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 234
    new-instance v0, Lcom/google/googlenav/o;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/friend/aF;

    invoke-static {}, Lcom/google/googlenav/friend/aF;->j()Lcom/google/googlenav/friend/aF;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p1, v3, v1, v3}, Lcom/google/googlenav/o;-><init>(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/r;)V

    invoke-virtual {v0}, Lcom/google/googlenav/o;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/s;

    .line 238
    if-nez v0, :cond_20

    .line 239
    invoke-virtual {p0, v4, v3, v3, v3}, Lcom/google/googlenav/friend/android/c;->a(ZLcom/google/googlenav/a;Lcom/google/googlenav/h;Ljava/util/List;)V

    .line 244
    :goto_1f
    return-void

    .line 241
    :cond_20
    iget-boolean v1, v0, Lcom/google/googlenav/s;->a:Z

    iget-object v2, v0, Lcom/google/googlenav/s;->b:Lcom/google/googlenav/a;

    iget-object v3, v0, Lcom/google/googlenav/s;->c:Lcom/google/googlenav/h;

    iget-object v0, v0, Lcom/google/googlenav/s;->d:Ljava/util/List;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/googlenav/friend/android/c;->a(ZLcom/google/googlenav/a;Lcom/google/googlenav/h;Ljava/util/List;)V

    goto :goto_1f
.end method


# virtual methods
.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/c;->a()V

    .line 186
    return-void
.end method

.method public a(Lcom/google/googlenav/F;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 326
    if-eqz p1, :cond_26

    invoke-interface {p1}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-lez v0, :cond_26

    .line 327
    new-instance v0, Lcom/google/googlenav/friend/aM;

    invoke-direct {v0, p1}, Lcom/google/googlenav/friend/aM;-><init>(Lcom/google/googlenav/F;)V

    .line 328
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->d()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/google/googlenav/friend/android/c;->e:Lcom/google/googlenav/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/aK;->a(Lcom/google/googlenav/a;I)V

    .line 330
    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->c(Lcom/google/googlenav/friend/android/a;)Lcom/google/googlenav/friend/checkins/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/checkins/b;->a()LaM/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v3, v3}, LaM/a;->a(ILcom/google/googlenav/F;Lcom/google/googlenav/android/Y;LaM/g;)V

    .line 336
    :cond_26
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/c;->a()V

    .line 337
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const-wide v6, 0x412e848000000000L

    .line 112
    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 114
    :cond_f
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/c;->a()V

    .line 121
    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/android/a;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 124
    const-string v0, "oo"

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->d(Ljava/lang/String;)V

    .line 178
    :goto_21
    return-void

    .line 129
    :cond_22
    new-instance v1, Lcom/google/googlenav/h;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v1, v0}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->c:Lcom/google/googlenav/friend/android/d;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/d;->a()Lcom/google/googlenav/a;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_36

    .line 133
    :cond_36
    iget-object v2, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v2}, Lcom/google/googlenav/friend/android/a;->b(Lcom/google/googlenav/friend/android/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/friend/checkins/a;->b(Landroid/content/Context;)Z

    move-result v2

    .line 134
    iget-object v3, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v3}, Lcom/google/googlenav/friend/android/a;->b(Lcom/google/googlenav/friend/android/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/friend/checkins/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/google/googlenav/az;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ZLjava/lang/String;)Z

    move-result v2

    .line 137
    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v3

    .line 140
    invoke-virtual {v1}, Lcom/google/googlenav/h;->i()Z

    move-result v4

    .line 141
    invoke-virtual {v1}, Lcom/google/googlenav/h;->j()Z

    .line 142
    iget-object v5, p0, Lcom/google/googlenav/friend/android/c;->d:Lcom/google/googlenav/friend/checkins/c;

    invoke-static {v5, v0}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/checkins/c;Lcom/google/googlenav/a;)Z

    move-result v0

    .line 159
    if-eqz v0, :cond_6d

    if-eqz v2, :cond_78

    .line 167
    :cond_6d
    if-eqz v2, :cond_8b

    .line 175
    :goto_6f
    const-string v0, "oo"

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->d(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/c;->a()V

    goto :goto_21

    .line 161
    :cond_78
    invoke-virtual {p3, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 162
    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-virtual {p3, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/android/a;Z)V

    .line 165
    :cond_87
    invoke-direct {p0, v1, v3, v4}, Lcom/google/googlenav/friend/android/c;->a(Lcom/google/googlenav/h;ZZ)V

    goto :goto_21

    .line 170
    :cond_8b
    new-instance v0, Lat/B;

    iget-object v2, p0, Lcom/google/googlenav/friend/android/c;->d:Lcom/google/googlenav/friend/checkins/c;

    iget-object v2, v2, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget-object v3, p0, Lcom/google/googlenav/friend/android/c;->d:Lcom/google/googlenav/friend/checkins/c;

    iget-object v3, v3, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    invoke-direct {v0, v2, v3}, Lat/B;-><init>(II)V

    .line 172
    invoke-virtual {v1}, Lcom/google/googlenav/h;->f()Lat/B;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(Lat/B;Lat/B;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_6f
.end method

.method public a(ZLcom/google/googlenav/a;Lcom/google/googlenav/h;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    if-eqz p1, :cond_31

    .line 308
    const-string v0, "ca"

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->d(Ljava/lang/String;)V

    .line 309
    iput-object p2, p0, Lcom/google/googlenav/friend/android/c;->e:Lcom/google/googlenav/a;

    .line 310
    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->e:Lcom/google/googlenav/a;

    invoke-virtual {v0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 311
    invoke-static {}, Lcom/google/googlenav/aM;->a()Lcom/google/googlenav/aM;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/android/c;->e:Lcom/google/googlenav/a;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aM;->a(Lcom/google/googlenav/a;)V

    .line 313
    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/friend/android/c;->b:Lcom/google/googlenav/friend/android/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/a;->c(Lcom/google/googlenav/friend/android/a;)Lcom/google/googlenav/friend/checkins/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/checkins/b;->a()LaM/a;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, LaM/a;->a(ILcom/google/googlenav/android/Y;LaM/f;)V

    .line 316
    invoke-direct {p0, p2, p4}, Lcom/google/googlenav/friend/android/c;->a(Lcom/google/googlenav/a;Ljava/util/List;)V

    .line 322
    :goto_30
    return-void

    .line 320
    :cond_31
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/c;->a()V

    goto :goto_30
.end method
