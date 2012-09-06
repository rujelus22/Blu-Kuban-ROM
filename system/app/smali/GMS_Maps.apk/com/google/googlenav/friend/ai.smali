.class public Lcom/google/googlenav/friend/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/as;


# instance fields
.field private a:Lcom/google/googlenav/friend/ap;

.field private b:Lat/B;

.field private c:Ljava/lang/Long;

.field private final d:Lcom/google/googlenav/android/Y;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/Y;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_8

    .line 54
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 56
    :cond_8
    iput-object p1, p0, Lcom/google/googlenav/friend/ai;->d:Lcom/google/googlenav/android/Y;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/ai;Lat/B;)Lat/B;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/googlenav/friend/ai;->b:Lat/B;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/friend/ai;)Lcom/google/googlenav/friend/ap;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/googlenav/friend/ai;->a:Lcom/google/googlenav/friend/ap;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/friend/ai;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/googlenav/friend/ai;->c:Ljava/lang/Long;

    return-object p1
.end method

.method private b()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/google/googlenav/friend/ai;->b:Lat/B;

    .line 307
    iput-object v0, p0, Lcom/google/googlenav/friend/ai;->c:Ljava/lang/Long;

    .line 308
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 314
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    .line 316
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.friend.android.LatitudeBroadcastReceiver.ACTION_REFRESH_FRIENDS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 319
    return-void
.end method

.method public a(Lat/B;Ljava/lang/Long;ZLcom/google/googlenav/friend/aS;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 131
    invoke-direct {p0}, Lcom/google/googlenav/friend/ai;->b()V

    .line 136
    if-eqz p3, :cond_13

    .line 137
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/friend/aR;

    invoke-direct {v2, v5, p4}, Lcom/google/googlenav/friend/aR;-><init>(ILcom/google/googlenav/friend/aS;)V

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    .line 144
    :cond_13
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->b()Z

    move-result v0

    if-nez v0, :cond_21

    .line 146
    new-instance v0, Lcom/google/googlenav/friend/ak;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/friend/ak;-><init>(Lcom/google/googlenav/friend/ai;Lat/B;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->b(Lcom/google/googlenav/friend/be;)V

    .line 164
    :cond_21
    if-eqz p1, :cond_99

    .line 166
    if-eqz p2, :cond_9a

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 169
    :goto_29
    const/4 v2, -0x1

    .line 171
    new-instance v3, Lcom/google/googlenav/friend/az;

    invoke-direct {v3}, Lcom/google/googlenav/friend/az;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/googlenav/friend/az;->a(Lat/B;)Lcom/google/googlenav/friend/az;

    move-result-object v3

    const-string v4, "manual"

    invoke-virtual {v3, v4}, Lcom/google/googlenav/friend/az;->a(Ljava/lang/String;)Lcom/google/googlenav/friend/az;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/az;->a(I)Lcom/google/googlenav/friend/az;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/friend/az;->a(Z)Lcom/google/googlenav/friend/az;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/friend/az;->b(Z)Lcom/google/googlenav/friend/az;

    move-result-object v0

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/friend/az;->a(J)Lcom/google/googlenav/friend/az;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->ax()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/friend/az;->b(I)Lcom/google/googlenav/friend/az;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->az()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/friend/az;->d(Z)Lcom/google/googlenav/friend/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/az;->a(Lcom/google/googlenav/friend/as;)Lcom/google/googlenav/friend/az;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/friend/ai;->d:Lcom/google/googlenav/android/Y;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/friend/az;->a(Lcom/google/googlenav/android/Y;)Lcom/google/googlenav/friend/az;

    move-result-object v0

    new-instance v3, Lcom/google/googlenav/friend/al;

    invoke-direct {v3, p0}, Lcom/google/googlenav/friend/al;-><init>(Lcom/google/googlenav/friend/ai;)V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/friend/az;->a(Lcom/google/googlenav/friend/aA;)Lcom/google/googlenav/friend/az;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/az;->c(Z)Lcom/google/googlenav/friend/az;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/friend/az;->b(J)Lcom/google/googlenav/friend/az;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/friend/az;->c(I)Lcom/google/googlenav/friend/az;

    move-result-object v0

    .line 195
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/friend/az;->a()Lcom/google/googlenav/friend/ay;

    move-result-object v0

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 197
    :cond_99
    return-void

    :cond_9a
    move v0, v1

    .line 166
    goto :goto_29
.end method

.method public a(Lcom/google/googlenav/friend/ap;)V
    .registers 4
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/googlenav/friend/ai;->a:Lcom/google/googlenav/friend/ap;

    .line 64
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/friend/ai;->b:Lat/B;

    if-eqz v0, :cond_12

    .line 65
    iget-object v0, p0, Lcom/google/googlenav/friend/ai;->b:Lat/B;

    iget-object v1, p0, Lcom/google/googlenav/friend/ai;->c:Ljava/lang/Long;

    invoke-interface {p1, v0, v1}, Lcom/google/googlenav/friend/ap;->a(Lat/B;Ljava/lang/Long;)V

    .line 69
    invoke-direct {p0}, Lcom/google/googlenav/friend/ai;->b()V

    .line 71
    :cond_12
    return-void
.end method

.method public a(ZLcom/google/googlenav/friend/aS;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/googlenav/friend/ai;->b()V

    .line 91
    if-eqz p1, :cond_12

    .line 92
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/friend/aR;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/google/googlenav/friend/aR;-><init>(ILcom/google/googlenav/friend/aS;)V

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 99
    :cond_12
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->a()Z

    move-result v0

    if-nez v0, :cond_20

    .line 101
    new-instance v0, Lcom/google/googlenav/friend/aj;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/aj;-><init>(Lcom/google/googlenav/friend/ai;)V

    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->a(Lcom/google/googlenav/friend/be;)V

    .line 113
    :cond_20
    return-void
.end method

.method public a(ZZILcom/google/googlenav/friend/aS;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/G;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 257
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 264
    if-eqz p2, :cond_23

    .line 265
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/friend/aO;

    new-instance v3, Lcom/google/googlenav/friend/an;

    invoke-direct {v3, p0, p4}, Lcom/google/googlenav/friend/an;-><init>(Lcom/google/googlenav/friend/ai;Lcom/google/googlenav/friend/aS;)V

    invoke-direct {v2, v0, v3}, Lcom/google/googlenav/friend/aO;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/friend/aP;)V

    invoke-virtual {v1, v2}, Lac/h;->c(Lac/g;)V

    .line 286
    :cond_23
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->e()Z

    move-result v0

    if-eq v0, p1, :cond_31

    .line 288
    new-instance v0, Lcom/google/googlenav/friend/ao;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/ao;-><init>(Lcom/google/googlenav/friend/ai;)V

    invoke-static {p1, v0}, Lcom/google/googlenav/friend/aJ;->a(ZLcom/google/googlenav/friend/be;)V

    .line 303
    :cond_31
    return-void
.end method

.method public b(ZLcom/google/googlenav/friend/aS;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/googlenav/friend/ai;->b()V

    .line 218
    if-eqz p1, :cond_12

    .line 219
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/friend/aR;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2}, Lcom/google/googlenav/friend/aR;-><init>(ILcom/google/googlenav/friend/aS;)V

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 226
    :cond_12
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->c()Z

    move-result v0

    if-nez v0, :cond_20

    .line 228
    new-instance v0, Lcom/google/googlenav/friend/am;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/am;-><init>(Lcom/google/googlenav/friend/ai;)V

    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->c(Lcom/google/googlenav/friend/be;)V

    .line 239
    :cond_20
    return-void
.end method
