.class Lcom/google/android/apps/plus/views/AudienceView$1;
.super Ljava/lang/Object;
.source "AudienceView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/AudienceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/AudienceView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/AudienceView;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/apps/plus/views/AudienceView$1;->this$0:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 121
    iget-object v3, p0, Lcom/google/android/apps/plus/views/AudienceView$1;->this$0:Lcom/google/android/apps/plus/views/AudienceView;

    #getter for: Lcom/google/android/apps/plus/views/AudienceView;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/google/android/apps/plus/views/AudienceView;->access$000(Lcom/google/android/apps/plus/views/AudienceView;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    .line 122
    .local v0, adapter:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;
    if-eqz v0, :cond_29

    .line 123
    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->onItemClick(I)V

    .line 125
    iget-object v3, p0, Lcom/google/android/apps/plus/views/AudienceView$1;->this$0:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 127
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    .line 128
    .local v2, isFullscreen:Z
    if-eqz v2, :cond_29

    .line 129
    invoke-virtual {v1, v5, v5}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 132
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #isFullscreen:Z
    :cond_29
    return-void
.end method
