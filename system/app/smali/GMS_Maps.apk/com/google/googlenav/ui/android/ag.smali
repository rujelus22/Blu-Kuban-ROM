.class Lcom/google/googlenav/ui/android/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bN;

.field final synthetic b:LaY/i;

.field final synthetic c:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/bN;LaY/i;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/android/ag;->c:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/ag;->a:Lcom/google/googlenav/bN;

    iput-object p3, p0, Lcom/google/googlenav/ui/android/ag;->b:LaY/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/16 v0, 0x54

    const-string v1, "ts"

    const-string v2, "n"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ag;->a:Lcom/google/googlenav/bN;

    invoke-virtual {v0}, Lcom/google/googlenav/bN;->h()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_37

    new-instance v0, Lcom/google/googlenav/T;

    const-string v1, "s"

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ag;->a:Lcom/google/googlenav/bN;

    invoke-virtual {v2}, Lcom/google/googlenav/bN;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/ag;->a:Lcom/google/googlenav/bN;

    invoke-virtual {v3}, Lcom/google/googlenav/bN;->h()LaJ/B;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/ag;->a:Lcom/google/googlenav/bN;

    invoke-virtual {v4}, Lcom/google/googlenav/bN;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/T;-><init>(Ljava/lang/String;Ljava/lang/String;LaJ/B;Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/google/googlenav/T;->a(B)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ag;->b:LaY/i;

    const/16 v2, 0x3fa

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, LaY/i;->a(IILjava/lang/Object;)Z

    :cond_37
    return-void
.end method
