.class final Lcom/twitter/android/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/android/service/c;


# instance fields
.field final synthetic a:Lcom/twitter/android/AuthorizeAppActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/AuthorizeAppActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/AuthorizeAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/twitter/android/network/j;Ljava/lang/String;J)V
    .registers 9

    iget-object v0, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/AuthorizeAppActivity;

    invoke-static {v0}, Lcom/twitter/android/AuthorizeAppActivity;->a(Lcom/twitter/android/AuthorizeAppActivity;)V

    sparse-switch p1, :sswitch_data_4a

    iget-object v0, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/AuthorizeAppActivity;

    const v1, 0x7f0b01c0

    invoke-virtual {v0, v1}, Lcom/twitter/android/AuthorizeAppActivity;->a(I)V

    :goto_10
    return-void

    :sswitch_11
    if-eqz p2, :cond_3a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "tk"

    iget-object v2, p2, Lcom/twitter/android/network/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ts"

    iget-object v2, p2, Lcom/twitter/android/network/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sn"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ui"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/AuthorizeAppActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/AuthorizeAppActivity;->setResult(ILandroid/content/Intent;)V

    :cond_3a
    iget-object v0, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/AuthorizeAppActivity;

    invoke-virtual {v0}, Lcom/twitter/android/AuthorizeAppActivity;->finish()V

    goto :goto_10

    :sswitch_40
    iget-object v0, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/AuthorizeAppActivity;

    const v1, 0x7f0b01d0

    invoke-virtual {v0, v1}, Lcom/twitter/android/AuthorizeAppActivity;->a(I)V

    goto :goto_10

    nop

    :sswitch_data_4a
    .sparse-switch
        0xc8 -> :sswitch_11
        0x191 -> :sswitch_40
        0x193 -> :sswitch_40
    .end sparse-switch
.end method
