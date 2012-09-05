.class Lcom/swype/android/settings/SelectUdbWordsActivity$2;
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
    .line 67
    iput-object p1, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$2;->this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$2;->this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;

    invoke-virtual {v0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->getWordListAdapter()Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/settings/SelectUdbWordsActivity$WordListAdapter;->getChecked()Ljava/util/Set;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 72
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$2;->this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/swype/android/settings/SelectUdbWordsActivity;->showDialog(I)V

    .line 74
    :cond_16
    return-void
.end method
