.class Lcom/google/googlenav/ui/view/android/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/CheckableContainer;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/CheckableContainer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/at;->a:Lcom/google/googlenav/ui/view/android/CheckableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/at;->a:Lcom/google/googlenav/ui/view/android/CheckableContainer;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->b(Lcom/google/googlenav/ui/view/android/CheckableContainer;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    return-void
.end method
