.class final Lcom/twitter/android/ao;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/EditProfileActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/EditProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/ac;)V
    .registers 10

    iget-object v0, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/EditProfileActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1e

    iget-object v0, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v0, v0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0, p5}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/api/ac;)V

    iget-object v0, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v0, v0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/b;

    iget-wide v1, p5, Lcom/twitter/android/api/ac;->a:J

    iget-object v3, p5, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    :cond_1e
    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/ac;)V
    .registers 9

    iget-object v0, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/EditProfileActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/EditProfileActivity;->dismissDialog(I)V

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_62

    invoke-virtual {p1, p5}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/api/ac;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v2, v2, Lcom/twitter/android/EditProfileActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bio"

    iget-object v2, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v2, v2, Lcom/twitter/android/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "web"

    iget-object v2, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v2, v2, Lcom/twitter/android/EditProfileActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "loc"

    iget-object v2, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v2, v2, Lcom/twitter/android/EditProfileActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/EditProfileActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/EditProfileActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-virtual {v0}, Lcom/twitter/android/EditProfileActivity;->finish()V

    :goto_61
    return-void

    :cond_62
    iget-object v0, p0, Lcom/twitter/android/ao;->a:Lcom/twitter/android/EditProfileActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/EditProfileActivity;->showDialog(I)V

    goto :goto_61
.end method
