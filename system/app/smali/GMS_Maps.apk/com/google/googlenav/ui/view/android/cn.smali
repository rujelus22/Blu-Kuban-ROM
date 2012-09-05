.class Lcom/google/googlenav/ui/view/android/cn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/cm;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/cm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/cn;->a:Lcom/google/googlenav/ui/view/android/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/cn;->a:Lcom/google/googlenav/ui/view/android/cm;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/cm;->a(Lcom/google/googlenav/ui/view/android/cm;)V

    return-void
.end method
