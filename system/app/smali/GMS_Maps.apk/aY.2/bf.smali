.class LaY/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bQ;


# instance fields
.field final synthetic a:LI/h;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:LaY/bd;


# direct methods
.method constructor <init>(LaY/bd;LI/h;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, LaY/bf;->c:LaY/bd;

    iput-object p2, p0, LaY/bf;->a:LI/h;

    iput-object p3, p0, LaY/bf;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, LaY/bf;->a:LI/h;

    iget-object v1, p0, LaY/bf;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LI/h;->b(Ljava/lang/Runnable;)Z

    return-void
.end method
