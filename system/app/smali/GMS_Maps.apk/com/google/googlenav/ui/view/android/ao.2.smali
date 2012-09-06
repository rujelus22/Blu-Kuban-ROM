.class Lcom/google/googlenav/ui/view/android/aO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aL;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aO;->b:Lcom/google/googlenav/ui/view/android/aL;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aO;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 155
    if-eqz p2, :cond_f

    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aO;->a:Landroid/view/View;

    const v1, 0x7f100031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    :cond_f
    return-void
.end method
