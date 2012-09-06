.class Lcom/estrongs/android/pop/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ChangePermActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ChangePermActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14

    const v10, 0x7f0901d3

    const/16 v9, 0x2d

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v3

    move v1, v3

    move v0, v3

    :goto_14
    const/16 v7, 0x9

    if-lt v4, v7, :cond_7e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->b(Lcom/estrongs/android/pop/view/ChangePermActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->b(Lcom/estrongs/android/pop/view/ChangePermActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;I)Z

    :cond_2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_12b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->b(Lcom/estrongs/android/pop/view/ChangePermActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    :goto_45
    if-eqz v0, :cond_4f

    iget-object v0, v0, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    :cond_4f
    if-eqz v3, :cond_137

    sget-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    if-eqz v0, :cond_137

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-virtual {v3, v10}, Lcom/estrongs/android/pop/view/ChangePermActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_7d
    return-void

    :cond_7e
    rem-int/lit8 v7, v4, 0x3

    if-nez v7, :cond_a4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->a(Lcom/estrongs/android/pop/view/ChangePermActivity;)[Landroid/widget/CheckBox;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9e

    const/16 v0, 0x72

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    move v1, v2

    :goto_97
    add-int/lit8 v4, v4, 0x1

    move v11, v0

    move v0, v1

    move v1, v11

    goto/16 :goto_14

    :cond_9e
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    move v1, v3

    goto :goto_97

    :cond_a4
    rem-int/lit8 v7, v4, 0x3

    if-ne v7, v2, :cond_ca

    shl-int/lit8 v0, v0, 0x1

    iget-object v7, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-static {v7}, Lcom/estrongs/android/pop/view/ChangePermActivity;->a(Lcom/estrongs/android/pop/view/ChangePermActivity;)[Landroid/widget/CheckBox;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_c3

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x77

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_97

    :cond_c3
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_97

    :cond_ca
    rem-int/lit8 v7, v4, 0x3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_102

    shl-int/lit8 v0, v0, 0x1

    iget-object v7, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-static {v7}, Lcom/estrongs/android/pop/view/ChangePermActivity;->a(Lcom/estrongs/android/pop/view/ChangePermActivity;)[Landroid/widget/CheckBox;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_106

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x78

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_e6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v1, v0

    const/16 v7, 0x8

    if-eq v4, v7, :cond_102

    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_102
    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_97

    :cond_106
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e6

    :cond_10a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->b(Lcom/estrongs/android/pop/view/ChangePermActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/d/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-virtual {v1, v10}, Lcom/estrongs/android/pop/view/ChangePermActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7d

    :cond_12b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->b(Lcom/estrongs/android/pop/view/ChangePermActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->d(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    goto/16 :goto_45

    :cond_137
    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-virtual {v1, v10}, Lcom/estrongs/android/pop/view/ChangePermActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7d

    :cond_148
    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    const v3, 0x7f0901d2

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/view/ChangePermActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "perm"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/view/ChangePermActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ChangePermActivity;->finish()V

    goto/16 :goto_7d
.end method
