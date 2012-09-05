.class Lax/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lax/bq;


# direct methods
.method constructor <init>(Lax/bq;)V
    .registers 2

    iput-object p1, p0, Lax/bs;->a:Lax/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lax/bs;->a:Lax/bq;

    iget-object v0, v0, Lax/bq;->c:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    return-void
.end method
