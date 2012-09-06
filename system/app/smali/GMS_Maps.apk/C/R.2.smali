.class public LC/R;
.super Landroid/location/Location;
.source "SourceFile"


# instance fields
.field private a:LC/S;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LC/R;->b:Ljava/util/List;

    .line 52
    instance-of v0, p1, LC/R;

    if-eqz v0, :cond_17

    .line 53
    check-cast p1, LC/R;

    .line 54
    iget-object v0, p1, LC/R;->a:LC/S;

    iput-object v0, p0, LC/R;->a:LC/S;

    .line 55
    iget-object v0, p1, LC/R;->b:Ljava/util/List;

    iput-object v0, p0, LC/R;->b:Ljava/util/List;

    .line 57
    :cond_17
    return-void
.end method


# virtual methods
.method public a()LC/S;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, LC/R;->a:LC/S;

    return-object v0
.end method

.method public a(LC/S;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, LC/R;->a:LC/S;

    .line 77
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, LC/R;->a:LC/S;

    sget-object v1, LC/S;->a:LC/S;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, LC/R;->a:LC/S;

    sget-object v1, LC/S;->b:LC/S;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
