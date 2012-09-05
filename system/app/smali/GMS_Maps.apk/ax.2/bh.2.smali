.class final Lax/bh;
.super Lap/b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lax/bk;


# direct methods
.method constructor <init>(Lap/c;Ljava/lang/String;ILax/bk;)V
    .registers 5

    iput-object p2, p0, Lax/bh;->a:Ljava/lang/String;

    iput p3, p0, Lax/bh;->e:I

    iput-object p4, p0, Lax/bh;->f:Lax/bk;

    invoke-direct {p0, p1}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lax/bh;->a:Ljava/lang/String;

    iget v1, p0, Lax/bh;->e:I

    invoke-static {v0, v1}, Lax/be;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lax/bh;->f:Lax/bk;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lax/bh;->f:Lax/bk;

    invoke-interface {v0}, Lax/bk;->a()V

    :cond_10
    return-void
.end method
