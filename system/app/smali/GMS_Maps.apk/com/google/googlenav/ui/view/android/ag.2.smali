.class Lcom/google/googlenav/ui/view/android/aG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aD;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aD;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aG;->a:Lcom/google/googlenav/ui/view/android/aD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aG;->a:Lcom/google/googlenav/ui/view/android/aD;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aD;->a(Lcom/google/googlenav/ui/view/android/aD;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/aI;

    .line 209
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aI;->notifyDataSetChanged()V

    .line 210
    return-void
.end method
