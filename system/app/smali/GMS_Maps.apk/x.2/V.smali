.class Lx/V;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lt/r;

.field public final b:Lx/R;


# direct methods
.method public constructor <init>(Lt/r;Lx/R;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/V;->a:Lt/r;

    iput-object p2, p0, Lx/V;->b:Lx/R;

    return-void
.end method
