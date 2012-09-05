.class LaJ/F;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:LaJ/D;


# direct methods
.method constructor <init>(LaJ/D;)V
    .registers 2

    iput-object p1, p0, LaJ/F;->a:LaJ/D;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, LaJ/F;->a:LaJ/D;

    invoke-static {v0}, LaJ/D;->a(LaJ/D;)V

    return-void
.end method
