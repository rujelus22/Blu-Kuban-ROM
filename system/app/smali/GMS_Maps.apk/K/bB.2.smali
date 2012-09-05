.class LK/bB;
.super LK/r;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .registers 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, LK/r;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method c()Ljava/util/Collection;
    .registers 2

    invoke-static {}, LK/cw;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method
