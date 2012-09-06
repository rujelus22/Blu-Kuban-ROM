.class Lcom/estrongs/android/pop/view/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/t;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/t;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->k(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2c

    iget-object v1, p0, Lcom/estrongs/android/pop/view/t;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->g(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/t;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->k(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "443"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-object v1, p0, Lcom/estrongs/android/pop/view/t;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->g(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "443"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/t;->a:Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->k(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "80"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b
.end method
