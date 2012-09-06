.class Lp/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln/Q;

.field public final b:I

.field public final c:D

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Ln/Q;IDZI)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Lp/f;->a:Ln/Q;

    .line 523
    iput p2, p0, Lp/f;->b:I

    .line 524
    iput-wide p3, p0, Lp/f;->c:D

    .line 525
    iput-boolean p5, p0, Lp/f;->d:Z

    .line 526
    iput p6, p0, Lp/f;->e:I

    .line 527
    return-void
.end method
