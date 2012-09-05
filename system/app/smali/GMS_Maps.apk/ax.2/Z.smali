.class Lax/Z;
.super Ljava/lang/Object;

# interfaces
.implements Law/f;


# instance fields
.field final synthetic a:Lax/Y;


# direct methods
.method constructor <init>(Lax/Y;)V
    .registers 2

    iput-object p1, p0, Lax/Z;->a:Lax/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Law/c;)V
    .registers 3

    sget-object v0, Law/b;->f:Law/c;

    if-eq p1, v0, :cond_13

    sget-object v0, Law/b;->e:Law/c;

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lax/Z;->a:Lax/Y;

    iget-object v0, v0, Lax/Y;->a:Lax/S;

    invoke-static {v0}, Lax/S;->a(Lax/S;)LaY/K;

    move-result-object v0

    invoke-virtual {v0}, LaY/K;->Z()V

    :cond_13
    return-void
.end method
