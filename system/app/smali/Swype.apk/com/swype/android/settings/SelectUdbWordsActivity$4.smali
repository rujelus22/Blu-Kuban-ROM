.class Lcom/swype/android/settings/SelectUdbWordsActivity$4;
.super Ljava/lang/Object;
.source "SelectUdbWordsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/settings/SelectUdbWordsActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 112
    iput-object p1, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$4;->this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/swype/android/settings/SelectUdbWordsActivity$4;->this$0:Lcom/swype/android/settings/SelectUdbWordsActivity;

    invoke-virtual {v0}, Lcom/swype/android/settings/SelectUdbWordsActivity;->deleteCheckedWords()V

    .line 115
    return-void
.end method
