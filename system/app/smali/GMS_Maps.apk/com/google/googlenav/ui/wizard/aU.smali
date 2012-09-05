.class Lcom/google/googlenav/ui/wizard/aU;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aT;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aU;->a:Lcom/google/googlenav/ui/wizard/aT;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aU;->a:Lcom/google/googlenav/ui/wizard/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aT;->r()Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aU;->a:Lcom/google/googlenav/ui/wizard/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aT;->f()V

    goto :goto_c
.end method
