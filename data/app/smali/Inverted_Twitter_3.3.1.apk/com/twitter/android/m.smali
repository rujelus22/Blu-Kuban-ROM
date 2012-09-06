.class final Lcom/twitter/android/m;
.super Lcom/twitter/android/service/f;


# instance fields
.field final synthetic a:Lcom/twitter/android/AuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/AuthenticatorActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/m;->a:Lcom/twitter/android/AuthenticatorActivity;

    invoke-direct {p0}, Lcom/twitter/android/service/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 5

    const/4 v2, 0x1

    const-string v0, "resp_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/m;->a:Lcom/twitter/android/AuthenticatorActivity;

    invoke-virtual {v1, v2}, Lcom/twitter/android/AuthenticatorActivity;->removeDialog(I)V

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2f

    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/network/j;

    iget-object v1, p0, Lcom/twitter/android/m;->a:Lcom/twitter/android/AuthenticatorActivity;

    iget-object v1, v1, Lcom/twitter/android/AuthenticatorActivity;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/twitter/android/m;->a:Lcom/twitter/android/AuthenticatorActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/AuthenticatorActivity;->a(Lcom/twitter/android/network/j;)V

    :goto_28
    return-void

    :cond_29
    iget-object v1, p0, Lcom/twitter/android/m;->a:Lcom/twitter/android/AuthenticatorActivity;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/AuthenticatorActivity;->a(Lcom/twitter/android/network/j;Z)V

    goto :goto_28

    :cond_2f
    iget-object v0, p0, Lcom/twitter/android/m;->a:Lcom/twitter/android/AuthenticatorActivity;

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Lcom/twitter/android/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/m;->a:Lcom/twitter/android/AuthenticatorActivity;

    const v2, 0x7f0b00d3

    invoke-virtual {v1, v2}, Lcom/twitter/android/AuthenticatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28
.end method
