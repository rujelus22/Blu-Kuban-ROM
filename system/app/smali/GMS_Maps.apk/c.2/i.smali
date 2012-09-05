.class Lc/i;
.super Lc/v;


# instance fields
.field private final a:Lc/a;

.field private final b:Ljava/io/File;


# direct methods
.method constructor <init>(ILc/a;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0, p1}, Lc/v;-><init>(I)V

    iput-object p2, p0, Lc/i;->a:Lc/a;

    iput-object p3, p0, Lc/i;->b:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Lc/i;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lc/i;->b:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/Map$Entry;)V
    .registers 5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/F;

    iget-object v1, p0, Lc/i;->a:Lc/a;

    new-instance v2, Lc/j;

    invoke-direct {v2, p0, v0}, Lc/j;-><init>(Lc/i;Le/F;)V

    invoke-virtual {v1, v2}, Lc/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
