.class public Lan/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:Lan/x;


# instance fields
.field protected a:Ljava/lang/Object;

.field private b:Ljava/util/ArrayList;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 64
    new-instance v0, Lan/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lan/x;-><init>(Lan/w;)V

    sput-object v0, Lan/v;->g:Lan/x;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x78

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {v3}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lan/v;->b:Ljava/util/ArrayList;

    .line 30
    iput v0, p0, Lan/v;->c:I

    .line 35
    iput v0, p0, Lan/v;->d:I

    .line 37
    iput v0, p0, Lan/v;->e:I

    .line 43
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lan/v;->a:Ljava/lang/Object;

    .line 61
    iput-boolean v0, p0, Lan/v;->f:Z

    .line 68
    :goto_1b
    if-ge v0, v3, :cond_26

    .line 69
    iget-object v1, p0, Lan/v;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 71
    :cond_26
    return-void
.end method

.method private a()V
    .registers 20

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget v14, v0, Lan/v;->e:I

    .line 116
    const-wide/16 v10, 0x0

    .line 117
    const-wide/16 v8, 0x0

    .line 118
    const-wide/high16 v6, -0x4010

    .line 119
    const/4 v5, 0x0

    .line 120
    const-wide/16 v3, 0x0

    .line 121
    move-object/from16 v0, p0

    iget v2, v0, Lan/v;->c:I

    const/4 v1, 0x0

    move-wide v12, v10

    move-wide v10, v8

    move-wide v8, v6

    move-object v7, v5

    move v6, v2

    move v5, v1

    move-wide/from16 v17, v3

    move-wide/from16 v2, v17

    .line 122
    :goto_1c
    move-object/from16 v0, p0

    iget v1, v0, Lan/v;->e:I

    if-ge v5, v1, :cond_6f

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lan/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lan/s;

    .line 126
    invoke-virtual {v1}, Lan/s;->getAccuracy()F

    move-result v4

    float-to-double v15, v4

    add-double/2addr v12, v15

    .line 129
    const-wide/high16 v15, -0x4010

    cmpl-double v4, v8, v15

    if-nez v4, :cond_55

    .line 130
    invoke-virtual {v1}, Lan/s;->getTime()J

    move-result-wide v8

    long-to-double v8, v8

    .line 137
    :goto_3d
    if-nez v7, :cond_63

    .line 138
    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v1

    move-wide/from16 v17, v2

    move-object v3, v1

    move-wide/from16 v1, v17

    .line 123
    :goto_48
    add-int/lit8 v4, v6, 0x1

    rem-int/lit8 v6, v4, 0x78

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v7, v3

    move-wide/from16 v17, v1

    move-wide/from16 v2, v17

    goto :goto_1c

    .line 132
    :cond_55
    invoke-virtual {v1}, Lan/s;->getTime()J

    move-result-wide v15

    long-to-double v15, v15

    sub-double v8, v15, v8

    add-double/2addr v10, v8

    .line 133
    invoke-virtual {v1}, Lan/s;->getTime()J

    move-result-wide v8

    long-to-double v8, v8

    goto :goto_3d

    .line 140
    :cond_63
    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v4

    .line 143
    invoke-virtual {v4, v7}, Lat/B;->a(Lat/B;)J

    move-result-wide v15

    add-long v1, v2, v15

    move-object v3, v4

    .line 144
    goto :goto_48

    .line 149
    :cond_6f
    sget-object v1, Lan/v;->g:Lan/x;

    iput v14, v1, Lan/x;->a:I

    .line 152
    add-int/lit8 v1, v14, -0x1

    int-to-double v4, v1

    div-double v4, v10, v4

    .line 153
    sget-object v1, Lan/v;->g:Lan/x;

    iput-wide v4, v1, Lan/x;->g:D

    .line 154
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lan/v;->b(D)V

    .line 157
    add-int/lit8 v1, v14, -0x1

    int-to-long v4, v1

    div-long v1, v2, v4

    long-to-double v1, v1

    .line 158
    sget-object v3, Lan/v;->g:Lan/x;

    iput-wide v1, v3, Lan/x;->e:D

    .line 159
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lan/v;->a(D)V

    .line 162
    int-to-double v1, v14

    div-double v1, v12, v1

    .line 163
    sget-object v3, Lan/v;->g:Lan/x;

    iput-wide v1, v3, Lan/x;->b:D

    .line 164
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lan/v;->c(D)V

    .line 166
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lan/v;->f:Z

    .line 168
    return-void
.end method

.method private a(D)V
    .registers 13
    .parameter

    .prologue
    .line 192
    const-wide/16 v3, 0x0

    .line 193
    const/4 v2, 0x0

    .line 194
    iget v1, p0, Lan/v;->c:I

    const/4 v0, 0x0

    move-object v5, v2

    move v9, v1

    move-wide v1, v3

    move v3, v0

    move v4, v9

    .line 195
    :goto_b
    iget v0, p0, Lan/v;->e:I

    if-ge v3, v0, :cond_37

    .line 197
    iget-object v0, p0, Lan/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/s;

    .line 198
    if-nez v5, :cond_25

    .line 199
    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v0

    .line 196
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x78

    add-int/lit8 v3, v3, 0x1

    move-object v5, v0

    goto :goto_b

    .line 201
    :cond_25
    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v0

    .line 202
    invoke-virtual {v0, v5}, Lat/B;->a(Lat/B;)J

    move-result-wide v5

    long-to-double v5, v5

    sub-double/2addr v5, p1

    const-wide/high16 v7, 0x4000

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v1, v5

    .line 204
    goto :goto_1d

    .line 207
    :cond_37
    sget-object v0, Lan/v;->g:Lan/x;

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget v3, p0, Lan/v;->e:I

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lan/x;->f:D

    .line 209
    return-void
.end method

.method private b()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    move v1, v2

    .line 249
    :goto_e
    if-nez v1, :cond_47

    iget v0, p0, Lan/v;->e:I

    if-lez v0, :cond_47

    .line 250
    iget-object v0, p0, Lan/v;->b:Ljava/util/ArrayList;

    iget v5, p0, Lan/v;->c:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/s;

    .line 251
    invoke-virtual {v0}, Lan/s;->getTime()J

    move-result-wide v5

    const-wide/32 v7, 0x1d4c0

    add-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-gez v0, :cond_45

    .line 252
    iget-object v0, p0, Lan/v;->b:Ljava/util/ArrayList;

    iget v5, p0, Lan/v;->c:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget v0, p0, Lan/v;->c:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x78

    iput v0, p0, Lan/v;->c:I

    .line 254
    iput-boolean v2, p0, Lan/v;->f:Z

    .line 255
    iget v0, p0, Lan/v;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lan/v;->e:I

    move v0, v1

    :goto_43
    move v1, v0

    .line 259
    goto :goto_e

    .line 257
    :cond_45
    const/4 v0, 0x1

    goto :goto_43

    .line 260
    :cond_47
    return-void
.end method

.method private b(D)V
    .registers 14
    .parameter

    .prologue
    const-wide/high16 v5, -0x4010

    .line 212
    const-wide/16 v2, 0x0

    .line 214
    iget v1, p0, Lan/v;->c:I

    const/4 v0, 0x0

    move-wide v7, v2

    move v2, v1

    move-wide v3, v5

    move v1, v0

    .line 215
    :goto_b
    iget v0, p0, Lan/v;->e:I

    if-ge v1, v0, :cond_3d

    .line 217
    iget-object v0, p0, Lan/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/s;

    .line 218
    cmpl-double v9, v3, v5

    if-nez v9, :cond_28

    .line 219
    invoke-virtual {v0}, Lan/s;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    .line 216
    :goto_20
    add-int/lit8 v0, v2, 0x1

    rem-int/lit8 v2, v0, 0x78

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 221
    :cond_28
    invoke-virtual {v0}, Lan/s;->getTime()J

    move-result-wide v9

    long-to-double v9, v9

    sub-double v3, v9, v3

    sub-double/2addr v3, p1

    const-wide/high16 v9, 0x4000

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v7, v3

    .line 222
    invoke-virtual {v0}, Lan/s;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    goto :goto_20

    .line 225
    :cond_3d
    sget-object v0, Lan/v;->g:Lan/x;

    iget v1, p0, Lan/v;->e:I

    add-int/lit8 v1, v1, -0x1

    int-to-double v1, v1

    div-double v1, v7, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lan/x;->h:D

    .line 227
    return-void
.end method

.method private b(Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter

    .prologue
    .line 171
    const-string v0, "nf"

    sget-object v1, Lan/v;->g:Lan/x;

    iget v1, v1, Lan/x;->a:I

    invoke-static {v0, v1, p1}, LaT/k;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 173
    const-string v0, "mt"

    sget-object v1, Lan/v;->g:Lan/x;

    iget-wide v1, v1, Lan/x;->g:D

    invoke-static {v0, v1, v2, p1}, LaT/k;->a(Ljava/lang/String;DLjava/lang/StringBuilder;)V

    .line 176
    const-string v0, "md"

    sget-object v1, Lan/v;->g:Lan/x;

    iget-wide v1, v1, Lan/x;->e:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, LaT/k;->a(Ljava/lang/String;DLjava/lang/StringBuilder;)V

    .line 179
    const-string v0, "ma"

    sget-object v1, Lan/v;->g:Lan/x;

    iget-wide v1, v1, Lan/x;->b:D

    invoke-static {v0, v1, v2, p1}, LaT/k;->a(Ljava/lang/String;DLjava/lang/StringBuilder;)V

    .line 181
    const-string v0, "st"

    sget-object v1, Lan/v;->g:Lan/x;

    iget-wide v1, v1, Lan/x;->h:D

    invoke-static {v0, v1, v2, p1}, LaT/k;->a(Ljava/lang/String;DLjava/lang/StringBuilder;)V

    .line 184
    const-string v0, "sd"

    sget-object v1, Lan/v;->g:Lan/x;

    iget-wide v1, v1, Lan/x;->f:D

    invoke-static {v0, v1, v2, p1}, LaT/k;->a(Ljava/lang/String;DLjava/lang/StringBuilder;)V

    .line 187
    const-string v0, "sa"

    sget-object v1, Lan/v;->g:Lan/x;

    iget-wide v1, v1, Lan/x;->c:D

    invoke-static {v0, v1, v2, p1}, LaT/k;->a(Ljava/lang/String;DLjava/lang/StringBuilder;)V

    .line 189
    return-void
.end method

.method private c(D)V
    .registers 15
    .parameter

    .prologue
    .line 230
    const-wide/16 v2, 0x0

    .line 231
    iget v1, p0, Lan/v;->c:I

    const/4 v0, 0x0

    move v9, v1

    move v1, v0

    move-wide v10, v2

    move-wide v3, v10

    move v2, v9

    .line 232
    :goto_a
    iget v0, p0, Lan/v;->e:I

    if-ge v1, v0, :cond_31

    .line 234
    iget-object v0, p0, Lan/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/s;

    .line 235
    invoke-virtual {v0}, Lan/s;->hasAccuracy()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 236
    invoke-virtual {v0}, Lan/s;->getAccuracy()F

    move-result v0

    float-to-double v5, v0

    sub-double/2addr v5, p1

    const-wide/high16 v7, 0x4000

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 233
    :cond_29
    add-int/lit8 v0, v2, 0x1

    rem-int/lit8 v2, v0, 0x78

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 239
    :cond_31
    sget-object v0, Lan/v;->g:Lan/x;

    iget v1, p0, Lan/v;->e:I

    int-to-double v1, v1

    div-double v1, v3, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lan/x;->c:D

    .line 240
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter

    .prologue
    .line 93
    iget-object v1, p0, Lan/v;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_3
    invoke-direct {p0}, Lan/v;->b()V

    .line 96
    iget v0, p0, Lan/v;->e:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_d

    .line 97
    monitor-exit v1

    .line 106
    :goto_c
    return-void

    .line 99
    :cond_d
    iget-boolean v0, p0, Lan/v;->f:Z

    if-nez v0, :cond_19

    .line 100
    sget-object v0, Lan/v;->g:Lan/x;

    invoke-virtual {v0}, Lan/x;->a()V

    .line 101
    invoke-direct {p0}, Lan/v;->a()V

    .line 104
    :cond_19
    invoke-direct {p0, p1}, Lan/v;->b(Ljava/lang/StringBuilder;)V

    .line 105
    monitor-exit v1

    goto :goto_c

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method
