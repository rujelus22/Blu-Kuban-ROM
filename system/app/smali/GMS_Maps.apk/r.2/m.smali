.class Lr/m;
.super Ljava/lang/Object;

# interfaces
.implements Lx/R;


# instance fields
.field final synthetic a:Lr/l;


# direct methods
.method constructor <init>(Lr/l;)V
    .registers 2

    iput-object p1, p0, Lr/m;->a:Lr/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/r;ILt/q;)V
    .registers 5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    if-nez p2, :cond_3

    iget-object v0, p0, Lr/m;->a:Lr/l;

    invoke-static {v0, p3}, Lr/l;->a(Lr/l;Lt/q;)V

    goto :goto_3
.end method
