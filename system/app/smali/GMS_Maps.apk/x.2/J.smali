.class Lx/J;
.super Ljava/lang/Object;


# instance fields
.field final a:Lx/I;

.field final b:Lx/H;

.field final c:I


# direct methods
.method constructor <init>(Lx/I;Lx/H;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/J;->a:Lx/I;

    iput-object p2, p0, Lx/J;->b:Lx/H;

    iput p3, p0, Lx/J;->c:I

    return-void
.end method
