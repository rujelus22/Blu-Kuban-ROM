.class final LK/bL;
.super LK/k;


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;I)V
    .registers 4

    iput-object p2, p0, LK/bL;->a:[Ljava/lang/Object;

    iput p3, p0, LK/bL;->b:I

    invoke-direct {p0, p1}, LK/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, LK/bL;->a:[Ljava/lang/Object;

    iget v1, p0, LK/bL;->b:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
