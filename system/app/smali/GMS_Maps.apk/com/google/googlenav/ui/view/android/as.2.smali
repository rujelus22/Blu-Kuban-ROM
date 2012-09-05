.class Lcom/google/googlenav/ui/view/android/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/CheckableContainer;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/CheckableContainer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/as;->a:Lcom/google/googlenav/ui/view/android/CheckableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/as;->a:Lcom/google/googlenav/ui/view/android/CheckableContainer;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a(Lcom/google/googlenav/ui/view/android/CheckableContainer;)Lcom/google/googlenav/ui/view/android/au;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/as;->a:Lcom/google/googlenav/ui/view/android/CheckableContainer;

    invoke-interface {v0, v1, p2}, Lcom/google/googlenav/ui/view/android/au;->a(Lcom/google/googlenav/ui/view/android/CheckableContainer;Z)V

    :cond_d
    return-void
.end method
