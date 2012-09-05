.class public LaH/j;
.super LaE/a;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field protected static h:LaH/g;


# instance fields
.field private volatile i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, LaE/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaH/j;->i:Z

    new-instance v0, LaH/g;

    invoke-direct {v0, p0, p1}, LaH/g;-><init>(LaH/j;Landroid/content/Context;)V

    sput-object v0, LaH/j;->h:LaH/g;

    return-void
.end method


# virtual methods
.method protected b()V
    .registers 2

    invoke-super {p0}, LaE/a;->b()V

    monitor-enter p0

    :try_start_4
    sget-object v0, LaH/j;->h:LaH/g;

    invoke-virtual {v0}, LaH/g;->b()V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    const/4 v0, 0x0

    iput-boolean v0, p0, LaH/j;->i:Z

    return-void

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method protected c()V
    .registers 2

    sget-object v0, LaH/j;->h:LaH/g;

    invoke-virtual {v0}, LaH/g;->a()V

    iget-boolean v0, p0, LaH/j;->i:Z

    if-nez v0, :cond_c

    invoke-super {p0}, LaE/a;->c()V

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, LaH/j;->i:Z

    return-void
.end method

.method protected c(Landroid/location/Location;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LaH/j;->a(Landroid/location/Location;Z)V

    return-void
.end method

.method protected d(Landroid/location/Location;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LaH/j;->a(Landroid/location/Location;Z)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p1}, LaH/j;->b(Landroid/location/Location;)Lt/y;

    move-result-object v0

    sget-object v1, LaH/j;->h:LaH/g;

    invoke-virtual {v1, p1, v0}, LaH/g;->a(Landroid/location/Location;Lt/y;)V

    goto :goto_2
.end method
