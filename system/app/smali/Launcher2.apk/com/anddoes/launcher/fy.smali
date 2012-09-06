.class final Lcom/anddoes/launcher/fy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private b:Lcom/anddoes/launcher/e;


# direct methods
.method private constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 4823
    iput-object p1, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anddoes/launcher/Launcher;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4823
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/fy;-><init>(Lcom/anddoes/launcher/Launcher;)V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/fy;)Lcom/anddoes/launcher/Launcher;
    .registers 2
    .parameter

    .prologue
    .line 4823
    iget-object v0, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 4855
    :try_start_0
    iget-object v0, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->dismissDialog(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 4860
    :goto_6
    return-void

    :catch_7
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method final a()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 4830
    new-instance v0, Lcom/anddoes/launcher/e;

    iget-object v1, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/e;-><init>(Lcom/anddoes/launcher/Launcher;)V

    iput-object v0, p0, Lcom/anddoes/launcher/fy;->b:Lcom/anddoes/launcher/e;

    .line 4832
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 4833
    iget-object v1, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    const/4 v2, 0x2

    .line 4832
    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 4834
    iget-object v1, p0, Lcom/anddoes/launcher/fy;->b:Lcom/anddoes/launcher/e;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4835
    iget-object v1, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    const v2, 0x7f06025e

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4836
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 4837
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4838
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4839
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 4840
    return-object v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 4844
    iget-object v0, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anddoes/launcher/Launcher;->b(Lcom/anddoes/launcher/Launcher;Z)V

    .line 4845
    invoke-direct {p0}, Lcom/anddoes/launcher/fy;->b()V

    .line 4846
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 4866
    invoke-direct {p0}, Lcom/anddoes/launcher/fy;->b()V

    .line 4867
    iget-object v0, p0, Lcom/anddoes/launcher/fy;->b:Lcom/anddoes/launcher/e;

    invoke-virtual {v0, p2}, Lcom/anddoes/launcher/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/f;

    .line 4868
    iget v0, v0, Lcom/anddoes/launcher/f;->c:I

    packed-switch v0, :pswitch_data_a8

    .line 4927
    :goto_10
    :pswitch_10
    return-void

    .line 4870
    :pswitch_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4871
    iget-object v1, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4872
    invoke-static {}, Lcom/anddoes/launcher/gg;->a()Lcom/anddoes/launcher/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anddoes/launcher/gg;->b()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 4873
    new-instance v2, Lcom/anddoes/launcher/fz;

    invoke-direct {v2, p0, v1}, Lcom/anddoes/launcher/fz;-><init>(Lcom/anddoes/launcher/fy;Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4888
    new-instance v1, Lcom/anddoes/launcher/ga;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/ga;-><init>(Lcom/anddoes/launcher/fy;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4893
    iget-object v1, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/Launcher;Landroid/app/Dialog;)V

    .line 4894
    iget-object v0, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->g(Lcom/anddoes/launcher/Launcher;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_10

    .line 4899
    :pswitch_4f
    iget-object v0, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->h(Lcom/anddoes/launcher/Launcher;)V

    goto :goto_10

    .line 4903
    :pswitch_55
    iget-object v0, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->i(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/gk;->allocateAppWidgetId()I

    move-result v0

    .line 4904
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4905
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4909
    iget-object v2, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v2}, Lcom/anddoes/launcher/ia;->c(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4911
    const-string v2, "customInfo"

    .line 4910
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4913
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4914
    const-string v3, "custom_widget"

    const-string v4, "search_widget"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4915
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4917
    const-string v2, "customExtras"

    .line 4916
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4919
    iget-object v0, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 4923
    :pswitch_a0
    iget-object v0, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->j(Lcom/anddoes/launcher/Launcher;)V

    goto/16 :goto_10

    .line 4868
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_11
        :pswitch_4f
        :pswitch_55
        :pswitch_10
        :pswitch_a0
    .end packed-switch
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 4849
    iget-object v0, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anddoes/launcher/Launcher;->b(Lcom/anddoes/launcher/Launcher;Z)V

    .line 4850
    invoke-direct {p0}, Lcom/anddoes/launcher/fy;->b()V

    .line 4851
    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 4930
    iget-object v0, p0, Lcom/anddoes/launcher/fy;->b:Lcom/anddoes/launcher/e;

    invoke-virtual {v0}, Lcom/anddoes/launcher/e;->a()V

    .line 4931
    iget-object v0, p0, Lcom/anddoes/launcher/fy;->a:Lcom/anddoes/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anddoes/launcher/Launcher;->b(Lcom/anddoes/launcher/Launcher;Z)V

    .line 4932
    return-void
.end method
