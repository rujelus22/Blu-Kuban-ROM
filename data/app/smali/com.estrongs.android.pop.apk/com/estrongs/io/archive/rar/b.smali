.class Lcom/estrongs/io/archive/rar/b;
.super Ljava/lang/Object;

# interfaces
.implements Lde/innosystec/unrar/b;


# instance fields
.field final synthetic a:Lcom/estrongs/io/archive/rar/a;

.field private final synthetic b:Lcom/estrongs/io/a/b;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/rar/a;Lcom/estrongs/io/a/b;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/io/archive/rar/b;->a:Lcom/estrongs/io/archive/rar/a;

    iput-object p2, p0, Lcom/estrongs/io/archive/rar/b;->b:Lcom/estrongs/io/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/b;->b:Lcom/estrongs/io/a/b;

    invoke-interface {v0}, Lcom/estrongs/io/a/b;->b()Z

    move-result v0

    return v0
.end method
