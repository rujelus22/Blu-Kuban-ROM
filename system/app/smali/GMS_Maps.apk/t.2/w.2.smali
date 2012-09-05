.class final Lt/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/o;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lt/u;

    invoke-virtual {p0, p1}, Lt/w;->a(Lt/u;)Lt/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lt/u;)Lt/m;
    .registers 3

    invoke-virtual {p1}, Lt/u;->b()Lt/r;

    move-result-object v0

    invoke-virtual {v0}, Lt/r;->a()Lt/m;

    move-result-object v0

    return-object v0
.end method
