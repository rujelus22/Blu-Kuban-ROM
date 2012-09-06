.class Lk/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/c;


# instance fields
.field final synthetic a:Lk/k;


# direct methods
.method constructor <init>(Lk/k;)V
    .registers 2
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lk/l;->a:Lk/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm/D;)V
    .registers 6
    .parameter

    .prologue
    .line 1140
    invoke-virtual {p1}, Lm/D;->b()J

    move-result-wide v0

    iget-object v2, p0, Lk/l;->a:Lk/k;

    invoke-static {v2}, Lk/k;->a(Lk/k;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lk/l;->a:Lk/k;

    invoke-static {v2}, Lk/k;->b(Lk/k;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    .line 1142
    iget-object v0, p0, Lk/l;->a:Lk/k;

    new-instance v1, Lk/x;

    invoke-direct {v1, p1}, Lk/x;-><init>(Lm/D;)V

    invoke-virtual {v0, v1}, Lk/k;->a(LA/j;)V

    .line 1143
    iget-object v0, p0, Lk/l;->a:Lk/k;

    invoke-virtual {p1}, Lm/D;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lk/k;->a(Lk/k;J)J

    .line 1145
    :cond_29
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter

    .prologue
    .line 1115
    iget-object v0, p0, Lk/l;->a:Lk/k;

    new-instance v1, Lk/p;

    invoke-direct {v1, p1}, Lk/p;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lk/k;->a(LA/j;)V

    .line 1116
    iget-object v0, p0, Lk/l;->a:Lk/k;

    invoke-static {v0, p1}, Lk/k;->a(Lk/k;Landroid/location/Location;)Landroid/location/Location;

    .line 1117
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 1121
    iget-object v0, p0, Lk/l;->a:Lk/k;

    new-instance v1, Lk/r;

    invoke-direct {v1, p1}, Lk/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lk/k;->a(LA/j;)V

    .line 1123
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 1127
    iget-object v0, p0, Lk/l;->a:Lk/k;

    new-instance v1, Lk/s;

    invoke-direct {v1, p1}, Lk/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lk/k;->a(LA/j;)V

    .line 1129
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1134
    iget-object v0, p0, Lk/l;->a:Lk/k;

    new-instance v1, Lk/t;

    invoke-direct {v1, p1, p2, p3}, Lk/t;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lk/k;->a(LA/j;)V

    .line 1136
    return-void
.end method
