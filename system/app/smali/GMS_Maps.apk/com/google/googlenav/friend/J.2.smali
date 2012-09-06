.class public Lcom/google/googlenav/friend/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/y;


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:Lcom/google/googlenav/friend/K;

.field private c:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/J;->a:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/J;->c:Ljava/util/Vector;

    return-void
.end method

.method public static a(Lat/B;JLat/B;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x32

    const/4 v2, 0x0

    .line 103
    if-nez p3, :cond_7

    move v0, v2

    .line 127
    :goto_6
    return v0

    .line 108
    :cond_7
    if-nez p0, :cond_b

    move v0, v2

    .line 109
    goto :goto_6

    .line 113
    :cond_b
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-ltz v3, :cond_18

    const-wide/32 v3, 0x1869f

    cmp-long v3, p1, v3

    if-nez v3, :cond_1a

    :cond_18
    move v0, v2

    .line 114
    goto :goto_6

    .line 119
    :cond_1a
    cmp-long v3, p1, v0

    if-gez v3, :cond_1f

    move-wide p1, v0

    .line 123
    :cond_1f
    invoke-virtual {p3, p0}, Lat/B;->b(Lat/B;)J

    move-result-wide v0

    mul-long v3, p1, p1

    cmp-long v0, v0, v3

    if-gtz v0, :cond_2b

    move v0, v2

    .line 125
    goto :goto_6

    .line 127
    :cond_2b
    const/4 v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public a()Lcom/google/googlenav/friend/K;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/googlenav/friend/J;->b:Lcom/google/googlenav/friend/K;

    return-object v0
.end method

.method public a(ILan/h;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 134
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/friend/J;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    .line 135
    iget-object v0, p0, Lcom/google/googlenav/friend/J;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/y;

    .line 136
    invoke-interface {v0, p1, p2}, Lan/y;->a(ILan/h;)V

    .line 134
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 143
    :cond_19
    return-void
.end method

.method public a(Lan/y;)V
    .registers 3
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/googlenav/friend/J;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public a(Lat/B;Lan/h;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/friend/J;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    .line 68
    iget-object v0, p0, Lcom/google/googlenav/friend/J;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/y;

    .line 69
    invoke-interface {v0, p1, p2}, Lan/y;->a(Lat/B;Lan/h;)V

    .line 67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 75
    :cond_19
    iget-object v1, p0, Lcom/google/googlenav/friend/J;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_1c
    invoke-interface {p2}, Lan/h;->n()Lan/s;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_39

    .line 78
    new-instance v2, Lcom/google/googlenav/friend/K;

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v3

    invoke-virtual {v0}, Lan/s;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lan/s;->a(Landroid/location/Location;)I

    move-result v5

    invoke-virtual {v0}, Lan/s;->b()Ln/B;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/googlenav/friend/K;-><init>(Lat/B;Ljava/lang/String;ILn/B;)V

    iput-object v2, p0, Lcom/google/googlenav/friend/J;->b:Lcom/google/googlenav/friend/K;

    .line 82
    :cond_39
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public b(Lan/y;)V
    .registers 3
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/googlenav/friend/J;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method
