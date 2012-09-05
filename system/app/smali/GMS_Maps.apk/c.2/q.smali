.class public Lc/q;
.super Ljava/util/LinkedHashMap;


# instance fields
.field private final a:I

.field private final b:Lc/s;


# direct methods
.method public constructor <init>(ILc/s;)V
    .registers 5

    const/high16 v0, 0x3f40

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput p1, p0, Lc/q;->a:I

    iput-object p2, p0, Lc/q;->b:Lc/s;

    return-void
.end method

.method static synthetic a(Lc/q;)I
    .registers 2

    iget v0, p0, Lc/q;->a:I

    return v0
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4

    invoke-virtual {p0}, Lc/q;->size()I

    move-result v0

    iget v1, p0, Lc/q;->a:I

    if-le v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_10

    iget-object v1, p0, Lc/q;->b:Lc/s;

    invoke-virtual {v1}, Lc/s;->a()V

    :cond_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method
