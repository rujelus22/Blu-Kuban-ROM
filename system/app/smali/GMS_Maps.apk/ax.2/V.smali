.class Lax/V;
.super Ljava/lang/Object;

# interfaces
.implements Law/f;


# instance fields
.field final synthetic a:Lax/S;


# direct methods
.method constructor <init>(Lax/S;)V
    .registers 2

    iput-object p1, p0, Lax/V;->a:Lax/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Law/c;)V
    .registers 3

    sget-object v0, Law/b;->f:Law/c;

    if-eq p1, v0, :cond_11

    sget-object v0, Law/b;->e:Law/c;

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Lax/V;->a:Lax/S;

    invoke-static {v0}, Lax/S;->a(Lax/S;)LaY/K;

    move-result-object v0

    invoke-virtual {v0}, LaY/K;->Z()V

    :cond_11
    return-void
.end method
