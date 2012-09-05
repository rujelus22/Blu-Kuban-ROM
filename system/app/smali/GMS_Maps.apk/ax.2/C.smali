.class Lax/C;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lax/B;


# direct methods
.method constructor <init>(Lax/B;)V
    .registers 2

    iput-object p1, p0, Lax/C;->a:Lax/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lax/C;->a:Lax/B;

    iget-object v0, v0, Lax/B;->a:Lax/x;

    invoke-static {v0}, Lax/x;->b(Lax/x;)LaY/K;

    move-result-object v0

    invoke-virtual {v0}, LaY/K;->J()V

    return-void
.end method
