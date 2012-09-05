.class LH/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LH/a;


# direct methods
.method constructor <init>(LH/a;)V
    .registers 2

    iput-object p1, p0, LH/b;->a:LH/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, LH/b;->a:LH/a;

    invoke-static {v0}, LH/a;->a(LH/a;)V

    return-void
.end method
