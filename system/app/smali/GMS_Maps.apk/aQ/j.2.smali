.class LaQ/j;
.super Ljava/lang/Object;

# interfaces
.implements Law/f;


# instance fields
.field final synthetic a:LaQ/g;


# direct methods
.method constructor <init>(LaQ/g;)V
    .registers 2

    iput-object p1, p0, LaQ/j;->a:LaQ/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Law/c;)V
    .registers 3

    sget-object v0, Law/b;->b:Law/c;

    if-eq p1, v0, :cond_11

    sget-object v0, Law/b;->d:Law/c;

    if-eq p1, v0, :cond_11

    iget-object v0, p0, LaQ/j;->a:LaQ/g;

    invoke-static {v0}, LaQ/g;->c(LaQ/g;)Lcom/google/googlenav/ui/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/p;->o()V

    :cond_11
    return-void
.end method
