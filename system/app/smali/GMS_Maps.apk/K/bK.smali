.class final LK/bK;
.super LK/k;


# instance fields
.field final synthetic a:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .registers 3

    iput-object p2, p0, LK/bK;->a:[Ljava/lang/Object;

    invoke-direct {p0, p1}, LK/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, LK/bK;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
