.class public Lcom/google/googlenav/ui/wizard/EnterAddressActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->a(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    const-string v1, "ADDRESS_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->setResult(ILandroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->finish()V

    .line 95
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_18

    .line 69
    :goto_7
    return-void

    .line 63
    :sswitch_8
    const v0, 0x7f100047

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->a(Landroid/view/View;)V

    goto :goto_7

    .line 66
    :sswitch_13
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->finish()V

    goto :goto_7

    .line 61
    nop

    :sswitch_data_18
    .sparse-switch
        0x7f10015a -> :sswitch_13
        0x7f10018e -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x117

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_f

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->requestWindowFeature(I)Z

    .line 37
    :cond_f
    const v0, 0x7f04006d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->setContentView(I)V

    .line 39
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 40
    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    :goto_22
    const v0, 0x7f10018e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 48
    const/16 v1, 0x362

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f10015a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    const/16 v1, 0x6b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f100047

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 56
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 57
    return-void

    .line 42
    :cond_59
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 43
    const v0, 0x7f10001e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100047

    if-ne v0, v1, :cond_1c

    .line 75
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1c

    const/16 v0, 0x42

    if-eq p2, v0, :cond_17

    const/16 v0, 0x17

    if-ne p2, v0, :cond_1c

    .line 78
    :cond_17
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;->a(Landroid/view/View;)V

    .line 79
    const/4 v0, 0x1

    .line 82
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
