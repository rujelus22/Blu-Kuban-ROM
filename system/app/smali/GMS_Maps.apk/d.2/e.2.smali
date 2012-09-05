.class Ld/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "com.google.android.apps.maps.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ld/e;->a:Ljava/util/regex/Pattern;

    new-instance v0, Ld/f;

    const-string v1, "com.google.android.apps.modis"

    sget-object v4, Ld/an;->j:Ljava/util/Set;

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ld/f;-><init>(Ljava/lang/String;ZZLjava/util/Set;Z)V

    new-instance v4, Ld/f;

    const-string v5, "com.google.android.apps.maps"

    sget-object v8, Ld/an;->j:Ljava/util/Set;

    move v6, v2

    move v7, v3

    move v9, v2

    invoke-direct/range {v4 .. v9}, Ld/f;-><init>(Ljava/lang/String;ZZLjava/util/Set;Z)V

    const/16 v1, 0x8

    new-array v1, v1, [Ld/an;

    sget-object v5, Ld/an;->a:Ld/an;

    aput-object v5, v1, v2

    sget-object v5, Ld/an;->b:Ld/an;

    aput-object v5, v1, v3

    const/4 v5, 0x2

    sget-object v6, Ld/an;->d:Ld/an;

    aput-object v6, v1, v5

    const/4 v5, 0x3

    sget-object v6, Ld/an;->g:Ld/an;

    aput-object v6, v1, v5

    const/4 v5, 0x4

    sget-object v6, Ld/an;->h:Ld/an;

    aput-object v6, v1, v5

    const/4 v5, 0x5

    sget-object v6, Ld/an;->d:Ld/an;

    aput-object v6, v1, v5

    const/4 v5, 0x6

    sget-object v6, Ld/an;->e:Ld/an;

    aput-object v6, v1, v5

    const/4 v5, 0x7

    sget-object v6, Ld/an;->f:Ld/an;

    aput-object v6, v1, v5

    invoke-static {v1}, Ld/an;->a([Ld/an;)Ljava/util/Set;

    move-result-object v9

    new-instance v5, Ld/f;

    const-string v6, "com.google.location.lbs.collectionlib"

    move v7, v3

    move v8, v2

    move v10, v3

    invoke-direct/range {v5 .. v10}, Ld/f;-><init>(Ljava/lang/String;ZZLjava/util/Set;Z)V

    invoke-static {}, Ld/ax;->d()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ld/f;->a(Ld/f;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ld/f;->a(Ld/f;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ld/f;->a(Ld/f;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ld/e;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ld/f;
    .registers 5

    sget-object v0, Ld/e;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "com.google.android.apps.maps"

    :cond_e
    sget-object v0, Ld/e;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/f;

    if-nez v0, :cond_2a

    new-instance v0, Ld/g;

    const-string v1, "%s cannot access to this library. Please contact lbs-team@google.com."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ld/W;)V
    .registers 4

    invoke-static {p0}, Ld/e;->a(Ljava/lang/String;)Ld/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/f;->a(Ld/W;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ld/g;

    const-string v1, "Some features are prohibited from use by this application. Please contact lbs-team@google.com"

    invoke-direct {v0, v1}, Ld/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method

.method public static a(Ljava/lang/String;Ld/w;)V
    .registers 4

    invoke-static {p0}, Ld/e;->a(Ljava/lang/String;)Ld/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/f;->a(Ld/w;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ld/g;

    const-string v1, "Some features are prohibited from use by this application. Please contact lbs-team@google.com"

    invoke-direct {v0, v1}, Ld/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method
