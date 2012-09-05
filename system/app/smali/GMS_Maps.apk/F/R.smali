.class public LF/R;
.super Landroid/location/Location;


# instance fields
.field private a:LF/S;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LF/R;->b:Ljava/util/List;

    instance-of v0, p1, LF/R;

    if-eqz v0, :cond_17

    check-cast p1, LF/R;

    iget-object v0, p1, LF/R;->a:LF/S;

    iput-object v0, p0, LF/R;->a:LF/S;

    iget-object v0, p1, LF/R;->b:Ljava/util/List;

    iput-object v0, p0, LF/R;->b:Ljava/util/List;

    :cond_17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LF/R;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()LF/S;
    .registers 2

    iget-object v0, p0, LF/R;->a:LF/S;

    return-object v0
.end method

.method public a(LF/S;)V
    .registers 2

    iput-object p1, p0, LF/R;->a:LF/S;

    return-void
.end method

.method public b()Z
    .registers 3

    iget-object v0, p0, LF/R;->a:LF/S;

    sget-object v1, LF/S;->a:LF/S;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, LF/R;->a:LF/S;

    sget-object v1, LF/S;->b:LF/S;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
