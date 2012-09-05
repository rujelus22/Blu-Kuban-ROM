.class Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;
.super Ljava/lang/Object;
.source "EmailAccountEditScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    const v2, 0x7f09037f

    invoke-virtual {v1, v2}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    const v2, 0x7f090380

    invoke-virtual {v1, v2}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    const v2, 0x7f090321

    invoke-virtual {v1, v2}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2$2;

    invoke-direct {v2, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2$2;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2$1;

    invoke-direct {v2, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2$1;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 73
    return-void
.end method
