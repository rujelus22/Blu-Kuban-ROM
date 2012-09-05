.class Lcom/swype/android/connect/settings/RemoveLanguagesActivity$1;
.super Ljava/lang/Object;
.source "RemoveLanguagesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/connect/settings/RemoveLanguagesActivity;


# direct methods
.method constructor <init>(Lcom/swype/android/connect/settings/RemoveLanguagesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity$1;->this$0:Lcom/swype/android/connect/settings/RemoveLanguagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 41
    iget-object v0, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity$1;->this$0:Lcom/swype/android/connect/settings/RemoveLanguagesActivity;

    invoke-virtual {v0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->getSelectedLanguagesCount()I

    move-result v0

    if-le v0, v1, :cond_14

    .line 42
    iget-object v0, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity$1;->this$0:Lcom/swype/android/connect/settings/RemoveLanguagesActivity;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->removeDialog(I)V

    .line 43
    iget-object v0, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity$1;->this$0:Lcom/swype/android/connect/settings/RemoveLanguagesActivity;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->showDialog(I)V

    .line 47
    :goto_13
    return-void

    .line 45
    :cond_14
    iget-object v0, p0, Lcom/swype/android/connect/settings/RemoveLanguagesActivity$1;->this$0:Lcom/swype/android/connect/settings/RemoveLanguagesActivity;

    #calls: Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->removeLanguagesAndFinish()V
    invoke-static {v0}, Lcom/swype/android/connect/settings/RemoveLanguagesActivity;->access$000(Lcom/swype/android/connect/settings/RemoveLanguagesActivity;)V

    goto :goto_13
.end method
