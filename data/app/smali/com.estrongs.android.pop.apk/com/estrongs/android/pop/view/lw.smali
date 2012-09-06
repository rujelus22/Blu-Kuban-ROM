.class Lcom/estrongs/android/pop/view/lw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/lv;

.field private final synthetic b:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/lv;Landroid/widget/Spinner;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lw;->a:Lcom/estrongs/android/pop/view/lv;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/lw;->b:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lw;->a:Lcom/estrongs/android/pop/view/lv;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lw;->b:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/estrongs/android/pop/view/lv;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
