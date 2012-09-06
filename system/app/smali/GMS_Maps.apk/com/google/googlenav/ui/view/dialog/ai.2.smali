.class Lcom/google/googlenav/ui/view/dialog/aI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aF;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/aF;)V
    .registers 2
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aI;->a:Lcom/google/googlenav/ui/view/dialog/aF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 625
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2a

    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aF;->n()Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/friend/history/b;

    invoke-direct {v1, p2, p3, p4}, Lcom/google/googlenav/friend/history/b;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/b;->a(Lcom/google/googlenav/friend/history/b;)I

    move-result v0

    if-gez v0, :cond_2a

    .line 627
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aI;->a:Lcom/google/googlenav/ui/view/dialog/aF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aF;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x27b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 632
    :goto_29
    return-void

    .line 630
    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aI;->a:Lcom/google/googlenav/ui/view/dialog/aF;

    new-instance v1, Lcom/google/googlenav/friend/history/b;

    invoke-direct {v1, p2, p3, p4}, Lcom/google/googlenav/friend/history/b;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/aF;->a(Lcom/google/googlenav/friend/history/b;)V

    goto :goto_29
.end method
