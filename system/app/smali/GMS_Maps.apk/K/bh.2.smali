.class final LK/bh;
.super LK/cj;


# instance fields
.field private final transient a:LK/bi;


# direct methods
.method constructor <init>([Ljava/lang/Object;LK/bi;)V
    .registers 5

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, LK/cj;-><init>([Ljava/lang/Object;II)V

    iput-object p2, p0, LK/bh;->a:LK/bi;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, LK/bh;->a:LK/bi;

    invoke-virtual {v0, p1}, LK/bi;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
