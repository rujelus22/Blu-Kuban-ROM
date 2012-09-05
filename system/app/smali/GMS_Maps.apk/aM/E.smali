.class LaM/E;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:LaM/D;


# direct methods
.method constructor <init>(LaM/D;)V
    .registers 2

    iput-object p1, p0, LaM/E;->a:LaM/D;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, LaM/E;->a:LaM/D;

    invoke-static {v0}, LaM/D;->a(LaM/D;)V

    return-void
.end method
