.class public Lcom/google/googlenav/ui/wizard/iY;
.super Lac/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/iT;

.field private final b:Lcom/google/googlenav/ui/wizard/iZ;

.field private final c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/iT;Lcom/google/googlenav/ai;ILcom/google/googlenav/ui/wizard/iZ;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 258
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iY;->a:Lcom/google/googlenav/ui/wizard/iT;

    invoke-direct {p0}, Lac/a;-><init>()V

    .line 259
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/iY;->b:Lcom/google/googlenav/ui/wizard/iZ;

    .line 261
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/gg;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 262
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 263
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/iY;->a(Lcom/google/googlenav/ai;)I

    move-result v1

    .line 264
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 265
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x3

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/iY;->b(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 268
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->c()B

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_7a

    invoke-virtual {p2}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_36
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/iY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 271
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x5

    invoke-virtual {p2}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 272
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x6

    invoke-virtual {p2}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 273
    if-ne v1, v4, :cond_60

    .line 274
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {p2}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v2

    invoke-static {v2}, Lat/C;->c(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 277
    :cond_60
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/iT;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->D()Lat/p;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 278
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/googlenav/ui/wizard/iT;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->D()Lat/p;

    move-result-object v2

    invoke-virtual {v2}, Lat/p;->u()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 280
    :cond_79
    return-void

    .line 268
    :cond_7a
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v0

    goto :goto_36
.end method

.method private a(Lcom/google/googlenav/ai;)I
    .registers 4
    .parameter

    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->af()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 284
    const/4 v0, 0x0

    .line 293
    :goto_7
    return v0

    .line 289
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->c()B

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->c()B

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1e

    .line 291
    :cond_1c
    const/4 v0, 0x2

    goto :goto_7

    .line 293
    :cond_1e
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private b(Lcom/google/googlenav/ai;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aa()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 298
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/16 v2, 0x6e

    const/16 v3, 0x79

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)J

    move-result-wide v1

    .line 302
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 303
    const/16 v1, 0x532

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_40
    return-object v0

    :cond_41
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    goto :goto_40
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 311
    const/16 v0, 0x38

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 325
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 329
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/gg;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public l_()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 338
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->b:Lcom/google/googlenav/ui/wizard/iZ;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/iZ;->a()V

    .line 339
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 340
    if-nez v0, :cond_5a

    .line 341
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iY;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 343
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/iY;->b:Lcom/google/googlenav/ui/wizard/iZ;

    invoke-interface {v2, v0, v1}, Lcom/google/googlenav/ui/wizard/iZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/16 v0, 0x4f

    const-string v1, "s"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/iY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_59
    return-void

    .line 352
    :cond_5a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iY;->a:Lcom/google/googlenav/ui/wizard/iT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iT;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iY;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    goto :goto_59
.end method
