.class Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$3;
.super Ljava/lang/Object;
.source "MessageDeleteViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 146
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAllitemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_32

    .line 148
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAllitemCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 149
    invoke-static {}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->access$100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 150
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mCheckedItemIdList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->access$200(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 157
    :goto_23
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAdapter:Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->access$300(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListAdapter;->notifyDataSetChanged()V

    .line 158
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->updateAllCheckState()V

    .line 159
    return-void

    .line 154
    :cond_32
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->mAllitemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->setAllItemChecked()V

    goto :goto_23
.end method
