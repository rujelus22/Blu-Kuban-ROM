.class Leu/chainfire/supersu/PromptActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/PromptActivity$1;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/PromptActivity$1;)V
    .registers 2

    iput-object p1, p0, Leu/chainfire/supersu/PromptActivity$1$1;->a:Leu/chainfire/supersu/PromptActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$1$1;->a:Leu/chainfire/supersu/PromptActivity$1;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$1;->a(Leu/chainfire/supersu/PromptActivity$1;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->b(Leu/chainfire/supersu/PromptActivity;)Z

    move-result v0

    if-nez v0, :cond_9d

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$1$1;->a:Leu/chainfire/supersu/PromptActivity$1;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$1;->a(Leu/chainfire/supersu/PromptActivity$1;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->c(Leu/chainfire/supersu/PromptActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/PromptActivity;->a(Leu/chainfire/supersu/PromptActivity;I)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$1$1;->a:Leu/chainfire/supersu/PromptActivity$1;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$1;->a(Leu/chainfire/supersu/PromptActivity$1;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->d(Leu/chainfire/supersu/PromptActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "eu.chainfire.supersu.extra.saved_counter"

    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity$1$1;->a:Leu/chainfire/supersu/PromptActivity$1;

    invoke-static {v2}, Leu/chainfire/supersu/PromptActivity$1;->a(Leu/chainfire/supersu/PromptActivity$1;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/supersu/PromptActivity;->c(Leu/chainfire/supersu/PromptActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$1$1;->a:Leu/chainfire/supersu/PromptActivity$1;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$1;->a(Leu/chainfire/supersu/PromptActivity$1;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->e(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity$1$1;->a:Leu/chainfire/supersu/PromptActivity$1;

    invoke-static {v1}, Leu/chainfire/supersu/PromptActivity$1;->a(Leu/chainfire/supersu/PromptActivity$1;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/supersu/PromptActivity;->c(Leu/chainfire/supersu/PromptActivity;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    const/16 v2, 0x9

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$1$1;->a:Leu/chainfire/supersu/PromptActivity$1;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$1;->a(Leu/chainfire/supersu/PromptActivity$1;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->c(Leu/chainfire/supersu/PromptActivity;)I

    move-result v0

    if-nez v0, :cond_9d

    :try_start_63
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$1$1;->a:Leu/chainfire/supersu/PromptActivity$1;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$1;->a(Leu/chainfire/supersu/PromptActivity$1;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->f(Leu/chainfire/supersu/PromptActivity;)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$1$1;->a:Leu/chainfire/supersu/PromptActivity$1;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$1;->a(Leu/chainfire/supersu/PromptActivity$1;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$1$1;->a:Leu/chainfire/supersu/PromptActivity$1;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$1;->a(Leu/chainfire/supersu/PromptActivity$1;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->g(Leu/chainfire/supersu/PromptActivity;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->a:Z

    if-nez v0, :cond_9e

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$1$1;->a:Leu/chainfire/supersu/PromptActivity$1;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$1;->a(Leu/chainfire/supersu/PromptActivity$1;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->h(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_9e

    const/4 v0, 0x0

    :goto_91
    invoke-static {v1, v0}, Leu/chainfire/supersu/PromptActivity;->a(Leu/chainfire/supersu/PromptActivity;Z)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$1$1;->a:Leu/chainfire/supersu/PromptActivity$1;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$1;->a(Leu/chainfire/supersu/PromptActivity$1;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->i(Leu/chainfire/supersu/PromptActivity;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_9d} :catch_a0

    :cond_9d
    :goto_9d
    return-void

    :cond_9e
    const/4 v0, 0x1

    goto :goto_91

    :catch_a0
    move-exception v0

    goto :goto_9d
.end method
