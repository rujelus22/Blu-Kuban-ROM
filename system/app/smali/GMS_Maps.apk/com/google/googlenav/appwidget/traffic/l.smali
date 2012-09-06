.class Lcom/google/googlenav/appwidget/traffic/l;
.super Lac/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/googlenav/appwidget/traffic/m;

.field private final c:Lad/s;

.field private final d:Lcom/google/googlenav/appwidget/traffic/i;

.field private final e:Lcom/google/googlenav/appwidget/traffic/d;

.field private final f:Lcom/google/googlenav/common/a;

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/google/googlenav/appwidget/traffic/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/l;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/appwidget/traffic/m;Lcom/google/googlenav/appwidget/traffic/d;Lad/j;Lcom/google/googlenav/appwidget/traffic/i;Lcom/google/googlenav/common/a;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/googlenav/appwidget/traffic/l;->b:Lcom/google/googlenav/appwidget/traffic/m;

    .line 81
    new-instance v0, Lad/s;

    invoke-direct {v0, p3}, Lad/s;-><init>(Lad/k;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    .line 82
    iput-object p4, p0, Lcom/google/googlenav/appwidget/traffic/l;->d:Lcom/google/googlenav/appwidget/traffic/i;

    .line 83
    iput-object p2, p0, Lcom/google/googlenav/appwidget/traffic/l;->e:Lcom/google/googlenav/appwidget/traffic/d;

    .line 84
    iput-object p5, p0, Lcom/google/googlenav/appwidget/traffic/l;->f:Lcom/google/googlenav/common/a;

    .line 85
    iget v0, p2, Lcom/google/googlenav/appwidget/traffic/d;->a:I

    iput v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->g:I

    .line 86
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 185
    packed-switch p1, :pswitch_data_2e

    .line 194
    const/16 v0, 0x5f3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    .line 188
    :pswitch_a
    const/16 v0, 0x6e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/appwidget/traffic/l;->e:Lcom/google/googlenav/appwidget/traffic/d;

    iget-object v3, v3, Lcom/google/googlenav/appwidget/traffic/d;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 190
    :pswitch_1f
    const/16 v0, 0x31a

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 192
    :pswitch_26
    const/16 v0, 0x31e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 185
    nop

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_a
        :pswitch_a
        :pswitch_1f
        :pswitch_26
    .end packed-switch
.end method

.method private a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    const-string v1, "id"

    invoke-static {v1, p1, v0}, LaT/k;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 202
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/l;->d:Lcom/google/googlenav/appwidget/traffic/i;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/traffic/i;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 203
    const-string v2, "c"

    invoke-static {v2, v1, v0}, LaT/k;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 205
    const-string v1, "rc"

    invoke-static {v1, p2, v0}, LaT/k;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    const/16 v1, 0x48

    const-string v2, "wr"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method


# virtual methods
.method public A_()Z
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v0}, Lad/s;->A_()Z

    move-result v0

    return v0
.end method

.method public Z()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v0}, Lad/s;->Z()V

    .line 116
    return-void
.end method

.method public a()I
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v0}, Lad/s;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v0, p1}, Lad/s;->a(Ljava/io/DataOutput;)V

    .line 131
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 14
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v0, p1}, Lad/s;->a(Ljava/io/DataInput;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 136
    const/4 v0, 0x0

    .line 177
    :goto_9
    return v0

    .line 140
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v0}, Lad/s;->y()I

    move-result v0

    .line 141
    packed-switch v0, :pswitch_data_ac

    .line 171
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/l;->d:Lcom/google/googlenav/appwidget/traffic/i;

    iget v2, p0, Lcom/google/googlenav/appwidget/traffic/l;->g:I

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/appwidget/traffic/i;->a(ILjava/lang/String;)V

    .line 172
    iget v1, p0, Lcom/google/googlenav/appwidget/traffic/l;->g:I

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/appwidget/traffic/l;->a(II)V

    .line 174
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->b:Lcom/google/googlenav/appwidget/traffic/m;

    if-eqz v0, :cond_2e

    .line 175
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->b:Lcom/google/googlenav/appwidget/traffic/m;

    iget v1, p0, Lcom/google/googlenav/appwidget/traffic/l;->g:I

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/traffic/m;->a(I)V

    .line 177
    :cond_2e
    const/4 v0, 0x1

    goto :goto_9

    .line 143
    :pswitch_30
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->f:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v5

    .line 144
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v0}, Lad/s;->aB()Lat/B;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v1}, Lad/s;->aC()Lat/B;

    move-result-object v9

    .line 147
    invoke-virtual {v0, v9}, Lat/B;->b(Lat/B;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    .line 148
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v0}, Lad/s;->M()I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v1}, Lad/s;->aU()I

    move-result v1

    .line 150
    int-to-double v2, v1

    const-wide/high16 v10, 0x4059

    mul-double/2addr v2, v10

    add-int v4, v0, v1

    int-to-double v10, v4

    div-double/2addr v2, v10

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v2, v10

    double-to-int v4, v2

    .line 151
    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v10, v0, v2

    .line 152
    add-long v2, v5, v10

    .line 155
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->d:Lcom/google/googlenav/appwidget/traffic/i;

    iget v1, p0, Lcom/google/googlenav/appwidget/traffic/l;->g:I

    invoke-virtual/range {v0 .. v8}, Lcom/google/googlenav/appwidget/traffic/i;->a(IJIJJ)V

    .line 158
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->e:Lcom/google/googlenav/appwidget/traffic/d;

    iget-wide v0, v0, Lcom/google/googlenav/appwidget/traffic/d;->l:J

    const-wide/32 v7, 0x3a980

    add-long/2addr v0, v7

    cmp-long v0, v2, v0

    if-lez v0, :cond_8f

    .line 159
    add-long v0, v5, v10

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    .line 160
    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/l;->d:Lcom/google/googlenav/appwidget/traffic/i;

    iget v3, p0, Lcom/google/googlenav/appwidget/traffic/l;->g:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/appwidget/traffic/i;->b(IJ)V

    .line 163
    :cond_8f
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->e:Lcom/google/googlenav/appwidget/traffic/d;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/d;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->e:Lcom/google/googlenav/appwidget/traffic/d;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/d;->e:Ljava/lang/Integer;

    if-nez v0, :cond_23

    .line 165
    :cond_9b
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->d:Lcom/google/googlenav/appwidget/traffic/i;

    iget v1, p0, Lcom/google/googlenav/appwidget/traffic/l;->g:I

    invoke-virtual {v9}, Lat/B;->c()I

    move-result v2

    invoke-virtual {v9}, Lat/B;->e()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/appwidget/traffic/i;->a(III)V

    goto/16 :goto_23

    .line 141
    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_30
    .end packed-switch
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v0}, Lad/s;->g()Z

    move-result v0

    return v0
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v0}, Lad/s;->i_()Z

    move-result v0

    return v0
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v0}, Lad/s;->j_()Z

    move-result v0

    return v0
.end method

.method public l_()V
    .registers 1

    .prologue
    .line 220
    return-void
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v0}, Lad/s;->q()Z

    move-result v0

    return v0
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/l;->c:Lad/s;

    invoke-virtual {v0}, Lad/s;->z_()Z

    move-result v0

    return v0
.end method
