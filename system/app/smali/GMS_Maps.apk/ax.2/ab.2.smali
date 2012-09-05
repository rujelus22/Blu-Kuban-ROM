.class Lax/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lax/aa;


# direct methods
.method constructor <init>(Lax/aa;)V
    .registers 2

    iput-object p1, p0, Lax/ab;->a:Lax/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lax/ab;->a:Lax/aa;

    iget-object v0, v0, Lax/aa;->c:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lax/ab;->a:Lax/aa;

    iget-object v1, p0, Lax/ab;->a:Lax/aa;

    iget-object v1, v1, Lax/aa;->c:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lax/ab;->a:Lax/aa;

    iget-object v2, v2, Lax/aa;->b:Lcom/google/googlenav/android/ac;

    iget-object v3, p0, Lax/ab;->a:Lax/aa;

    invoke-virtual {v0, v1, v2, v3}, Lax/aa;->a(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;)Lax/bu;

    move-result-object v0

    invoke-virtual {v0}, Lax/bu;->a()V

    return-void
.end method
