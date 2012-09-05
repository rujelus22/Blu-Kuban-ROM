.class Lr/p;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lr/o;


# direct methods
.method constructor <init>(Lr/o;)V
    .registers 2

    iput-object p1, p0, Lr/p;->a:Lr/o;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lr/p;->a:Lr/o;

    invoke-static {v0}, Lr/o;->a(Lr/o;)V

    return-void
.end method
