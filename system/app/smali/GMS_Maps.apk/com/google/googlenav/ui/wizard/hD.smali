.class Lcom/google/googlenav/ui/wizard/hD;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hD;->a:Lcom/google/googlenav/ui/wizard/hA;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hD;->a:Lcom/google/googlenav/ui/wizard/hA;

    const/16 v1, 0x1f6

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/hA;->a(IILjava/lang/Object;)Z

    return-void
.end method
