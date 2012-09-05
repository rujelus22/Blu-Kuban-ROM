.class Lcom/google/googlenav/ui/view/android/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aX;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aX;Landroid/widget/CheckBox;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bb;->b:Lcom/google/googlenav/ui/view/android/aX;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bb;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bb;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
