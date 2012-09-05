.class Lcom/google/googlenav/ui/wizard/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/au;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/au;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->c(Lcom/google/googlenav/ui/wizard/aj;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_3b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/au;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->a(Lcom/google/googlenav/ui/wizard/aj;)Lcom/google/googlenav/ui/wizard/ay;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/au;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->c(Lcom/google/googlenav/ui/wizard/aj;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/ay;->a(Lcom/google/googlenav/h;)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/au;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->d(Lcom/google/googlenav/ui/wizard/aj;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/au;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/aj;->b(Lcom/google/googlenav/ui/wizard/aj;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    goto :goto_3b
.end method
