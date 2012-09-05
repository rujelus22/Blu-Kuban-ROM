.class Lx/n;
.super Ljava/lang/Object;

# interfaces
.implements Lx/aw;


# instance fields
.field final synthetic a:Lx/k;


# direct methods
.method constructor <init>(Lx/k;)V
    .registers 2

    iput-object p1, p0, Lx/n;->a:Lx/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/af;ILt/ae;)V
    .registers 5

    if-nez p2, :cond_7

    iget-object v0, p0, Lx/n;->a:Lx/k;

    invoke-static {v0, p1}, Lx/k;->a(Lx/k;Lt/af;)V

    :cond_7
    return-void
.end method
