.class public Lr/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lr/g;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lr/f;
    .registers 3

    new-instance v0, Lr/f;

    iget-object v1, p0, Lr/g;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lr/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public a(Lt/ai;)V
    .registers 3

    iget-object v0, p0, Lr/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lt/d;)V
    .registers 3

    invoke-virtual {p1}, Lt/d;->b()Lt/ai;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr/g;->a(Lt/ai;)V

    return-void
.end method
