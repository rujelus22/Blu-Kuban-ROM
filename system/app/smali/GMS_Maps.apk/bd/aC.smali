.class Lbd/aC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbd/aB;


# direct methods
.method constructor <init>(Lbd/aB;)V
    .registers 2

    iput-object p1, p0, Lbd/aC;->a:Lbd/aB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lbd/aC;->a:Lbd/aB;

    iget-object v0, v0, Lbd/aB;->a:Lbd/az;

    invoke-virtual {v0}, Lbd/az;->m()Z

    return-void
.end method
