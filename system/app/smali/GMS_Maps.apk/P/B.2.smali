.class Lp/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final b:Lq/e;

.field public c:I

.field public final d:I

.field public e:I

.field public f:Lp/B;

.field public g:Z


# direct methods
.method public constructor <init>(ILq/e;Lp/B;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lp/B;->c:I

    .line 63
    iput-object p2, p0, Lp/B;->b:Lq/e;

    .line 64
    iput-object p3, p0, Lp/B;->f:Lp/B;

    .line 65
    iput p4, p0, Lp/B;->d:I

    .line 66
    iget v0, p0, Lp/B;->c:I

    iget v1, p0, Lp/B;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lp/B;->e:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lp/B;->g:Z

    .line 68
    return-void
.end method
