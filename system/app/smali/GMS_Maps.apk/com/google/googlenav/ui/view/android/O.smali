.class Lcom/google/googlenav/ui/view/android/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/j;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/j;)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/o;->a:Lcom/google/googlenav/ui/view/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter

    .prologue
    .line 292
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/o;->a:Lcom/google/googlenav/ui/view/android/j;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/j;->d(Lcom/google/googlenav/ui/view/android/j;)V

    .line 300
    return-void
.end method
