.class Ls/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ls/o;


# direct methods
.method constructor <init>(Ls/o;I)V
    .registers 3

    iput-object p1, p0, Ls/q;->b:Ls/o;

    iput p2, p0, Ls/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Ls/q;->b:Ls/o;

    invoke-static {v0}, Ls/o;->b(Ls/o;)Ls/d;

    move-result-object v0

    iget v1, p0, Ls/q;->a:I

    invoke-interface {v0, v1}, Ls/d;->a(I)V

    return-void
.end method
