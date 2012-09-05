.class final LK/cp;
.super LK/bm;

# interfaces
.implements LK/co;


# instance fields
.field final a:LK/co;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;LK/co;)V
    .registers 4

    invoke-direct {p0, p1, p2}, LK/bm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, LK/cp;->a:LK/co;

    return-void
.end method


# virtual methods
.method public a()LK/co;
    .registers 2

    iget-object v0, p0, LK/cp;->a:LK/co;

    return-object v0
.end method
