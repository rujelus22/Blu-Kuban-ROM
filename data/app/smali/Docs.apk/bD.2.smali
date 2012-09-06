.class LbD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LbC;


# direct methods
.method constructor <init>(LbC;)V
    .registers 2

    iput-object p1, p0, LbD;->a:LbC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, LbD;->a:LbC;

    invoke-virtual {v0}, LbC;->a()Z

    return-void
.end method
