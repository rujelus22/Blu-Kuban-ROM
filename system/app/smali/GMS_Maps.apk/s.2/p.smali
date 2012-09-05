.class Ls/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lu/x;

.field final synthetic b:Ls/o;


# direct methods
.method constructor <init>(Ls/o;Lu/x;)V
    .registers 3

    iput-object p1, p0, Ls/p;->b:Ls/o;

    iput-object p2, p0, Ls/p;->a:Lu/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Ls/p;->b:Ls/o;

    invoke-static {v0}, Ls/o;->b(Ls/o;)Ls/d;

    move-result-object v0

    iget-object v1, p0, Ls/p;->a:Lu/x;

    invoke-interface {v0, v1}, Ls/d;->a(Lu/x;)V

    return-void
.end method
