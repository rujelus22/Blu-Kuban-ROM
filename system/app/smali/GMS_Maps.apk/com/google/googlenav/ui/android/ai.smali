.class Lcom/google/googlenav/ui/android/ai;
.super Lcom/google/googlenav/ui/android/ab;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

.field private final b:Ljava/util/ArrayList;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Ljava/util/ArrayList;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/android/ai;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ab;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/android/ai;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/google/googlenav/ui/android/ai;->c:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ai;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ai;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ai;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ai;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bS;

    invoke-static {v1, v0, v3}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/bS;Z)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/android/ai;->c:I

    iget v2, p0, Lcom/google/googlenav/ui/android/ai;->c:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method
