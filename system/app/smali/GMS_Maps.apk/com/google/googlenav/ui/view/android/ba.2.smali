.class Lcom/google/googlenav/ui/view/android/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aX;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aX;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ba;->b:Lcom/google/googlenav/ui/view/android/aX;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    if-eqz p2, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ba;->a:Landroid/view/View;

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_f
    return-void
.end method
