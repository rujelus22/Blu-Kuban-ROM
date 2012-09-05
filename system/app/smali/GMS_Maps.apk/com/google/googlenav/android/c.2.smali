.class public Lcom/google/googlenav/android/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/b;


# static fields
.field static final synthetic a:Z

.field private static b:Lcom/google/googlenav/android/c;


# instance fields
.field private final c:Lcom/google/googlenav/android/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/android/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/android/c;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/google/googlenav/android/AndroidGmmApplication;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Maps"

    const-string v1, "Build: 6030007"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lat/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/android/l;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/google/googlenav/android/l;-><init>(Lcom/google/googlenav/android/AndroidGmmApplication;Lap/c;Lat/h;)V

    iput-object v1, p0, Lcom/google/googlenav/android/c;->c:Lcom/google/googlenav/android/l;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->i()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->N()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "Maps"

    const-string v1, "Upgrading friends opt in history"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lax/aI;->b()V

    :cond_3a
    invoke-static {}, Lax/aa;->h()Lax/aa;

    move-result-object v0

    new-instance v1, Lad/b;

    invoke-direct {v1, p1}, Lad/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lax/aa;->a(Lcom/google/googlenav/login/i;)V

    new-instance v0, Lcom/google/googlenav/networkinitiated/c;

    invoke-direct {v0, p1}, Lcom/google/googlenav/networkinitiated/c;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lax/aa;->h()Lax/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lax/aa;->a(Lcom/google/googlenav/login/i;)V

    invoke-virtual {v0}, Lcom/google/googlenav/networkinitiated/c;->c()V

    :cond_55
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->M()Z

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Lat/h;
    .registers 8

    const/4 v1, 0x1

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    if-nez v0, :cond_ba

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "6030007"

    const-string v3, "6030007"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "logging_id2"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4a

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "logging_id2"

    invoke-static {v0, v3}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4a
    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v3

    new-instance v4, Lat/j;

    invoke-direct {v4}, Lat/j;-><init>()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/M;->Q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lat/j;->a(Ljava/lang/String;)Lat/j;

    move-result-object v4

    invoke-virtual {v4, p0}, Lat/j;->b(Ljava/lang/String;)Lat/j;

    move-result-object v4

    invoke-virtual {v4, v2}, Lat/j;->c(Ljava/lang/String;)Lat/j;

    move-result-object v2

    invoke-static {}, Laf/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lat/j;->d(Ljava/lang/String;)Lat/j;

    move-result-object v2

    invoke-static {}, Laf/d;->a()Z

    move-result v4

    invoke-virtual {v2, v4}, Lat/j;->a(Z)Lat/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lat/j;->b(Z)Lat/j;

    move-result-object v2

    invoke-virtual {v2, v0}, Lat/j;->e(Ljava/lang/String;)Lat/j;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ak()Z

    move-result v2

    invoke-virtual {v0, v2}, Lat/j;->c(Z)Lat/j;

    move-result-object v0

    invoke-virtual {v3, p1}, Lcom/google/googlenav/capabilities/a;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lat/j;->e(Z)Lat/j;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/googlenav/capabilities/a;->b()Z

    move-result v0

    if-nez v0, :cond_be

    move v0, v1

    :goto_9a
    invoke-virtual {v2, v0}, Lat/j;->d(Z)Lat/j;

    move-result-object v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->s()I

    move-result v2

    invoke-virtual {v0, v2}, Lat/j;->a(I)Lat/j;

    move-result-object v0

    const-string v2, "GMM"

    invoke-virtual {v0, v2}, Lat/j;->f(Ljava/lang/String;)Lat/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/j;->f(Z)Lat/j;

    invoke-virtual {v0}, Lat/j;->a()Lat/h;

    move-result-object v0

    invoke-static {}, Lab/d;->c()V

    :cond_ba
    invoke-static {v0}, Lae/d;->a(Lat/h;)V

    return-object v0

    :cond_be
    const/4 v0, 0x0

    goto :goto_9a
.end method

.method public static a()Lcom/google/googlenav/android/c;
    .registers 1

    sget-boolean v0, Lcom/google/googlenav/android/c;->a:Z

    if-nez v0, :cond_e

    sget-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    sget-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)Lcom/google/googlenav/android/c;
    .registers 2

    sget-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    if-nez v0, :cond_12

    check-cast p0, Lcom/google/googlenav/android/AndroidGmmApplication;

    new-instance v0, Lcom/google/googlenav/android/c;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/c;-><init>(Lcom/google/googlenav/android/AndroidGmmApplication;)V

    sput-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    sget-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a(Lcom/google/googlenav/android/b;)V

    :cond_12
    sget-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Laf/b;

    invoke-direct {v0, p0}, Laf/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Laf/b;->a(Landroid/content/Context;)V

    invoke-static {v0}, Laf/b;->a(Laf/b;)V

    :cond_11
    invoke-static {}, Laf/m;->b()Laf/n;

    move-result-object v0

    instance-of v0, v0, Lcom/google/googlenav/android/M;

    if-nez v0, :cond_21

    new-instance v0, Lcom/google/googlenav/android/M;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/M;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Laf/m;->a(Laf/n;)V

    :cond_21
    invoke-static {}, LaI/c;->a()Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, LaI/a;

    invoke-direct {v0}, LaI/a;-><init>()V

    invoke-static {v0}, LaI/c;->a(LaI/d;)V

    :cond_2f
    invoke-static {}, LaF/b;->a()Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    invoke-static {v0}, LaF/b;->a(LaF/c;)V

    :cond_3d
    return-void
.end method

.method public static b(Landroid/content/Context;)Lat/h;
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v2

    if-nez v2, :cond_9

    move v0, v1

    :cond_9
    invoke-static {}, Laf/b;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/googlenav/android/c;->a(Ljava/lang/String;Landroid/content/Context;)Lat/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lat/h;->c(I)V

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/google/googlenav/android/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/android/e;-><init>(Lcom/google/googlenav/android/d;)V

    invoke-virtual {v2, v0}, Lat/h;->a(Lat/p;)V

    :cond_1f
    invoke-virtual {v2}, Lat/h;->t()V

    return-object v2
.end method

.method public static b()Z
    .registers 1

    sget-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static f()V
    .registers 0

    invoke-static {}, Laf/m;->f()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Laf/b;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/googlenav/android/c;->c:Lcom/google/googlenav/android/l;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/android/l;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public c()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->c()V

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/android/c;->c:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/android/c;->c:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->i(Z)V

    :cond_1f
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0}, Lat/h;->s()V

    invoke-static {}, Lat/h;->b()V

    :cond_2f
    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-static {}, LaE/h;->b()V

    :cond_38
    return-void
.end method

.method public d()V
    .registers 1

    invoke-static {}, Laf/l;->a()V

    return-void
.end method

.method public e()Lcom/google/googlenav/android/l;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/c;->c:Lcom/google/googlenav/android/l;

    return-object v0
.end method

.method public h()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/c;->c:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    return-object v0
.end method
