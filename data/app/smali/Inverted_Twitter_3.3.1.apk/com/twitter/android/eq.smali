.class final Lcom/twitter/android/eq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SignUpActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/eq;->a:Lcom/twitter/android/SignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_20

    iget-object v1, p0, Lcom/twitter/android/eq;->a:Lcom/twitter/android/SignUpActivity;

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    const v2, 0x7f070041

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/android/SignUpActivity;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/eq;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->d()V

    :cond_20
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
