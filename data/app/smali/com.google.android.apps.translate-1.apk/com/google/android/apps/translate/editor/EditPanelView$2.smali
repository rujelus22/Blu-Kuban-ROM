.class Lcom/google/android/apps/translate/editor/EditPanelView$2;
.super Ljava/lang/Object;
.source "EditPanelView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/EditPanelView;->init(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/EditPanelView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/EditPanelView;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/EditPanelView$2;->this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/Entry;

    .line 218
    .local v0, entry:Lcom/google/android/apps/translate/history/Entry;
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/EditPanelView$2;->this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/android/apps/translate/editor/EditPanelView;->onSuggestSelected(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/translate/editor/EditPanelView;->access$100(Lcom/google/android/apps/translate/editor/EditPanelView;Ljava/lang/String;)V

    .line 219
    return-void
.end method
