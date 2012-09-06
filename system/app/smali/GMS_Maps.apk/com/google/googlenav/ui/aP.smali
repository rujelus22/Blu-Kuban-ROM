.class public Lcom/google/googlenav/ui/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final q:Ljava/util/Map;


# instance fields
.field private final a:Lan/h;

.field private final b:Lat/p;

.field private final c:Lat/u;

.field private final d:Lcom/google/googlenav/ui/v;

.field private final e:Lcom/google/googlenav/android/A;

.field private final f:Lat/v;

.field private g:Ljava/lang/Boolean;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:J

.field private l:J

.field private m:Z

.field private n:Ln/B;

.field private o:Lan/v;

.field private p:Lcom/google/googlenav/ui/at;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 202
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/ap;->q:Ljava/util/Map;

    .line 205
    sget-object v0, Lcom/google/googlenav/ui/ap;->q:Ljava/util/Map;

    const-string v1, "gps"

    const-string v2, "g"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/google/googlenav/ui/ap;->q:Ljava/util/Map;

    const-string v1, "network"

    const-string v2, "wc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/google/googlenav/ui/ap;->q:Ljava/util/Map;

    const-string v1, "indoor"

    const-string v2, "i"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/google/googlenav/ui/ap;->q:Ljava/util/Map;

    const-string v1, "fused_cell"

    const-string v2, "fc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/google/googlenav/ui/ap;->q:Ljava/util/Map;

    const-string v1, "fused_wifi"

    const-string v2, "fw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/google/googlenav/ui/ap;->q:Ljava/util/Map;

    const-string v1, "fused_gps"

    const-string v2, "fg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/google/googlenav/ui/ap;->q:Ljava/util/Map;

    const-string v1, "fused_indoor"

    const-string v2, "fi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method public constructor <init>(Lan/h;Lcom/google/googlenav/ui/v;Lat/u;Lat/p;Lcom/google/googlenav/android/A;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-boolean v0, p0, Lcom/google/googlenav/ui/ap;->h:Z

    .line 163
    iput-boolean v0, p0, Lcom/google/googlenav/ui/ap;->i:Z

    .line 169
    iput v0, p0, Lcom/google/googlenav/ui/ap;->j:I

    .line 176
    iput-wide v1, p0, Lcom/google/googlenav/ui/ap;->k:J

    .line 181
    iput-wide v1, p0, Lcom/google/googlenav/ui/ap;->l:J

    .line 223
    iput-object p1, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    .line 224
    iput-object p2, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    .line 225
    iput-object p3, p0, Lcom/google/googlenav/ui/ap;->c:Lat/u;

    .line 226
    iput-object p4, p0, Lcom/google/googlenav/ui/ap;->b:Lat/p;

    .line 227
    iput-object p5, p0, Lcom/google/googlenav/ui/ap;->e:Lcom/google/googlenav/android/A;

    .line 229
    new-instance v0, Lan/v;

    invoke-direct {v0}, Lan/v;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/ap;->o:Lan/v;

    .line 232
    new-instance v0, Lcom/google/googlenav/ui/aq;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/aq;-><init>(Lcom/google/googlenav/ui/ap;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/ap;->f:Lat/v;

    .line 253
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->f:Lat/v;

    invoke-virtual {p3, v0}, Lat/u;->a(Lat/v;)V

    .line 254
    return-void
.end method

.method private A()Z
    .registers 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->j()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->i()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private B()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 334
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_11

    .line 336
    const-string v0, "HAS_SHOWN_CALIBRATE_COMPASS_NOTIFICATION"

    new-instance v1, Lcom/google/googlenav/ui/ar;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/ar;-><init>(Lcom/google/googlenav/ui/ap;)V

    invoke-static {v0, v4, v1}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/bd;)V

    .line 388
    :cond_10
    :goto_10
    return-void

    .line 359
    :cond_11
    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, LaB/h;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, LaB/h;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_10

    .line 367
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    .line 372
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/ui/ap;->g:Ljava/lang/Boolean;

    .line 374
    const-string v0, "HAS_SHOWN_CALIBRATE_COMPASS_NOTIFICATION"

    const/4 v1, 0x1

    invoke-static {v0, v1, v5}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/be;)V

    .line 381
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    const/16 v1, 0x68

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x362

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V

    goto :goto_10
.end method

.method private C()Z
    .registers 3

    .prologue
    .line 510
    const-string v0, "GPS_FIX"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private D()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 524
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    if-nez v0, :cond_8

    .line 536
    :goto_7
    return-void

    .line 528
    :cond_8
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->e()[Ljava/lang/String;

    move-result-object v5

    .line 529
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v2}, Lan/h;->m()Lan/s;

    move-result-object v2

    invoke-static {v2}, Lan/s;->d(Landroid/location/Location;)Ln/B;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, LaM/am;->a(Lat/B;Ln/B;Ljava/lang/String;Z[Ljava/lang/String;)LaM/C;

    move-result-object v0

    .line 532
    invoke-virtual {v0, v4}, LaM/C;->k(Z)V

    .line 535
    const-string v0, "GPS_FIX"

    invoke-static {v0, v4}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;Z)V

    goto :goto_7
.end method

.method private E()Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 545
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->M()J

    move-result-wide v3

    .line 546
    const-wide/16 v5, 0xfa0

    add-long/2addr v5, v3

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_30

    move v0, v1

    .line 549
    :goto_1c
    iget-object v5, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/v;->L()J

    move-result-wide v5

    const-wide/32 v7, 0x6ddd00

    add-long/2addr v5, v7

    cmp-long v3, v5, v3

    if-gez v3, :cond_32

    move v3, v1

    .line 552
    :goto_2b
    if-eqz v3, :cond_34

    if-eqz v0, :cond_34

    :goto_2f
    return v1

    :cond_30
    move v0, v2

    .line 546
    goto :goto_1c

    :cond_32
    move v3, v2

    .line 549
    goto :goto_2b

    :cond_34
    move v1, v2

    .line 552
    goto :goto_2f
.end method

.method private F()V
    .registers 3

    .prologue
    .line 791
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/ui/ap;->k:J

    .line 792
    return-void
.end method

.method private G()I
    .registers 4

    .prologue
    .line 809
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->n()Lan/s;

    move-result-object v1

    .line 810
    invoke-static {v1}, Lan/s;->a(Landroid/location/Location;)I

    move-result v0

    .line 811
    if-ltz v0, :cond_2f

    .line 813
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v2

    invoke-static {v2}, Lan/A;->e(Lat/B;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {}, Lan/A;->k()Lan/A;

    move-result-object v2

    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v2, v1}, Lan/A;->b(Lat/B;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 815
    add-int/lit16 v0, v0, 0x275

    .line 818
    :cond_28
    const/16 v1, 0x64

    if-le v0, v1, :cond_30

    .line 820
    rem-int/lit8 v1, v0, 0x64

    sub-int/2addr v0, v1

    .line 826
    :cond_2f
    :goto_2f
    return v0

    .line 821
    :cond_30
    const/16 v1, 0xa

    if-le v0, v1, :cond_2f

    .line 822
    rem-int/lit8 v1, v0, 0xa

    sub-int/2addr v0, v1

    goto :goto_2f
.end method

.method private H()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->e:Lcom/google/googlenav/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1044
    const-string v0, "c"

    .line 1050
    :goto_a
    return-object v0

    .line 1046
    :cond_b
    iget-boolean v0, p0, Lcom/google/googlenav/ui/ap;->i:Z

    if-eqz v0, :cond_12

    .line 1047
    const-string v0, "a"

    goto :goto_a

    .line 1050
    :cond_12
    const-string v0, "n"

    goto :goto_a
.end method

.method public static a(ILat/B;)Lat/Y;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 751
    if-nez p1, :cond_4

    .line 752
    const/4 v0, 0x0

    .line 762
    :cond_3
    return-object v0

    .line 754
    :cond_4
    int-to-long v0, p0

    int-to-long v2, p0

    mul-long v1, v0, v2

    .line 755
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->E()I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bn;->F()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    .line 757
    const/16 v0, 0x16

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    .line 759
    :goto_24
    if-eqz v0, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v4

    invoke-virtual {p1, v4}, Lat/B;->b(Lat/B;)J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-lez v4, :cond_3

    .line 760
    invoke-virtual {v0}, Lat/Y;->d()Lat/Y;

    move-result-object v0

    goto :goto_24
.end method

.method private a(ZZ)Lat/Y;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x13

    .line 688
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-nez v0, :cond_11

    .line 689
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->c:Lat/u;

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    .line 721
    :cond_10
    :goto_10
    return-object v0

    .line 692
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->c:Lat/u;

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    .line 693
    if-eqz p1, :cond_50

    .line 696
    const/16 v0, 0xf

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    .line 698
    iget-object v1, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v1}, Lan/h;->n()Lan/s;

    move-result-object v1

    .line 699
    if-eqz v1, :cond_50

    .line 701
    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v2

    invoke-static {v2}, Lat/p;->g(Lat/B;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 702
    invoke-static {v3}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    .line 706
    :cond_35
    invoke-virtual {v1}, Lan/s;->b()Ln/B;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 707
    invoke-static {v3}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    move-object v1, v0

    .line 712
    :goto_40
    if-eqz p2, :cond_4e

    .line 715
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->k()Lat/Y;

    move-result-object v0

    .line 716
    if-eqz v0, :cond_4e

    invoke-virtual {v1, v0}, Lat/Y;->b(Lat/Y;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_4e
    move-object v0, v1

    goto :goto_10

    :cond_50
    move-object v1, v0

    goto :goto_40
.end method

.method static synthetic a(Lcom/google/googlenav/ui/ap;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/googlenav/ui/ap;->g:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 837
    if-eqz p2, :cond_7

    .line 838
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 840
    :cond_7
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .registers 7
    .parameter

    .prologue
    .line 1058
    const-string v0, "y"

    .line 1059
    const-string v0, "n"

    .line 1061
    const-string v1, "sw"

    invoke-static {}, Lcom/google/googlenav/ui/ap;->u()Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "n"

    :goto_e
    invoke-static {v1, v0, p1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1065
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->c()Ljava/util/Map;

    move-result-object v1

    .line 1067
    const/4 v0, 0x1

    .line 1068
    if-eqz v1, :cond_77

    .line 1069
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_23
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1070
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lan/z;

    .line 1071
    invoke-virtual {v1}, Lan/z;->a()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1072
    const/4 v2, 0x0

    .line 1074
    :cond_3c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1075
    const-string v4, "network"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1076
    const-string v4, "sc"

    invoke-virtual {v1}, Lan/z;->a()Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "y"

    :goto_54
    invoke-static {v4, v0, p1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_23

    .line 1061
    :cond_58
    const-string v0, "y"

    goto :goto_e

    .line 1076
    :cond_5b
    const-string v0, "n"

    goto :goto_54

    .line 1080
    :cond_5e
    const-string v4, "gps"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1081
    const-string v4, "sg"

    invoke-virtual {v1}, Lan/z;->a()Z

    move-result v0

    if-eqz v0, :cond_74

    const-string v0, "y"

    :goto_70
    invoke-static {v4, v0, p1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_23

    :cond_74
    const-string v0, "n"

    goto :goto_70

    :cond_77
    move v2, v0

    .line 1090
    :cond_78
    const-string v1, "sl"

    if-eqz v2, :cond_82

    const-string v0, "n"

    :goto_7e
    invoke-static {v1, v0, p1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1092
    return-void

    .line 1090
    :cond_82
    const-string v0, "y"

    goto :goto_7e
.end method

.method static synthetic a(Lcom/google/googlenav/ui/ap;)Z
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/googlenav/ui/ap;->m:Z

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/ap;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/google/googlenav/ui/ap;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/ap;)V
    .registers 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->B()V

    return-void
.end method

.method private b(Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter

    .prologue
    .line 1190
    const-string v0, "o"

    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1194
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/ap;)Lcom/google/googlenav/ui/v;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    return-object v0
.end method

.method public static u()Z
    .registers 1

    .prologue
    .line 997
    invoke-static {}, Lar/c;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lar/c;->k()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 269
    sget-object v2, Lak/e;->a:Lak/e;

    invoke-virtual {v2}, Lak/e;->e()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 270
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->c()Lcom/google/googlenav/intersectionexplorer/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/d;->d()V

    .line 319
    :goto_11
    return-void

    .line 281
    :cond_12
    iget-object v2, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->ab()Lcom/google/googlenav/mylocationnotifier/k;

    move-result-object v2

    .line 283
    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->H()Ljava/lang/String;

    move-result-object v3

    .line 285
    iget-object v4, p0, Lcom/google/googlenav/ui/ap;->e:Lcom/google/googlenav/android/A;

    invoke-virtual {v4}, Lcom/google/googlenav/android/A;->b()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 286
    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->A()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 287
    iget-object v4, p0, Lcom/google/googlenav/ui/ap;->e:Lcom/google/googlenav/android/A;

    invoke-virtual {v4}, Lcom/google/googlenav/android/A;->a()Z

    move-result v4

    if-nez v4, :cond_35

    .line 288
    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->B()V

    .line 293
    :cond_35
    invoke-virtual {v2}, Lcom/google/googlenav/mylocationnotifier/k;->a()Z

    move-result v4

    if-nez v4, :cond_70

    .line 295
    :goto_3b
    iget-object v4, p0, Lcom/google/googlenav/ui/ap;->e:Lcom/google/googlenav/android/A;

    invoke-virtual {v4}, Lcom/google/googlenav/android/A;->e()V

    .line 307
    :goto_40
    iget-object v4, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v4

    invoke-virtual {v4}, LaM/am;->x()LaM/bU;

    move-result-object v4

    if-nez v4, :cond_58

    iget-object v4, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v4

    invoke-virtual {v4}, LaM/am;->v()LaM/O;

    move-result-object v4

    if-eqz v4, :cond_59

    :cond_58
    move v0, v1

    .line 312
    :cond_59
    if-eqz v0, :cond_68

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aJ()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 314
    invoke-virtual {v2}, Lcom/google/googlenav/mylocationnotifier/k;->g()V

    .line 317
    :cond_68
    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->H()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p0, v3, v0}, Lcom/google/googlenav/ui/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_70
    move v0, v1

    .line 293
    goto :goto_3b

    .line 298
    :cond_72
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ap;->a(Z)V

    .line 299
    iget-object v4, p0, Lcom/google/googlenav/ui/ap;->e:Lcom/google/googlenav/android/A;

    invoke-virtual {v4}, Lcom/google/googlenav/android/A;->g()V

    goto :goto_40

    .line 303
    :cond_7b
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ap;->a(Z)V

    goto :goto_40
.end method

.method public a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->j()Z

    move-result v0

    if-nez v0, :cond_7

    .line 912
    :cond_6
    :goto_6
    return-void

    .line 907
    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->n()I

    move-result v0

    if-ne v0, p1, :cond_13

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->o()I

    move-result v0

    if-eq v0, p2, :cond_6

    .line 909
    :cond_13
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->p()V

    goto :goto_6
.end method

.method public a(J)V
    .registers 7
    .parameter

    .prologue
    .line 772
    iget-wide v0, p0, Lcom/google/googlenav/ui/ap;->k:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_44

    iget-wide v0, p0, Lcom/google/googlenav/ui/ap;->k:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_44

    .line 774
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-nez v0, :cond_41

    .line 775
    const/16 v0, 0x5f4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/ap;->a(Ljava/lang/String;Z)V

    .line 776
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ae()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 779
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->J()Lcom/google/googlenav/ui/wizard/gj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gj;->z()V

    .line 782
    :cond_41
    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->F()V

    .line 784
    :cond_44
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1138
    const-string v1, "a"

    const-string v2, "l"

    invoke-static {v1, v2, v0}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1142
    const-string v1, "o"

    invoke-static {v1, p1, v0}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1144
    const-string v1, "n"

    invoke-static {v1, p2, v0}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1146
    const-string v1, "u"

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/ap;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1147
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1198
    if-nez p2, :cond_7

    .line 1199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1203
    :cond_7
    const-string v0, "z"

    iget-object v1, p0, Lcom/google/googlenav/ui/ap;->c:Lat/u;

    invoke-virtual {v1}, Lat/u;->d()Lat/Y;

    move-result-object v1

    invoke-virtual {v1}, Lat/Y;->a()I

    move-result v1

    invoke-static {v0, v1, p2}, LaT/k;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1209
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/ap;->a(Ljava/lang/StringBuilder;)V

    .line 1212
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 1213
    if-eqz v0, :cond_2f

    .line 1214
    invoke-virtual {v0}, Lan/s;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 1215
    if-eqz v0, :cond_2f

    .line 1216
    sget-object v1, Lcom/google/googlenav/ui/ap;->q:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 1227
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->o:Lan/v;

    invoke-virtual {v0, p2}, Lan/v;->a(Ljava/lang/StringBuilder;)V

    .line 1234
    return-void

    .line 1219
    :cond_35
    const-string v1, "ls"

    sget-object v2, Lcom/google/googlenav/ui/ap;->q:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, p2}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_2f
.end method

.method public a(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 849
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->m()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 866
    :goto_8
    return-void

    .line 853
    :cond_9
    iget-object v2, p0, Lcom/google/googlenav/ui/ap;->c:Lat/u;

    invoke-virtual {v2}, Lat/u;->d()Lat/Y;

    move-result-object v2

    invoke-virtual {v2}, Lat/Y;->a()I

    move-result v3

    .line 854
    iget-object v2, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v2}, Lan/h;->m()Lan/s;

    move-result-object v2

    .line 855
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Lan/s;->b()Ln/B;

    move-result-object v2

    if-eqz v2, :cond_33

    move v2, v1

    .line 859
    :goto_22
    if-nez v2, :cond_28

    const/16 v4, 0xa

    if-le v3, v4, :cond_2e

    :cond_28
    if-eqz v2, :cond_2f

    const/16 v2, 0x12

    if-gt v3, v2, :cond_2f

    :cond_2e
    move v0, v1

    .line 865
    :cond_2f
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/googlenav/ui/ap;->a(ZZZ)V

    goto :goto_8

    :cond_33
    move v2, v0

    .line 855
    goto :goto_22
.end method

.method public a(ZZZ)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 613
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v0

    .line 614
    iget-boolean v1, p0, Lcom/google/googlenav/ui/ap;->i:Z

    .line 615
    if-eqz v0, :cond_8a

    iget-object v2, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v2}, Lan/h;->g()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 616
    iput-boolean v4, p0, Lcom/google/googlenav/ui/ap;->i:Z

    .line 618
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/ap;->a(ZZ)Lat/Y;

    move-result-object v2

    .line 620
    iput-boolean v4, p0, Lcom/google/googlenav/ui/ap;->m:Z

    .line 621
    iget-object v3, p0, Lcom/google/googlenav/ui/ap;->c:Lat/u;

    invoke-virtual {v3, v0, v2}, Lat/u;->a(Lat/B;Lat/Y;)V

    .line 622
    iget v0, p0, Lcom/google/googlenav/ui/ap;->j:I

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/google/googlenav/ui/ap;->j:I

    if-eq v0, v4, :cond_2c

    iget v0, p0, Lcom/google/googlenav/ui/ap;->j:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_49

    .line 625
    :cond_2c
    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->G()I

    move-result v0

    .line 628
    if-ltz v0, :cond_47

    .line 629
    const/16 v2, 0x1da

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-direct {p0, v0, v5}, Lcom/google/googlenav/ui/ap;->a(Ljava/lang/String;Z)V

    .line 634
    :cond_47
    iput v4, p0, Lcom/google/googlenav/ui/ap;->j:I

    .line 640
    :cond_49
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aA()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ah()Z

    move-result v0

    if-nez v0, :cond_74

    .line 643
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->B()LaM/X;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_74

    .line 646
    invoke-virtual {v0}, LaM/X;->bK()V

    .line 650
    :cond_74
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->x()V

    .line 651
    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->F()V

    .line 674
    :cond_7a
    :goto_7a
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->p:Lcom/google/googlenav/ui/at;

    if-eqz v0, :cond_89

    if-nez v1, :cond_89

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ap;->i:Z

    if-eqz v0, :cond_89

    .line 675
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->p:Lcom/google/googlenav/ui/at;

    invoke-interface {v0}, Lcom/google/googlenav/ui/at;->a()V

    .line 677
    :cond_89
    return-void

    .line 652
    :cond_8a
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->h()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 656
    iput-boolean v4, p0, Lcom/google/googlenav/ui/ap;->i:Z

    .line 659
    const/16 v0, 0x299

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/ap;->a(Ljava/lang/String;Z)V

    .line 667
    iget-wide v2, p0, Lcom/google/googlenav/ui/ap;->k:J

    const-wide/high16 v4, -0x8000

    cmp-long v0, v2, v4

    if-nez v0, :cond_7a

    .line 668
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/googlenav/ui/ap;->k:J

    goto :goto_7a
.end method

.method public a(LZ/a;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 592
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_d

    .line 593
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ap;->a(Z)V

    .line 596
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->j()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/google/googlenav/ui/ap;->h:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->E()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->C()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->E()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public d()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 413
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-nez v0, :cond_a

    .line 485
    :goto_9
    return-void

    .line 416
    :cond_a
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlenav/ui/ap;->l:J

    .line 418
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v2

    .line 428
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->c()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 431
    invoke-virtual {p0, v1, v1, v1}, Lcom/google/googlenav/ui/ap;->a(ZZZ)V

    .line 435
    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->C()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 436
    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->D()V

    .line 439
    :cond_2e
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aJ()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 440
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ab()Lcom/google/googlenav/mylocationnotifier/k;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/k;->g()V

    .line 447
    :cond_41
    iput-boolean v1, p0, Lcom/google/googlenav/ui/ap;->h:Z

    .line 448
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v3

    .line 449
    invoke-virtual {v3}, Lan/s;->b()Ln/B;

    move-result-object v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->n:Ln/B;

    if-nez v0, :cond_83

    move v0, v1

    .line 458
    :goto_54
    iget-boolean v4, p0, Lcom/google/googlenav/ui/ap;->i:Z

    if-eqz v4, :cond_85

    .line 459
    iget-object v4, p0, Lcom/google/googlenav/ui/ap;->c:Lat/u;

    invoke-virtual {v4}, Lat/u;->c()Lat/B;

    move-result-object v4

    invoke-virtual {v2, v4}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    if-eqz v0, :cond_76

    .line 460
    :cond_66
    iput-boolean v1, p0, Lcom/google/googlenav/ui/ap;->m:Z

    .line 461
    const/4 v1, 0x0

    .line 463
    if-eqz v0, :cond_a7

    .line 464
    const/16 v0, 0x13

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    .line 466
    :goto_71
    iget-object v1, p0, Lcom/google/googlenav/ui/ap;->c:Lat/u;

    invoke-virtual {v1, v2, v0}, Lat/u;->a(Lat/B;Lat/Y;)V

    .line 468
    :cond_76
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->x()V

    .line 483
    :cond_79
    :goto_79
    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->F()V

    .line 484
    invoke-virtual {v3}, Lan/s;->b()Ln/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/ap;->n:Ln/B;

    goto :goto_9

    .line 449
    :cond_83
    const/4 v0, 0x0

    goto :goto_54

    .line 475
    :cond_85
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->b()Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/google/googlenav/ui/ap;->n:Ln/B;

    if-eqz v1, :cond_a1

    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v1

    if-eqz v1, :cond_a1

    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/ap;->n:Ln/B;

    invoke-virtual {v1, v2}, Ll/q;->d(Ln/B;)Z

    move-result v1

    if-nez v1, :cond_a3

    :cond_a1
    if-eqz v0, :cond_79

    .line 479
    :cond_a3
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->x()V

    goto :goto_79

    :cond_a7
    move-object v0, v1

    goto :goto_71
.end method

.method public e()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->G()I

    move-result v1

    .line 493
    if-ltz v1, :cond_2a

    .line 494
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->l()Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0x1dc

    .line 496
    :goto_e
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_20
    const-string v1, "\n"

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 494
    :cond_27
    const/16 v0, 0x5e2

    goto :goto_e

    .line 499
    :cond_2a
    const/16 v0, 0x5e3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->h()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public g()Lan/s;
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    return-object v0
.end method

.method public h()Lat/B;
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    invoke-static {v0}, Lan/s;->a(Lan/s;)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 577
    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_e

    invoke-virtual {v0}, LaB/h;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/google/googlenav/ui/ap;->i:Z

    return v0
.end method

.method public k()Lat/Y;
    .registers 3

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 734
    iget-object v1, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v1}, Lan/h;->g()Z

    move-result v1

    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 735
    invoke-static {v0}, Lan/s;->a(Landroid/location/Location;)I

    move-result v1

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/ap;->a(ILat/B;)Lat/Y;

    move-result-object v0

    .line 738
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public l()Z
    .registers 5

    .prologue
    .line 800
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/ui/ap;->l:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public m()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 873
    iget-object v2, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v2}, Lan/h;->e()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 875
    iget-object v2, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/v;->e(Z)V

    .line 878
    const/16 v1, 0x1d9

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/ap;->a(Ljava/lang/String;Z)V

    .line 881
    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method

.method n()I
    .registers 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->b:Lat/p;

    invoke-virtual {v0}, Lat/p;->t()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method o()I
    .registers 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->b:Lat/p;

    invoke-virtual {v0}, Lat/p;->s()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public p()V
    .registers 2

    .prologue
    .line 926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/ap;->i:Z

    .line 927
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->p:Lcom/google/googlenav/ui/at;

    if-eqz v0, :cond_c

    .line 928
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->p:Lcom/google/googlenav/ui/at;

    invoke-interface {v0}, Lcom/google/googlenav/ui/at;->b()V

    .line 930
    :cond_c
    return-void
.end method

.method public q()Lan/h;
    .registers 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    return-object v0
.end method

.method public r()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 949
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->j()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v1

    if-nez v1, :cond_e

    .line 962
    :cond_d
    :goto_d
    return v0

    .line 953
    :cond_e
    iget-object v1, p0, Lcom/google/googlenav/ui/ap;->c:Lat/u;

    invoke-virtual {v1}, Lat/u;->m()I

    move-result v1

    .line 954
    iget-object v2, p0, Lcom/google/googlenav/ui/ap;->c:Lat/u;

    iget-object v3, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v3}, Lan/h;->m()Lan/s;

    move-result-object v3

    invoke-static {v3}, Lan/s;->a(Landroid/location/Location;)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lat/u;->a(ILat/B;)F

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 962
    div-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public s()Z
    .registers 2

    .prologue
    .line 977
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->t()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/google/googlenav/ui/ap;->u()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public t()Z
    .registers 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->f()Z

    move-result v0

    return v0
.end method

.method public v()V
    .registers 2

    .prologue
    .line 1002
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/ap;->h:Z

    .line 1003
    return-void
.end method

.method public w()V
    .registers 7

    .prologue
    .line 1017
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->M()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    .line 1027
    :goto_19
    return-void

    .line 1023
    :cond_1a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ap;->v()V

    .line 1026
    invoke-direct {p0}, Lcom/google/googlenav/ui/ap;->F()V

    goto :goto_19
.end method

.method public x()V
    .registers 3

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1031
    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    invoke-virtual {v0}, Lan/s;->b()Ln/B;

    move-result-object v0

    .line 1032
    if-eqz v0, :cond_19

    .line 1033
    iget-object v1, p0, Lcom/google/googlenav/ui/ap;->c:Lat/u;

    invoke-virtual {v1, v0}, Lat/u;->a(Ln/B;)V

    .line 1036
    :cond_19
    return-void
.end method

.method public y()V
    .registers 4

    .prologue
    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1100
    const-string v1, "a"

    const-string v2, "d"

    invoke-static {v1, v2, v0}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1104
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/ap;->b(Ljava/lang/StringBuilder;)V

    .line 1105
    const-string v1, "n"

    const-string v2, "b"

    invoke-static {v1, v2, v0}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1109
    const-string v1, "u"

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/ap;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1110
    return-void
.end method

.method public z()V
    .registers 4

    .prologue
    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1155
    const-string v1, "a"

    const-string v2, "c"

    invoke-static {v1, v2, v0}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1159
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/ap;->b(Ljava/lang/StringBuilder;)V

    .line 1160
    const-string v1, "n"

    const-string v2, "a"

    invoke-static {v1, v2, v0}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1164
    const-string v1, "u"

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/ap;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1165
    return-void
.end method
