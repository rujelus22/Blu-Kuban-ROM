.class public Lbn/f;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lbn/f;->a:F

    iput v0, p0, Lbn/f;->b:F

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    double-to-float v0, p1

    iput v0, p0, Lbn/f;->a:F

    double-to-float v0, p3

    iput v0, p0, Lbn/f;->b:F

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbn/f;->a:F

    iput p2, p0, Lbn/f;->b:F

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-float v0, p1

    iput v0, p0, Lbn/f;->a:F

    int-to-float v0, p2

    iput v0, p0, Lbn/f;->b:F

    return-void
.end method


# virtual methods
.method public a(DD)V
    .registers 6

    double-to-float v0, p1

    iput v0, p0, Lbn/f;->a:F

    double-to-float v0, p3

    iput v0, p0, Lbn/f;->b:F

    return-void
.end method

.method public a(FF)V
    .registers 3

    iput p1, p0, Lbn/f;->a:F

    iput p2, p0, Lbn/f;->b:F

    return-void
.end method

.method public a(Lbn/f;)V
    .registers 3

    iget v0, p1, Lbn/f;->a:F

    iput v0, p0, Lbn/f;->a:F

    iget v0, p1, Lbn/f;->b:F

    iput v0, p0, Lbn/f;->b:F

    return-void
.end method
