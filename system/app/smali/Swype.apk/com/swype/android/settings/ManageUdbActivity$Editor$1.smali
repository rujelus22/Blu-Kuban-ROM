.class Lcom/swype/android/settings/ManageUdbActivity$Editor$1;
.super Ljava/lang/Object;
.source "ManageUdbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/settings/ManageUdbActivity$Editor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/ManageUdbActivity$Editor;


# direct methods
.method constructor <init>(Lcom/swype/android/settings/ManageUdbActivity$Editor;)V
    .registers 2
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor$1;->this$0:Lcom/swype/android/settings/ManageUdbActivity$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 509
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor$1;->this$0:Lcom/swype/android/settings/ManageUdbActivity$Editor;

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Lcom/swype/android/settings/ManageUdbActivity$Editor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 510
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "word"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor$1;->this$0:Lcom/swype/android/settings/ManageUdbActivity$Editor;

    iget-object v1, v1, Lcom/swype/android/settings/ManageUdbActivity$Editor;->original:Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 513
    const-string v1, "original"

    iget-object v2, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor$1;->this$0:Lcom/swype/android/settings/ManageUdbActivity$Editor;

    iget-object v2, v2, Lcom/swype/android/settings/ManageUdbActivity$Editor;->original:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    :cond_2d
    iget-object v1, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor$1;->this$0:Lcom/swype/android/settings/ManageUdbActivity$Editor;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/swype/android/settings/ManageUdbActivity$Editor;->setResult(ILandroid/content/Intent;)V

    .line 516
    iget-object v0, p0, Lcom/swype/android/settings/ManageUdbActivity$Editor$1;->this$0:Lcom/swype/android/settings/ManageUdbActivity$Editor;

    invoke-virtual {v0}, Lcom/swype/android/settings/ManageUdbActivity$Editor;->finish()V

    .line 517
    return-void
.end method
