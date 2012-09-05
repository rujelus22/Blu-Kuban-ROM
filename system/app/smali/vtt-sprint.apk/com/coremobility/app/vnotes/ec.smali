.class final Lcom/coremobility/app/vnotes/ec;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/eb;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/eb;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ec;->a:Lcom/coremobility/app/vnotes/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ec;->a:Lcom/coremobility/app/vnotes/eb;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/eb;->a(Lcom/coremobility/app/vnotes/eb;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ec;->a:Lcom/coremobility/app/vnotes/eb;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/eb;->a(Lcom/coremobility/app/vnotes/eb;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ec;->a:Lcom/coremobility/app/vnotes/eb;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/eb;->a(Lcom/coremobility/app/vnotes/eb;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ec;->a:Lcom/coremobility/app/vnotes/eb;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/eb;->a(Lcom/coremobility/app/vnotes/eb;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1c
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
