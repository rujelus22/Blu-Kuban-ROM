.class final Lax/bf;
.super Lap/b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lax/bj;


# direct methods
.method constructor <init>(Lap/c;Ljava/lang/String;ILax/bj;)V
    .registers 5

    iput-object p2, p0, Lax/bf;->a:Ljava/lang/String;

    iput p3, p0, Lax/bf;->e:I

    iput-object p4, p0, Lax/bf;->f:Lax/bj;

    invoke-direct {p0, p1}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lax/bf;->a:Ljava/lang/String;

    iget v1, p0, Lax/bf;->e:I

    invoke-static {v0, v1}, Lax/be;->a(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lax/bf;->f:Lax/bj;

    invoke-interface {v1, v0}, Lax/bj;->a(I)V

    return-void
.end method
