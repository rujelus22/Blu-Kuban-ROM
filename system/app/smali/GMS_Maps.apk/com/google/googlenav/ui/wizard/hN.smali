.class Lcom/google/googlenav/ui/wizard/hN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hM;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hN;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hN;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    return-void
.end method