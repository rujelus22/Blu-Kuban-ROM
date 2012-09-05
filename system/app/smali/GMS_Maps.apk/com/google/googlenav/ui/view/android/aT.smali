.class Lcom/google/googlenav/ui/view/android/aT;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aP;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aP;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aT;->a:Lcom/google/googlenav/ui/view/android/aP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aT;->a:Lcom/google/googlenav/ui/view/android/aP;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aP;->a(Lcom/google/googlenav/ui/view/android/aP;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aV;->notifyDataSetChanged()V

    return-void
.end method
