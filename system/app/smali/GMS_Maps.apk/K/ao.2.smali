.class LK/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LK/an;


# direct methods
.method constructor <init>(LK/an;)V
    .registers 2

    iput-object p1, p0, LK/ao;->a:LK/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, LK/ao;->a:LK/an;

    invoke-virtual {v0}, LK/an;->j()V

    return-void
.end method
