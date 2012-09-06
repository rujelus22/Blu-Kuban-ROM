.class public Lam/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/a;

.field private b:Lam/h;

.field private c:Lam/d;

.field private d:Lam/d;

.field private e:Ljava/util/List;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/a;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lam/n;->a:Lcom/google/googlenav/a;

    .line 62
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lam/n;->e:Ljava/util/List;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lam/n;->f:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static a(J)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 300
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_1b

    const/16 v0, 0x97

    :goto_8
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    const/16 v0, 0x96

    goto :goto_8
.end method

.method static a(JJ)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x1

    .line 292
    const-wide/32 v0, 0x240c8400

    add-long/2addr v0, p2

    sub-long/2addr v0, p0

    .line 294
    sub-long/2addr v0, v4

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    add-long/2addr v0, v4

    .line 295
    invoke-static {v0, v1}, Lam/n;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(JLjava/util/TimeZone;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 271
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 273
    const-wide/32 v1, 0x240c8400

    sub-long v1, p0, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 274
    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 276
    const-wide/16 v2, 0x1

    sub-long v2, p0, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 277
    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v2, "%s - %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lam/d;I)Ljava/util/List;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-virtual {p0}, Lam/d;->b()Ljava/util/List;

    move-result-object v1

    .line 189
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 190
    if-gt v5, p1, :cond_d

    move-object v0, v1

    .line 235
    :goto_c
    return-object v0

    .line 195
    :cond_d
    const/4 v3, -0x1

    move v2, v4

    .line 196
    :goto_f
    if-ge v2, v5, :cond_5b

    .line 197
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/f;

    invoke-virtual {v0}, Lam/f;->j()Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v2

    .line 203
    :goto_1e
    if-gez v0, :cond_28

    .line 205
    invoke-interface {v1, v4, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_c

    .line 196
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 207
    :cond_28
    if-nez v0, :cond_2f

    .line 209
    invoke-interface {v1, v4, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_c

    .line 214
    :cond_2f
    add-int/lit8 v2, p1, -0x2

    .line 222
    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 223
    sub-int/2addr v2, v3

    .line 225
    sub-int v2, v0, v2

    .line 226
    add-int/2addr v3, v0

    .line 227
    const/4 v0, 0x1

    if-gt v2, v0, :cond_46

    .line 228
    invoke-interface {v1, v4, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_c

    .line 232
    :cond_46
    invoke-static {p1}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 233
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    :cond_5b
    move v0, v3

    goto :goto_1e
.end method

.method private b(Ljava/util/List;)Lam/f;
    .registers 5
    .parameter

    .prologue
    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/f;

    .line 150
    invoke-virtual {v0}, Lam/f;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lam/n;->a:Lcom/google/googlenav/a;

    invoke-virtual {v0}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lam/n;->c:Lam/d;

    invoke-static {v0, p1}, Lam/n;->a(Lam/d;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method a(Lam/d;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lam/n;->c:Lam/d;

    .line 163
    return-void
.end method

.method a(Lam/h;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lam/n;->b:Lam/h;

    .line 159
    return-void
.end method

.method a(Lam/h;JJ)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    sget-object v0, Lam/o;->a:[I

    invoke-virtual {p1}, Lam/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 256
    const-string v0, ""

    iput-object v0, p0, Lam/n;->f:Ljava/lang/String;

    .line 259
    :goto_f
    return-void

    .line 247
    :pswitch_10
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p4, p5, v0}, Lam/n;->a(JLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/n;->f:Ljava/lang/String;

    goto :goto_f

    .line 250
    :pswitch_1b
    invoke-static {p2, p3, p4, p5}, Lam/n;->a(JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/n;->f:Ljava/lang/String;

    goto :goto_f

    .line 253
    :pswitch_22
    const-string v0, ""

    iput-object v0, p0, Lam/n;->f:Ljava/lang/String;

    goto :goto_f

    .line 245
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1b
        :pswitch_22
    .end packed-switch
.end method

.method a(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lam/n;->e:Ljava/util/List;

    .line 171
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lam/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lam/n;->d:Lam/d;

    invoke-static {v0, p1}, Lam/n;->a(Lam/d;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method b(Lam/d;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lam/n;->d:Lam/d;

    .line 167
    return-void
.end method

.method public c()Ljava/util/List;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lam/n;->e:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lam/n;->d:Lam/d;

    invoke-virtual {v0}, Lam/d;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lam/n;->c:Lam/d;

    invoke-virtual {v0}, Lam/d;->c()I

    move-result v0

    iget-object v1, p0, Lam/n;->d:Lam/d;

    invoke-virtual {v1}, Lam/d;->c()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public f()I
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lam/n;->c:Lam/d;

    invoke-virtual {v0}, Lam/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lam/n;->b(Ljava/util/List;)Lam/f;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lam/n;->d:Lam/d;

    invoke-virtual {v1}, Lam/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lam/n;->b(Ljava/util/List;)Lam/f;

    move-result-object v1

    .line 142
    if-eqz v0, :cond_18

    if-nez v1, :cond_1a

    .line 143
    :cond_18
    const/4 v0, -0x1

    .line 145
    :goto_19
    return v0

    :cond_1a
    invoke-virtual {v1}, Lam/f;->c()I

    move-result v1

    invoke-virtual {v0}, Lam/f;->c()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_19
.end method
