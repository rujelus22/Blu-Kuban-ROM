.class Lcom/google/googlenav/ui/wizard/fz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fu;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fu;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fz;->a:Lcom/google/googlenav/ui/wizard/fu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fz;->a:Lcom/google/googlenav/ui/wizard/fu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fu;->a()V

    return-void
.end method
