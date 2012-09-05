.class public final Lau;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lau;->c:I

    iput v0, p0, Lau;->b:I

    iput v0, p0, Lau;->a:I

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .registers 6
    .parameter

    .prologue
    const-wide v2, 0x412e848000000000L

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lau;->a:I

    .line 19
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lau;->b:I

    .line 20
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lau;->c:I

    .line 21
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lau;->e:J

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lau;->d:Ljava/lang/String;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lau;->e:J

    .line 27
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    instance-of v0, p1, Lau;

    if-nez v0, :cond_8

    move v0, v2

    .line 41
    :goto_7
    return v0

    .line 37
    :cond_8
    check-cast p1, Lau;

    .line 39
    iget-object v0, p0, Lau;->d:Ljava/lang/String;

    if-nez v0, :cond_16

    iget-object v0, p1, Lau;->d:Ljava/lang/String;

    if-nez v0, :cond_14

    move v0, v3

    goto :goto_7

    :cond_14
    move v0, v2

    goto :goto_7

    .line 41
    :cond_16
    iget v0, p0, Lau;->a:I

    iget v1, p1, Lau;->a:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lau;->b:I

    iget v1, p1, Lau;->b:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lau;->c:I

    iget v1, p1, Lau;->c:I

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lau;->d:Ljava/lang/String;

    iget-object v1, p1, Lau;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v3

    goto :goto_7

    :cond_34
    move v0, v2

    goto :goto_7
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 30
    const/16 v0, 0x11

    .line 31
    iget-object v1, p0, Lau;->d:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v0, p0, Lau;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 32
    :cond_c
    iget v1, p0, Lau;->a:I

    iget v2, p0, Lau;->b:I

    xor-int/2addr v1, v2

    iget v2, p0, Lau;->c:I

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method
