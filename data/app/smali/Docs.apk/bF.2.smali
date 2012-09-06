.class LbF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LbE;


# direct methods
.method constructor <init>(LbE;)V
    .registers 2

    iput-object p1, p0, LbF;->a:LbE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, LbF;->a:LbE;

    iget-object v0, v0, LbE;->a:LbC;

    invoke-virtual {v0}, LbC;->a()V

    return-void
.end method
