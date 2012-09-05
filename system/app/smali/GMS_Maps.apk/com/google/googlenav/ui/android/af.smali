.class Lcom/google/googlenav/ui/android/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bR;

.field final synthetic b:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/bR;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/android/af;->b:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/af;->a:Lcom/google/googlenav/bR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/af;->b:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;)Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/af;->a:Lcom/google/googlenav/bR;

    invoke-virtual {v1}, Lcom/google/googlenav/bR;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    return-void
.end method
