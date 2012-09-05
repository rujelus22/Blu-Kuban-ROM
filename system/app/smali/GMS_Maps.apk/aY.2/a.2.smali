.class public LaY/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lap/c;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lap/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LaY/a;->b:Ljava/util/Map;

    iput-object p1, p0, LaY/a;->a:Lap/c;

    return-void
.end method

.method static synthetic a(LaY/a;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, LaY/a;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(LaY/a;Lcom/google/googlenav/E;LaY/f;Lcom/google/googlenav/android/ac;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, LaY/a;->a(Lcom/google/googlenav/E;LaY/f;Lcom/google/googlenav/android/ac;)V

    return-void
.end method

.method static synthetic a(Lak/m;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, LaY/a;->b(Lak/m;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/E;LaY/f;Lcom/google/googlenav/android/ac;)V
    .registers 6

    if-eqz p3, :cond_c

    const/4 v0, 0x0

    new-instance v1, LaY/e;

    invoke-direct {v1, p0, p2, p1}, LaY/e;-><init>(LaY/a;LaY/f;Lcom/google/googlenav/E;)V

    invoke-virtual {p3, v1, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :goto_b
    return-void

    :cond_c
    invoke-interface {p2, p1}, LaY/f;->a(Lcom/google/googlenav/E;)V

    goto :goto_b
.end method

.method private static b(Lak/m;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BACKGROUND_FEATURE_SET_MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "SAVED_BGFS_"

    invoke-interface {p0, v0}, Lak/m;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/google/googlenav/E;Lcom/google/googlenav/android/ac;LaY/g;)V
    .registers 12

    new-instance v0, LaY/b;

    iget-object v2, p0, LaY/a;->a:Lap/c;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, LaY/b;-><init>(LaY/a;Lap/c;ILcom/google/googlenav/E;LaY/g;Lcom/google/googlenav/android/ac;)V

    invoke-virtual {v0}, LaY/b;->g()V

    return-void
.end method

.method public a(ILcom/google/googlenav/android/ac;LaY/f;)V
    .registers 10

    iget-object v0, p0, LaY/a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/E;

    if-eqz v0, :cond_12

    invoke-direct {p0, v0, p3, p2}, LaY/a;->a(Lcom/google/googlenav/E;LaY/f;Lcom/google/googlenav/android/ac;)V

    :goto_11
    return-void

    :cond_12
    new-instance v0, LaY/d;

    iget-object v2, p0, LaY/a;->a:Lap/c;

    move-object v1, p0

    move v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LaY/d;-><init>(LaY/a;Lap/c;ILaY/f;Lcom/google/googlenav/android/ac;)V

    invoke-virtual {v0}, LaY/d;->g()V

    goto :goto_11
.end method
