.class Lp/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ln/Q;

.field public b:I

.field public c:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lp/g;->a:Ln/Q;

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lp/g;->b:I

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Lp/g;->c:F

    .line 550
    return-void
.end method
