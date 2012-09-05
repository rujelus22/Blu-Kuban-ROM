.class Lcom/google/android/location/internal/server/f;
.super Landroid/os/Handler;

# interfaces
.implements Lcom/google/android/location/internal/g;
.implements Lcom/google/android/location/os/real/L;


# instance fields
.field a:Ljava/util/Map;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Landroid/content/Context;

.field private final h:Landroid/location/LocationManager;

.field private final i:Lcom/google/android/location/internal/h;

.field private j:Landroid/database/Cursor;

.field private k:Landroid/content/ContentQueryMap;

.field private l:Lcom/google/android/location/internal/server/h;

.field private m:Z

.field private n:Z

.field private final o:Ljava/lang/Object;

.field private p:Li/f;

.field private final q:Ljava/util/LinkedHashMap;

.field private r:Z

.field private s:Lcom/google/android/location/os/real/K;

.field private t:Lc/l;

.field private u:J

.field private final v:Lcom/google/android/location/internal/server/a;

.field private w:Z

.field private x:Lcom/google/android/location/os/real/J;

.field private y:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 8

    const-wide/16 v3, -0x1

    const/16 v2, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "networkLocationType"

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->b:Ljava/lang/String;

    const-string v0, "levelId"

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->c:Ljava/lang/String;

    const-string v0, "levelNumberE3"

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->d:Ljava/lang/String;

    const-string v0, "cell"

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->e:Ljava/lang/String;

    const-string v0, "wifi"

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->f:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/location/internal/server/f;->m:Z

    iput-boolean v1, p0, Lcom/google/android/location/internal/server/f;->n:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/location/internal/server/g;

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/internal/server/g;-><init>(Lcom/google/android/location/internal/server/f;I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->q:Ljava/util/LinkedHashMap;

    iput-boolean v1, p0, Lcom/google/android/location/internal/server/f;->r:Z

    iput-wide v3, p0, Lcom/google/android/location/internal/server/f;->u:J

    iput-boolean v1, p0, Lcom/google/android/location/internal/server/f;->w:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->x:Lcom/google/android/location/os/real/J;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->a:Ljava/util/Map;

    iput-wide v3, p0, Lcom/google/android/location/internal/server/f;->y:J

    iput-object p1, p0, Lcom/google/android/location/internal/server/f;->g:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/location/internal/server/f;->e()V

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->h:Landroid/location/LocationManager;

    sget-object v0, Lcom/google/android/location/internal/i;->b:Lcom/google/android/location/internal/i;

    invoke-static {v0, p1}, Lcom/google/android/location/internal/h;->a(Lcom/google/android/location/internal/i;Landroid/content/Context;)Lcom/google/android/location/internal/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->i:Lcom/google/android/location/internal/h;

    new-instance v0, Lcom/google/android/location/internal/server/a;

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->i:Lcom/google/android/location/internal/h;

    iget v1, v1, Lcom/google/android/location/internal/h;->d:I

    invoke-direct {v0, v1}, Lcom/google/android/location/internal/server/a;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->v:Lcom/google/android/location/internal/server/a;

    return-void
.end method

.method private a(Le/n;)Landroid/location/Location;
    .registers 8

    const-wide v4, 0x416312d000000000L

    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Le/n;->c:Le/x;

    iget v2, v1, Le/x;->a:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    iget v2, v1, Le/x;->b:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    iget v1, v1, Le/x;->c:I

    int-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    iget-wide v1, p1, Le/n;->e:J

    invoke-static {}, Lcom/google/android/location/os/real/K;->A()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    return-object v0
.end method

.method private a(J)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->x:Lcom/google/android/location/os/real/J;

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/google/android/location/os/real/K;->y()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/internal/server/f;->x:Lcom/google/android/location/os/real/J;

    invoke-virtual {v2}, Lcom/google/android/location/os/real/J;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_51

    :cond_13
    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->h:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-static {}, Lcom/google/android/location/os/real/K;->z()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_51

    new-instance v1, Lcom/google/android/location/os/real/J;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/location/os/real/K;->A()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/location/os/real/J;-><init>(Landroid/location/Location;JI)V

    iput-object v1, p0, Lcom/google/android/location/internal/server/f;->x:Lcom/google/android/location/os/real/J;

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->q:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/location/internal/server/f;->x:Lcom/google/android/location/os/real/J;

    invoke-virtual {v2}, Lcom/google/android/location/os/real/J;->n()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iget-object v2, p0, Lcom/google/android/location/internal/server/f;->x:Lcom/google/android/location/os/real/J;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/internal/server/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/location/internal/server/f;->g()V

    return-void
.end method

.method private a(Z)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->v:Lcom/google/android/location/internal/server/a;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/a;->a()I

    move-result v1

    if-nez p1, :cond_f

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/google/android/location/internal/server/f;->u:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    :cond_f
    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/location/os/real/K;->a(IZ)V

    :cond_18
    invoke-static {}, Lcom/google/android/location/os/real/K;->y()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/location/internal/server/f;->y:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2a

    iput-wide v2, p0, Lcom/google/android/location/internal/server/f;->y:J

    :cond_26
    :goto_26
    int-to-long v0, v1

    iput-wide v0, p0, Lcom/google/android/location/internal/server/f;->u:J

    return-void

    :cond_2a
    iget-wide v4, p0, Lcom/google/android/location/internal/server/f;->y:J

    sub-long v4, v2, v4

    iput-wide v2, p0, Lcom/google/android/location/internal/server/f;->y:J

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_26

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->a:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_52
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long v3, v4, v6

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->a:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26
.end method

.method private b(Le/u;Le/G;)Landroid/location/Location;
    .registers 5

    iget-object v0, p1, Le/u;->a:Le/n;

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/f;->a(Le/n;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/google/android/location/internal/server/f;->c(Le/u;Le/G;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private c(Le/u;Le/G;)Landroid/os/Bundle;
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, Le/u;->a:Le/n;

    iget-object v2, p1, Le/u;->d:Le/e;

    if-ne v1, v2, :cond_26

    const-string v1, "networkLocationSource"

    const-string v2, "server"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    if-eqz p2, :cond_25

    sget-object v1, Le/G;->c:Le/G;

    if-eq p2, v1, :cond_25

    const-string v1, "travelState"

    invoke-virtual {p2}, Le/G;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-object v0

    :cond_26
    const-string v2, "networkLocationSource"

    const-string v3, "cached"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Le/u;->c:Le/a;

    if-ne v1, v2, :cond_39

    const-string v1, "networkLocationType"

    const-string v2, "cell"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_39
    iget-object v2, p1, Le/u;->b:Le/K;

    if-ne v1, v2, :cond_12

    const-string v1, "networkLocationType"

    const-string v2, "wifi"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Le/u;->b:Le/K;

    iget-object v1, v1, Le/K;->c:Le/x;

    if-eqz v1, :cond_5d

    iget-object v1, p1, Le/u;->b:Le/K;

    iget-object v1, v1, Le/K;->c:Le/x;

    iget-object v1, v1, Le/x;->e:Ljava/lang/String;

    if-eqz v1, :cond_5d

    const-string v1, "levelId"

    iget-object v2, p1, Le/u;->b:Le/K;

    iget-object v2, v2, Le/K;->c:Le/x;

    iget-object v2, v2, Le/x;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    iget-object v1, p1, Le/u;->b:Le/K;

    iget-object v1, v1, Le/K;->c:Le/x;

    if-eqz v1, :cond_12

    iget-object v1, p1, Le/u;->b:Le/K;

    iget-object v1, v1, Le/K;->c:Le/x;

    iget v1, v1, Le/x;->f:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_12

    const-string v1, "levelNumberE3"

    iget-object v2, p1, Le/u;->b:Le/K;

    iget-object v2, v2, Le/K;->c:Le/x;

    iget v2, v2, Le/x;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_12
.end method

.method private static final e()V
    .registers 4

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v1}, Lcom/google/gmm/debug/c;->a(Ljava/lang/String;)V

    :try_start_6
    const-string v1, "com.google.gmm.debug.SimpleLogger"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "activationLevel"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {}, Lcom/google/gmm/debug/b;->a()Lcom/google/gmm/debug/e;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_1e} :catch_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_1e} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_1e} :catch_21

    :goto_1e
    if-eqz v0, :cond_20

    :cond_20
    return-void

    :catch_21
    move-exception v0

    goto :goto_1e

    :catch_23
    move-exception v0

    goto :goto_1e

    :catch_25
    move-exception v0

    goto :goto_1e
.end method

.method private f()V
    .registers 6

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/location/internal/i;->a:Lcom/google/android/location/internal/i;

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->g:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/location/internal/h;->a(Lcom/google/android/location/internal/i;Landroid/content/Context;)Lcom/google/android/location/internal/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/internal/server/f;->i:Lcom/google/android/location/internal/h;

    iget v0, v1, Lcom/google/android/location/internal/h;->d:I

    iget-object v3, p0, Lcom/google/android/location/internal/server/f;->i:Lcom/google/android/location/internal/h;

    iget v3, v3, Lcom/google/android/location/internal/h;->d:I

    if-lt v0, v3, :cond_31

    move-object v0, v1

    :goto_14
    if-ne v0, v2, :cond_38

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->g:Landroid/content/Context;

    iget-object v2, v2, Lcom/google/android/location/internal/h;->e:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, v1, Lcom/google/android/location/internal/h;->a:Lcom/google/android/location/internal/i;

    sget-object v1, Lcom/google/android/location/internal/i;->c:Lcom/google/android/location/internal/i;

    if-ne v0, v1, :cond_34

    iput-boolean v4, p0, Lcom/google/android/location/internal/server/f;->w:Z

    :goto_25
    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    iget-boolean v1, p0, Lcom/google/android/location/internal/server/f;->w:Z

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/K;->c(Z)V

    :cond_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->i:Lcom/google/android/location/internal/h;

    goto :goto_14

    :cond_34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/f;->w:Z

    goto :goto_25

    :cond_38
    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->g:Landroid/content/Context;

    iget-object v1, v2, Lcom/google/android/location/internal/h;->e:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iput-boolean v4, p0, Lcom/google/android/location/internal/server/f;->w:Z

    goto :goto_25
.end method

.method private g()V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/location/internal/server/f;->j:Landroid/database/Cursor;

    if-eqz v3, :cond_7e

    const-string v3, "network_location_opt_in"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_7e

    move v0, v1

    :goto_16
    iget-object v3, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v3

    :try_start_19
    iget-boolean v4, p0, Lcom/google/android/location/internal/server/f;->m:Z

    if-eq v4, v0, :cond_26

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/f;->m:Z

    iget-object v4, p0, Lcom/google/android/location/internal/server/f;->v:Lcom/google/android/location/internal/server/a;

    iget-object v5, p0, Lcom/google/android/location/internal/server/f;->g:Landroid/content/Context;

    invoke-virtual {v4, v5, v0}, Lcom/google/android/location/internal/server/a;->a(Landroid/content/Context;Z)V

    :cond_26
    iget-boolean v0, p0, Lcom/google/android/location/internal/server/f;->r:Z

    if-eqz v0, :cond_80

    iget-boolean v0, p0, Lcom/google/android/location/internal/server/f;->m:Z

    if-eqz v0, :cond_80

    :goto_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_82

    if-eqz v1, :cond_88

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    if-nez v0, :cond_88

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_38
    iget-boolean v0, p0, Lcom/google/android/location/internal/server/f;->r:Z

    if-eqz v0, :cond_6a

    new-instance v0, Lcom/google/android/location/os/real/K;

    iget-object v2, p0, Lcom/google/android/location/internal/server/f;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/location/internal/server/f;->p:Li/f;

    iget-boolean v4, p0, Lcom/google/android/location/internal/server/f;->w:Z

    invoke-direct {v0, v2, v3, p0, v4}, Lcom/google/android/location/os/real/K;-><init>(Landroid/content/Context;Li/f;Lcom/google/android/location/os/real/L;Z)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    invoke-static {v0}, Lc/l;->a(Li/E;)Lc/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->t:Lc/l;

    new-instance v0, La/u;

    iget-object v2, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    iget-object v3, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    invoke-virtual {v3}, Lcom/google/android/location/os/real/K;->w()Li/C;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    invoke-virtual {v4}, Lcom/google/android/location/os/real/K;->v()Lj/a;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/location/internal/server/f;->t:Lc/l;

    invoke-direct {v0, v2, v3, v4, v5}, La/u;-><init>(Li/E;Li/C;Lj/a;Lc/l;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/f;->a(Z)V

    :cond_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_38 .. :try_end_6b} :catchall_85

    :cond_6b
    :goto_6b
    iget-boolean v0, p0, Lcom/google/android/location/internal/server/f;->m:Z

    if-nez v0, :cond_7d

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/os/real/K;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->t:Lc/l;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->t:Lc/l;

    invoke-virtual {v0}, Lc/l;->c()V

    :cond_7d
    return-void

    :cond_7e
    move v0, v2

    goto :goto_16

    :cond_80
    move v1, v2

    goto :goto_2e

    :catchall_82
    move-exception v0

    :try_start_83
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v0

    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v0

    :cond_88
    if-nez v1, :cond_6b

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    iget-boolean v1, p0, Lcom/google/android/location/internal/server/f;->m:Z

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/K;->b(Z)V

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/K;->x()V

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_9e
    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->x:Lcom/google/android/location/os/real/J;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/internal/server/f;->u:J

    monitor-exit v1

    goto :goto_6b

    :catchall_a9
    move-exception v0

    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_9e .. :try_end_ab} :catchall_a9

    throw v0
.end method


# virtual methods
.method public a(Landroid/location/Location;)Ljava/lang/Object;
    .registers 6

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->q:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public a()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_4
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public a(Landroid/app/PendingIntent;I)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->v:Lcom/google/android/location/internal/server/a;

    iget-object v2, p0, Lcom/google/android/location/internal/server/f;->g:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/google/android/location/internal/server/a;->a(Landroid/content/Context;Landroid/app/PendingIntent;ILandroid/location/Location;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/f;->a(Z)V

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public a(Lcom/google/android/location/internal/a;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->v:Lcom/google/android/location/internal/server/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/internal/server/a;->a(Lcom/google/android/location/internal/a;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/f;->a(Z)V

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public a(Lcom/google/android/location/internal/a;II)V
    .registers 11

    mul-int/lit16 v0, p3, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, -0x1

    if-eq p3, v3, :cond_28

    :try_start_9
    invoke-direct {p0, v0, v1}, Lcom/google/android/location/internal/server/f;->a(J)V

    iget-object v3, p0, Lcom/google/android/location/internal/server/f;->x:Lcom/google/android/location/os/real/J;

    if-eqz v3, :cond_28

    invoke-static {}, Lcom/google/android/location/os/real/K;->y()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/location/internal/server/f;->x:Lcom/google/android/location/os/real/J;

    invoke-virtual {v5}, Lcom/google/android/location/os/real/J;->f()J
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_3b

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v0

    if-gtz v0, :cond_28

    :try_start_1f
    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->x:Lcom/google/android/location/os/real/J;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/J;->n()Landroid/location/Location;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/location/internal/a;->a(Landroid/location/Location;)V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_3b
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_38

    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->v:Lcom/google/android/location/internal/server/a;

    const/4 v1, 0x5

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/internal/server/a;->a(Lcom/google/android/location/internal/a;I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/f;->a(Z)V

    monitor-exit v2

    :goto_37
    return-void

    :catch_38
    move-exception v0

    monitor-exit v2

    goto :goto_37

    :catchall_3b
    move-exception v0

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public a(Le/u;Le/G;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lcom/google/android/location/internal/server/f;->b(Le/u;Le/G;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    new-instance v2, Lcom/google/android/location/os/real/J;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {}, Lcom/google/android/location/os/real/K;->A()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/google/android/location/os/real/J;-><init>(Landroid/location/Location;JI)V

    iput-object v2, p0, Lcom/google/android/location/internal/server/f;->x:Lcom/google/android/location/os/real/J;

    iget-object v2, p0, Lcom/google/android/location/internal/server/f;->q:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/location/internal/server/f;->x:Lcom/google/android/location/os/real/J;

    invoke-virtual {v4}, Lcom/google/android/location/os/real/J;->n()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/location/internal/server/f;->v:Lcom/google/android/location/internal/server/a;

    iget-object v3, p0, Lcom/google/android/location/internal/server/f;->g:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/location/internal/server/a;->a(Landroid/content/Context;Landroid/location/Location;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/f;->a(Z)V

    monitor-exit v1

    return-void

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public a(Li/f;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/location/internal/server/f;->p:Li/f;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public a(Ljava/io/PrintWriter;)V
    .registers 12

    iget-object v2, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NLP-Period is currently "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/android/location/internal/server/f;->u:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/google/android/location/internal/server/f;->u:J

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_54

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/location/os/real/K;->y()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/location/internal/server/f;->y:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NLP-Period interval "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_6a

    const-string v0, "<no-client>"

    :cond_6a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", duration was "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_25

    :catchall_8d
    move-exception v0

    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_8d

    throw v0

    :cond_90
    :try_start_90
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8d

    return-void
.end method

.method public b()V
    .registers 9

    iget-object v6, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    invoke-static {p0}, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a(Lcom/google/android/location/internal/g;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/f;->r:Z

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->j:Landroid/database/Cursor;

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "network_location_opt_in"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->j:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->j:Landroid/database/Cursor;

    if-eqz v0, :cond_46

    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->j:Landroid/database/Cursor;

    const-string v2, "name"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->k:Landroid/content/ContentQueryMap;

    new-instance v0, Lcom/google/android/location/internal/server/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/internal/server/h;-><init>(Lcom/google/android/location/internal/server/f;Lcom/google/android/location/internal/server/g;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->l:Lcom/google/android/location/internal/server/h;

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->k:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->l:Lcom/google/android/location/internal/server/h;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    :cond_46
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/google/android/location/internal/server/f;->f()V

    monitor-exit v6

    return-void

    :catchall_53
    move-exception v0

    monitor-exit v6
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v0
.end method

.method public c()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->b(Lcom/google/android/location/internal/g;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/f;->r:Z

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->j:Landroid/database/Cursor;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->k:Landroid/content/ContentQueryMap;

    iget-object v2, p0, Lcom/google/android/location/internal/server/f;->l:Lcom/google/android/location/internal/server/h;

    invoke-virtual {v0, v2}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->k:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->j:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->l:Lcom/google/android/location/internal/server/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->k:Landroid/content/ContentQueryMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/f;->j:Landroid/database/Cursor;

    :cond_27
    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->s:Lcom/google/android/location/os/real/K;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/location/os/real/K;->b(Z)V

    :cond_31
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/google/android/location/internal/server/f;->f()V

    monitor-exit v1

    return-void

    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public d()Li/B;
    .registers 3

    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->x:Lcom/google/android/location/os/real/J;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/location/internal/server/f;->n:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/f;->n:Z

    iget-object v0, p0, Lcom/google/android/location/internal/server/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/os/real/K;->b(Landroid/content/Context;)V

    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    :goto_11
    return-void

    :pswitch_12
    invoke-direct {p0}, Lcom/google/android/location/internal/server/f;->g()V

    goto :goto_11

    :pswitch_16
    iget-object v1, p0, Lcom/google/android/location/internal/server/f;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_19
    invoke-direct {p0}, Lcom/google/android/location/internal/server/f;->f()V

    monitor-exit v1

    goto :goto_11

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    throw v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method
