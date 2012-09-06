.class Lcom/estrongs/android/pop/app/diskusage/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/io/File;",
        "Lcom/estrongs/android/util/r;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/u;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/diskusage/u;)V
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/u;-><init>()V

    return-void
.end method

.method private a(J)I
    .registers 6

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    cmp-long v0, p1, v1

    if-gez v0, :cond_e

    const/4 v0, -0x1

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/io/File;",
            "Lcom/estrongs/android/util/r;",
            ">;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/io/File;",
            "Lcom/estrongs/android/util/r;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/r;

    invoke-virtual {v0}, Lcom/estrongs/android/util/r;->b()J

    move-result-wide v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/r;

    invoke-virtual {v0}, Lcom/estrongs/android/util/r;->b()J

    move-result-wide v3

    sub-long v0, v1, v3

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/diskusage/u;->a:Z

    if-eqz v2, :cond_1f

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/diskusage/u;->a(J)I

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/diskusage/u;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    goto :goto_1e
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/diskusage/u;->a:Z

    return-void
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/diskusage/u;->a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method
