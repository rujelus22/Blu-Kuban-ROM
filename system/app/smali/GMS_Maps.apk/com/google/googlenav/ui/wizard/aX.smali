.class Lcom/google/googlenav/ui/wizard/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/am;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/am;)V
    .registers 2
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ax;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ax;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->c(Lcom/google/googlenav/ui/wizard/am;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_3b

    .line 355
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ax;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/ui/wizard/am;)Lcom/google/googlenav/ui/wizard/aB;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ax;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->c(Lcom/google/googlenav/ui/wizard/am;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/h;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/aB;->a(Lcom/google/googlenav/h;)V

    .line 356
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 357
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ax;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->d(Lcom/google/googlenav/ui/wizard/am;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ax;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/am;->b(Lcom/google/googlenav/ui/wizard/am;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 364
    :cond_3b
    :goto_3b
    return-void

    .line 359
    :cond_3c
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    goto :goto_3b
.end method
