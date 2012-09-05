.class Lcom/swype/android/settings/SelectUdbWordsActivity$1;
.super Ljava/lang/Object;
.source "SelectUdbWordsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/settings/SelectUdbWordsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;


# direct methods
.method constructor <init>(Lcom/swype/android/settings/SelectUdbWordsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$1;->this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$1;->this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;

    iget-object v0, v0, Lcom/swype/android/settings/SelectUdbWordsActivity;->selector:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 61
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$1;->this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;

    invoke-virtual {v0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getWordListAdapter()Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$1;->this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;

    iget-object v1, v1, Lcom/swype/android/settings/SelectUdbWordsActivity;->selector:Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->checkAll(Z)V

    .line 62
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$1;->this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;

    invoke-virtual {v0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->updateControls()V

    .line 63
    return-void
.end method
