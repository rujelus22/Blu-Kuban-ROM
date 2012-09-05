.class Lbc/w;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbc/w;->a:I

    iput p2, p0, Lbc/w;->b:I

    return-void
.end method
