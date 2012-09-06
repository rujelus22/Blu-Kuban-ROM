.class public LC/a;
.super LC/b;
.source "SourceFile"


# instance fields
.field a:I

.field private b:Z

.field private c:Z

.field private final d:LC/T;

.field private final e:Landroid/location/LocationManager;

.field private final f:Lcom/google/googlenav/common/a;


# direct methods
.method public constructor <init>(LC/T;Landroid/content/Context;Lcom/google/googlenav/common/a;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    const-string v0, "base_location_provider"

    invoke-direct {p0, v0, p1}, LC/b;-><init>(Ljava/lang/String;LC/T;)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, LC/a;->a:I

    .line 46
    iput-object p1, p0, LC/a;->d:LC/T;

    .line 47
    iput-object p3, p0, LC/a;->f:Lcom/google/googlenav/common/a;

    .line 48
    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, LC/a;->e:Landroid/location/LocationManager;

    .line 49
    return-void
.end method

.method private g()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, LC/a;->f:Lcom/google/googlenav/common/a;

    instance-of v1, v1, LF/a;

    if-eqz v1, :cond_8

    .line 152
    :cond_7
    :goto_7
    return-void

    .line 123
    :cond_8
    iget-object v1, p0, LC/a;->f:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    .line 125
    iget-boolean v1, p0, LC/a;->b:Z

    if-eqz v1, :cond_65

    .line 126
    iget-object v1, p0, LC/a;->e:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 128
    :goto_1a
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {}, LC/d;->a()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_39

    .line 130
    new-instance v4, LC/R;

    invoke-direct {v4, v1}, LC/R;-><init>(Landroid/location/Location;)V

    .line 131
    sget-object v1, LC/S;->a:LC/S;

    invoke-virtual {v4, v1}, LC/R;->a(LC/S;)V

    .line 132
    iget-object v1, p0, LC/a;->d:LC/T;

    invoke-interface {v1, v4}, LC/T;->a(LC/R;)V

    .line 138
    :cond_39
    iget-boolean v1, p0, LC/a;->c:Z

    if-eqz v1, :cond_45

    .line 139
    iget-object v0, p0, LC/a;->e:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 141
    :cond_45
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v1, v2, v4

    invoke-static {}, LC/a;->h()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_7

    .line 146
    new-instance v1, LC/R;

    invoke-direct {v1, v0}, LC/R;-><init>(Landroid/location/Location;)V

    .line 147
    sget-object v0, LC/S;->b:LC/S;

    invoke-virtual {v1, v0}, LC/R;->a(LC/S;)V

    .line 148
    iget-object v0, p0, LC/a;->d:LC/T;

    invoke-interface {v0, v1}, LC/T;->a(LC/R;)V

    goto :goto_7

    :cond_65
    move-object v1, v0

    goto :goto_1a
.end method

.method private static h()J
    .registers 2

    .prologue
    .line 159
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->B:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a(LC/R;)V
    .registers 4
    .parameter

    .prologue
    .line 53
    invoke-virtual {p1}, LC/R;->a()LC/S;

    move-result-object v0

    sget-object v1, LC/S;->b:LC/S;

    if-ne v0, v1, :cond_f

    .line 55
    invoke-virtual {p0}, LC/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 66
    :goto_e
    return-void

    .line 58
    :cond_f
    invoke-virtual {p1}, LC/R;->a()LC/S;

    move-result-object v0

    sget-object v1, LC/S;->a:LC/S;

    if-ne v0, v1, :cond_1d

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, LC/a;->b:Z

    .line 62
    const/4 v0, 0x2

    iput v0, p0, LC/a;->a:I

    .line 65
    :cond_1d
    invoke-super {p0, p1}, LC/b;->a(LC/R;)V

    goto :goto_e
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 89
    const-string v0, "gps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 90
    iput-boolean v1, p0, LC/a;->b:Z

    .line 94
    :cond_b
    :goto_b
    invoke-super {p0, p1, p2}, LC/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 91
    :cond_f
    const-string v0, "network"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 92
    iput-boolean v1, p0, LC/a;->c:Z

    goto :goto_b
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    const-string v0, "gps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 82
    iput p3, p0, LC/a;->a:I

    .line 84
    :cond_a
    invoke-super {p0, p1, p2, p3}, LC/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    return-void
.end method

.method a()Z
    .registers 3

    .prologue
    .line 73
    iget-boolean v0, p0, LC/a;->b:Z

    if-eqz v0, :cond_b

    iget v0, p0, LC/a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b()V
    .registers 2

    .prologue
    .line 164
    invoke-virtual {p0}, LC/a;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    :goto_6
    return-void

    .line 167
    :cond_7
    invoke-super {p0}, LC/b;->b()V

    goto :goto_6
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 99
    const-string v0, "gps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 100
    iput-boolean v1, p0, LC/a;->b:Z

    .line 104
    :cond_b
    :goto_b
    invoke-super {p0, p1, p2}, LC/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void

    .line 101
    :cond_f
    const-string v0, "network"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 102
    iput-boolean v1, p0, LC/a;->c:Z

    goto :goto_b
.end method

.method public c()V
    .registers 1

    .prologue
    .line 172
    invoke-direct {p0}, LC/a;->g()V

    .line 173
    return-void
.end method
