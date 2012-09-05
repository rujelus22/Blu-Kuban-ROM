.class Lcom/google/googlenav/ui/wizard/T;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/eU;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/R;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/R;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/T;->a:Lcom/google/googlenav/ui/wizard/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/T;->a:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/P;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/T;->a:Lcom/google/googlenav/ui/wizard/R;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/R;->a(Lcom/google/googlenav/ui/wizard/R;)V

    goto :goto_2
.end method
