.class Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;
.super Landroid/database/DataSetObserver;
.source "ContactsAutoCompletePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actioneditor/PopupManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 5

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    #getter for: Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mAdapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;
    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$000(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->getCount()I

    move-result v0

    .line 65
    .local v0, count:I
    if-lez v0, :cond_41

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    #getter for: Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompleting:Z
    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$100(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->isVisible()Z

    move-result v1

    if-nez v1, :cond_41

    .line 67
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    #getter for: Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mListener:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;
    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$200(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 68
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    #getter for: Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mListener:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;
    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$200(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;->popupWillShow(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)V

    .line 70
    :cond_2f
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    #getter for: Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;
    invoke-static {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$400(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    #getter for: Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->mCompletingPoint:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->access$300(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->showPopupWithoutSetup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V

    .line 77
    :goto_40
    return-void

    .line 72
    :cond_41
    if-nez v0, :cond_51

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 73
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->dismiss()V

    goto :goto_40

    .line 75
    :cond_51
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->refreshLayout()V

    goto :goto_40
.end method
