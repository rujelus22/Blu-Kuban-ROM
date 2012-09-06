.class public final Lcom/mobfox/video/sdk/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Ljava/util/HashMap;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/Thread;

.field private i:Landroid/os/Handler;

.field private j:Lcom/mobfox/video/sdk/cf;

.field private k:Lcom/mobfox/video/sdk/h;

.field private l:Z

.field private m:Z

.field private n:Lcom/mobfox/video/sdk/cl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobfox/video/sdk/i;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobfox/video/sdk/i;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/i;->l:Z

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/i;->m:Z

    iput-object p1, p0, Lcom/mobfox/video/sdk/i;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobfox/video/sdk/i;->c:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/i;->f:Z

    iput-object v1, p0, Lcom/mobfox/video/sdk/i;->h:Ljava/lang/Thread;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mobfox/video/sdk/i;->i:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/mobfox/video/sdk/i;->m:Z

    const-string v1, "MOBFOX"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "MOBFOX"

    const-string v2, "MobFox Video SDK Version:1.0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/mobfox/video/sdk/cr;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobfox/video/sdk/i;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/mobfox/video/sdk/cr;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobfox/video/sdk/i;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->c:Ljava/lang/String;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_57

    :cond_48
    const-string v0, "MOBFOX"

    const-string v1, "Publisher Id cannot be null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User Id cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->e:Ljava/lang/String;

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_72

    :cond_63
    const-string v0, "MOBFOX"

    const-string v1, "Cannot get system device Id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "System Device Id cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    const-string v1, "MOBFOX"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a8

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MobFox AdManager Publisher Id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mobfox/video/sdk/i;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Device Id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mobfox/video/sdk/i;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DeviceId2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mobfox/video/sdk/i;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/mobfox/video/sdk/cr;->g(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_d3

    :goto_b2
    iput-boolean v0, p0, Lcom/mobfox/video/sdk/i;->l:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobfox/video/sdk/cr;->h(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->g:Landroid/content/Context;

    invoke-static {}, Lcom/mobfox/video/sdk/cr;->b()Ljava/lang/String;

    invoke-static {v0}, Lcom/mobfox/video/sdk/ci;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/mobfox/video/sdk/b;->a(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/b;

    move-result-object v0

    if-eqz v0, :cond_d2

    iget-boolean v1, p0, Lcom/mobfox/video/sdk/i;->m:Z

    if-eqz v1, :cond_d2

    invoke-direct {p0}, Lcom/mobfox/video/sdk/i;->e()Lcom/mobfox/video/sdk/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/b;->a(Lcom/mobfox/video/sdk/cf;)V

    :cond_d2
    return-void

    :cond_d3
    const/4 v0, 0x0

    goto :goto_b2
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/cf;
    .registers 2

    invoke-direct {p0}, Lcom/mobfox/video/sdk/i;->e()Lcom/mobfox/video/sdk/cf;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/mobfox/video/sdk/cl;)Lcom/mobfox/video/sdk/i;
    .registers 6

    sget-object v0, Lcom/mobfox/video/sdk/i;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/cl;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobfox/video/sdk/i;

    if-nez v0, :cond_33

    const-string v1, "MOBFOX"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot find MobFoxAdManager with running ad:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/cl;->e()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-object v0
.end method

.method public static a(Lcom/mobfox/video/sdk/cl;Z)V
    .registers 8

    const/4 v5, 0x3

    sget-object v0, Lcom/mobfox/video/sdk/i;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/cl;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobfox/video/sdk/i;

    if-nez v0, :cond_34

    const-string v0, "MOBFOX"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find MobFoxAdManager with running ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/cl;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    return-void

    :cond_34
    const-string v1, "MOBFOX"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Notify closing event to MobFoxAdManager with running ad:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/cl;->e()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    iget-object v1, v0, Lcom/mobfox/video/sdk/i;->k:Lcom/mobfox/video/sdk/h;

    if-eqz v1, :cond_33

    const-string v1, "MOBFOX"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_74

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad Close. Result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    iget-object v1, v0, Lcom/mobfox/video/sdk/i;->i:Landroid/os/Handler;

    new-instance v2, Lcom/mobfox/video/sdk/p;

    invoke-direct {v2, v0, p0, p1}, Lcom/mobfox/video/sdk/p;-><init>(Lcom/mobfox/video/sdk/i;Lcom/mobfox/video/sdk/cl;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_33
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/i;Lcom/mobfox/video/sdk/cl;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/i;->n:Lcom/mobfox/video/sdk/cl;

    return-void
.end method

.method static synthetic b(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/cl;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->n:Lcom/mobfox/video/sdk/cl;

    return-object v0
.end method

.method private b(Lcom/mobfox/video/sdk/cl;Z)V
    .registers 6

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->k:Lcom/mobfox/video/sdk/h;

    if-eqz v0, :cond_2b

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad Shown. Result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->i:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/video/sdk/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/mobfox/video/sdk/o;-><init>(Lcom/mobfox/video/sdk/i;Lcom/mobfox/video/sdk/cl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobfox/video/sdk/i;->n:Lcom/mobfox/video/sdk/cl;

    return-void
.end method

.method static synthetic c(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/h;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->k:Lcom/mobfox/video/sdk/h;

    return-object v0
.end method

.method static synthetic d(Lcom/mobfox/video/sdk/i;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private e()Lcom/mobfox/video/sdk/cf;
    .registers 7

    const/4 v5, 0x3

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    if-nez v0, :cond_37

    new-instance v0, Lcom/mobfox/video/sdk/cf;

    invoke-direct {v0}, Lcom/mobfox/video/sdk/cf;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/cf;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/cf;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/cf;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/mobfox/video/sdk/cr;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/cf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    invoke-static {}, Lcom/mobfox/video/sdk/cr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/cf;->b(Ljava/lang/String;)V

    :cond_37
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mobfox/video/sdk/i;->f:Z

    if-eqz v1, :cond_42

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobfox/video/sdk/cr;->e(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    :cond_42
    if-eqz v0, :cond_c6

    const-string v1, "MOBFOX"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_72

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location is longitude: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mobfox/video/sdk/cf;->b(D)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mobfox/video/sdk/cf;->a(D)V

    :goto_84
    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    iget-object v1, p0, Lcom/mobfox/video/sdk/i;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/mobfox/video/sdk/cr;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/cf;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    invoke-static {}, Lcom/mobfox/video/sdk/cr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/cf;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mobfox/video/sdk/cf;->a(J)V

    const-string v0, "MOBFOX"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c3

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting new request:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    invoke-virtual {v2}, Lcom/mobfox/video/sdk/cf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c3
    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    return-object v0

    :cond_c6
    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    invoke-virtual {v0, v2, v3}, Lcom/mobfox/video/sdk/cf;->b(D)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->j:Lcom/mobfox/video/sdk/cf;

    invoke-virtual {v0, v2, v3}, Lcom/mobfox/video/sdk/cf;->a(D)V

    goto :goto_84
.end method

.method static synthetic e(Lcom/mobfox/video/sdk/i;)V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobfox/video/sdk/i;->h:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/mobfox/video/sdk/i;->l:Z

    if-nez v0, :cond_15

    const-string v0, "MOBFOX"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "MOBFOX"

    const-string v1, "Cannot request rich adds on low memory devices"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->h:Ljava/lang/Thread;

    if-nez v0, :cond_48

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "MOBFOX"

    const-string v1, "Requesting Ad (v1.0-1.0)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobfox/video/sdk/i;->n:Lcom/mobfox/video/sdk/cl;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobfox/video/sdk/j;

    invoke-direct {v1, p0}, Lcom/mobfox/video/sdk/j;-><init>(Lcom/mobfox/video/sdk/i;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mobfox/video/sdk/i;->h:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->h:Ljava/lang/Thread;

    new-instance v1, Lcom/mobfox/video/sdk/n;

    invoke-direct {v1, p0}, Lcom/mobfox/video/sdk/n;-><init>(Lcom/mobfox/video/sdk/i;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_14

    :cond_48
    const-string v0, "MOBFOX"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "MOBFOX"

    const-string v1, "Request thread already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public final a(Lcom/mobfox/video/sdk/h;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/i;->k:Lcom/mobfox/video/sdk/h;

    return-void
.end method

.method public final b()V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->g:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/mobfox/video/sdk/i;->n:Lcom/mobfox/video/sdk/cl;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/mobfox/video/sdk/i;->n:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v2}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/mobfox/video/sdk/i;->n:Lcom/mobfox/video/sdk/cl;

    invoke-virtual {v2}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    :cond_1a
    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->n:Lcom/mobfox/video/sdk/cl;

    invoke-direct {p0, v0, v1}, Lcom/mobfox/video/sdk/i;->b(Lcom/mobfox/video/sdk/cl;Z)V

    :goto_1f
    return-void

    :cond_20
    iget-object v2, p0, Lcom/mobfox/video/sdk/i;->n:Lcom/mobfox/video/sdk/cl;

    :try_start_22
    iget-object v3, p0, Lcom/mobfox/video/sdk/i;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/mobfox/video/sdk/cr;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/mobfox/video/sdk/cl;->a(J)V

    const-string v3, "MOBFOX"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4e

    const-string v3, "MOBFOX"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Showing Ad:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "MOBFOX_RICH_AD_DATA"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {v2}, Lcom/mobfox/video/sdk/cl;->b()I

    move-result v3

    invoke-static {v3}, Lcom/mobfox/video/sdk/cr;->a(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/mobfox/video/sdk/cl;->b()I

    move-result v4

    invoke-static {v4}, Lcom/mobfox/video/sdk/cr;->b(I)I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a(Landroid/app/Activity;II)V
    :try_end_71
    .catchall {:try_start_22 .. :try_end_71} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_71} :catch_95

    const/4 v0, 0x1

    :try_start_72
    sget-object v1, Lcom/mobfox/video/sdk/i;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/mobfox/video/sdk/cl;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_a7
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7f} :catch_ac

    :goto_7f
    invoke-direct {p0, v2, v0}, Lcom/mobfox/video/sdk/i;->b(Lcom/mobfox/video/sdk/cl;Z)V

    goto :goto_1f

    :cond_83
    :try_start_83
    const-string v0, "MOBFOX"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b1

    const-string v0, "MOBFOX"

    const-string v3, "No network available. Cannot show Ad."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_93} :catch_95

    move v0, v1

    goto :goto_7f

    :catch_95
    move-exception v0

    :goto_96
    :try_start_96
    const-string v3, "MOBFOX"

    const-string v4, "Unknown exception when showing Ad"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_a2

    invoke-direct {p0, v2, v1}, Lcom/mobfox/video/sdk/i;->b(Lcom/mobfox/video/sdk/cl;Z)V

    goto/16 :goto_1f

    :catchall_a2
    move-exception v0

    :goto_a3
    invoke-direct {p0, v2, v1}, Lcom/mobfox/video/sdk/i;->b(Lcom/mobfox/video/sdk/cl;Z)V

    throw v0

    :catchall_a7
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_a3

    :catch_ac
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_96

    :cond_b1
    move v0, v1

    goto :goto_7f
.end method

.method public final c()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->g:Landroid/content/Context;

    return-object v0
.end method

.method public final d()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/i;->i:Landroid/os/Handler;

    return-object v0
.end method
