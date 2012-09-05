.class final LK/af;
.super LK/ah;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:LK/P;


# direct methods
.method constructor <init>(LK/P;)V
    .registers 2

    iput-object p1, p0, LK/af;->a:LK/P;

    invoke-direct {p0, p1}, LK/ah;-><init>(LK/P;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .registers 2

    invoke-virtual {p0}, LK/af;->e()LK/aR;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/af;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
