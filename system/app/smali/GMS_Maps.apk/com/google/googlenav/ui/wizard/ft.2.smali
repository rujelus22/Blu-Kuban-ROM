.class Lcom/google/googlenav/ui/wizard/ft;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ft;->a:Lcom/google/googlenav/ui/wizard/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ft;->a:Lcom/google/googlenav/ui/wizard/fj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fj;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ft;->a:Lcom/google/googlenav/ui/wizard/fj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fj;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->onContentChanged()V

    :cond_d
    return-void
.end method
