.class Lax/aD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/b;

.field final synthetic b:Lax/aC;


# direct methods
.method constructor <init>(Lax/aC;Lam/b;)V
    .registers 3

    iput-object p1, p0, Lax/aD;->b:Lax/aC;

    iput-object p2, p0, Lax/aD;->a:Lam/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lax/aD;->b:Lax/aC;

    iget-object v1, p0, Lax/aD;->a:Lam/b;

    invoke-static {v0, v1}, Lax/aC;->a(Lax/aC;Lam/b;)V

    return-void
.end method
