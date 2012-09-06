.class Lp/z;
.super Lp/B;
.source "SourceFile"


# instance fields
.field public final a:Lp/d;


# direct methods
.method public constructor <init>(ILp/B;Lp/d;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p3, Lp/d;->c:Lq/e;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lp/B;-><init>(ILq/e;Lp/B;I)V

    .line 79
    iput-object p3, p0, Lp/z;->a:Lp/d;

    .line 80
    return-void
.end method
