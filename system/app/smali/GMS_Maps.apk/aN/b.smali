.class public abstract Lan/b;
.super Lan/c;
.source "SourceFile"


# instance fields
.field protected final b:Landroid/location/LocationManager;


# direct methods
.method protected constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lan/c;-><init>(Z)V

    .line 39
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->C()Landroid/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lan/b;->b:Landroid/location/LocationManager;

    .line 41
    return-void
.end method

.method protected static b(Landroid/location/Location;)Ln/B;
    .registers 6
    .parameter

    .prologue
    const/high16 v4, -0x8000

    const/4 v0, 0x0

    .line 84
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->u()Z

    move-result v1

    if-nez v1, :cond_e

    .line 112
    :cond_d
    :goto_d
    return-object v0

    .line 88
    :cond_e
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_d

    .line 93
    const-string v2, "levelId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string v3, "levelNumberE3"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 97
    if-eqz v2, :cond_d

    .line 98
    invoke-static {v2}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_d

    .line 100
    if-ne v1, v4, :cond_47

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing level number for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v3, "LOCATION"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    :cond_47
    new-instance v0, Ln/B;

    invoke-direct {v0, v2, v1}, Ln/B;-><init>(Ln/p;I)V

    goto :goto_d
.end method


# virtual methods
.method public f()Z
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lan/b;->i()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lan/b;->h()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public h()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 56
    :try_start_1
    iget-object v1, p0, Lan/b;->b:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v2, "network"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lan/b;->b:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_16} :catch_1b

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    .line 62
    :cond_1a
    :goto_1a
    return v0

    .line 58
    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method public i()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 69
    :try_start_1
    iget-object v1, p0, Lan/b;->b:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v2, "gps"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lan/b;->b:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_16} :catch_1b

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    .line 75
    :cond_1a
    :goto_1a
    return v0

    .line 71
    :catch_1b
    move-exception v1

    goto :goto_1a
.end method
