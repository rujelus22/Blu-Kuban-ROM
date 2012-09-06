.class public Lcom/google/ads/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/text/SimpleDateFormat;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;


# instance fields
.field private e:Lcom/google/ads/f;

.field private f:Ljava/util/Date;

.field private g:Ljava/util/Set;

.field private h:Ljava/util/Map;

.field private i:Ljava/util/Map;

.field private j:Landroid/location/Location;

.field private k:Z

.field private l:Z

.field private m:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v2, 0x0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/d;->b:Ljava/text/SimpleDateFormat;

    sput-object v2, Lcom/google/ads/d;->c:Ljava/lang/reflect/Method;

    sput-object v2, Lcom/google/ads/d;->d:Ljava/lang/reflect/Method;

    :try_start_e
    const-string v0, "com.google.analytics.tracking.android.AdMobInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v2, :cond_5b

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInstance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_36

    sput-object v3, Lcom/google/ads/d;->c:Ljava/lang/reflect/Method;

    :cond_33
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_36
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getJoinIds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_33

    sput-object v3, Lcom/google/ads/d;->d:Ljava/lang/reflect/Method;
    :try_end_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_4b} :catch_4c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_4b} :catch_6f

    goto :goto_33

    :catch_4c
    move-exception v0

    const-string v0, "No Google Analytics: Library Not Found."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :cond_52
    :goto_52
    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/d;->a:Ljava/lang/String;

    return-void

    :cond_5b
    :try_start_5b
    sget-object v0, Lcom/google/ads/d;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_63

    sget-object v0, Lcom/google/ads/d;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_52

    :cond_63
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/d;->c:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/d;->d:Ljava/lang/reflect/Method;

    const-string v0, "No Google Analytics: Library Incompatible."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5b .. :try_end_6e} :catch_4c
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_6e} :catch_6f

    goto :goto_52

    :catch_6f
    move-exception v0

    const-string v0, "No Google Analytics: Error Loading Library"

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_52
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/ads/d;->e:Lcom/google/ads/f;

    iput-object v1, p0, Lcom/google/ads/d;->f:Ljava/util/Date;

    iput-object v1, p0, Lcom/google/ads/d;->g:Ljava/util/Set;

    iput-object v1, p0, Lcom/google/ads/d;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/d;->i:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/ads/d;->j:Landroid/location/Location;

    iput-boolean v2, p0, Lcom/google/ads/d;->k:Z

    iput-boolean v2, p0, Lcom/google/ads/d;->l:Z

    iput-object v1, p0, Lcom/google/ads/d;->m:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/b/h;)Lcom/google/ads/d;
    .registers 4

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/google/ads/d;->i:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-object p0
.end method

.method public final a(Ljava/util/Set;)Lcom/google/ads/d;
    .registers 2

    iput-object p1, p0, Lcom/google/ads/d;->g:Ljava/util/Set;

    return-object p0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/ads/d;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/Map;
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/ads/d;->g:Ljava/util/Set;

    if-eqz v0, :cond_12

    const-string v0, "kw"

    iget-object v4, p0, Lcom/google/ads/d;->g:Ljava/util/Set;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget-object v0, p0, Lcom/google/ads/d;->e:Lcom/google/ads/f;

    if-eqz v0, :cond_25

    const-string v0, "cust_gender"

    iget-object v4, p0, Lcom/google/ads/d;->e:Lcom/google/ads/f;

    invoke-virtual {v4}, Lcom/google/ads/f;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    iget-object v0, p0, Lcom/google/ads/d;->f:Ljava/util/Date;

    if-eqz v0, :cond_36

    const-string v0, "cust_age"

    sget-object v4, Lcom/google/ads/d;->b:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/google/ads/d;->f:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    iget-object v0, p0, Lcom/google/ads/d;->j:Landroid/location/Location;

    if-eqz v0, :cond_45

    const-string v0, "uule"

    iget-object v4, p0, Lcom/google/ads/d;->j:Landroid/location/Location;

    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    iget-boolean v0, p0, Lcom/google/ads/d;->k:Z

    if-eqz v0, :cond_52

    const-string v0, "testing"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    invoke-virtual {p0, p1}, Lcom/google/ads/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c5

    const-string v0, "adtest"

    const-string v4, "on"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    :goto_5f
    const-class v0, Lcom/google/ads/b/a/a;

    invoke-virtual {p0, v0}, Lcom/google/ads/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/a/a;

    if-eqz v0, :cond_107

    invoke-virtual {v0}, Lcom/google/ads/b/a/a;->a()Z

    move-result v4

    if-eqz v4, :cond_107

    const-string v2, "pto"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_78
    if-eqz v0, :cond_93

    invoke-virtual {v0}, Lcom/google/ads/b/a/a;->b()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_93

    invoke-virtual {v0}, Lcom/google/ads/b/a/a;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_93

    const-string v1, "extras"

    invoke-virtual {v0}, Lcom/google/ads/b/a/a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_93
    iget-object v0, p0, Lcom/google/ads/d;->h:Ljava/util/Map;

    if-eqz v0, :cond_9e

    const-string v0, "mediation_extras"

    iget-object v1, p0, Lcom/google/ads/d;->h:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9e
    :try_start_9e
    sget-object v0, Lcom/google/ads/d;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c4

    sget-object v0, Lcom/google/ads/d;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/ads/d;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_c4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_c4

    const-string v1, "analytics_join_id"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_c4} :catch_11a

    :cond_c4
    :goto_c4
    return-object v3

    :cond_c5
    iget-boolean v0, p0, Lcom/google/ads/d;->l:Z

    if-nez v0, :cond_5f

    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_ed

    const-string v0, "AdRequest.TEST_EMULATOR"

    :goto_d1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "To get test ads on this device, call adRequest.addTestDevice("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ");"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/ads/d;->l:Z

    goto/16 :goto_5f

    :cond_ed
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d1

    :cond_107
    const-string v4, "cipa"

    invoke-static {p1}, Lcom/google/ads/q;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_118

    :goto_10f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_78

    :cond_118
    move v1, v2

    goto :goto_10f

    :catch_11a
    move-exception v0

    const-string v1, "Internal Analytics Error:"

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c4
.end method

.method public final b(Ljava/util/Set;)Lcom/google/ads/d;
    .registers 2

    iput-object p1, p0, Lcom/google/ads/d;->m:Ljava/util/Set;

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/ads/d;->m:Ljava/util/Set;

    if-eqz v1, :cond_b

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v2, p0, Lcom/google/ads/d;->m:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method
