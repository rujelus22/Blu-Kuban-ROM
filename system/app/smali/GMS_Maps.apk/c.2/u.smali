.class Lc/u;
.super Ljava/util/LinkedHashMap;


# instance fields
.field final a:I

.field final b:Lc/s;


# direct methods
.method constructor <init>(ILc/s;)V
    .registers 5

    const/high16 v0, 0x3f40

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput p1, p0, Lc/u;->a:I

    iput-object p2, p0, Lc/u;->b:Lc/s;

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4

    invoke-virtual {p0}, Lc/u;->size()I

    move-result v0

    iget v1, p0, Lc/u;->a:I

    if-le v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_10

    iget-object v1, p0, Lc/u;->b:Lc/s;

    invoke-virtual {v1}, Lc/s;->a()V

    :cond_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method
