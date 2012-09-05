.class LK/f;
.super LK/a;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/util/Map;LK/a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LK/a;-><init>(Ljava/util/Map;LK/a;LK/b;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;LK/a;LK/b;)V
    .registers 4

    invoke-direct {p0, p1, p2}, LK/f;-><init>(Ljava/util/Map;LK/a;)V

    return-void
.end method


# virtual methods
.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, LK/a;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    invoke-super {p0}, LK/a;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
