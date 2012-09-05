.class Lv/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Lt/L;

.field public b:I

.field public c:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lv/g;->a:Lt/L;

    const/4 v0, 0x0

    iput v0, p0, Lv/g;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lv/g;->c:F

    return-void
.end method
