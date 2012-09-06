.class Lcom/estrongs/io/archive/aeszip/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/io/archive/aeszip/b;


# instance fields
.field final synthetic a:Lcom/estrongs/io/archive/aeszip/h;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/aeszip/h;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/io/archive/aeszip/i;->a:Lcom/estrongs/io/archive/aeszip/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/i;->a:Lcom/estrongs/io/archive/aeszip/h;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/aeszip/h;->e()Z

    move-result v0

    return v0
.end method
