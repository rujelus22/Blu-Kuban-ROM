.class Lcom/android/calendar/ImportVCalListActivity$1;
.super Ljava/lang/Object;
.source "ImportVCalListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ImportVCalListActivity;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ImportVCalListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/ImportVCalListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 148
    iget-object v4, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/calendar/ImportVCalListActivity;->access$100(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5c

    move v0, v2

    .line 150
    .local v0, checked:Z
    :goto_f
    if-eqz v0, :cond_5e

    .line 151
    iget-object v3, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mLeftSoftkey:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/calendar/ImportVCalListActivity;->access$200(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    iget-object v3, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->EventListAdapter:Lcom/android/calendar/ImportVCalListActivity$EventAdapter;
    invoke-static {v3}, Lcom/android/calendar/ImportVCalListActivity;->access$400(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->getCount()I

    move-result v3

    #setter for: Lcom/android/calendar/ImportVCalListActivity;->countChecked:I
    invoke-static {v2, v3}, Lcom/android/calendar/ImportVCalListActivity;->access$302(Lcom/android/calendar/ImportVCalListActivity;I)I

    .line 158
    :goto_29
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->EventListAdapter:Lcom/android/calendar/ImportVCalListActivity$EventAdapter;
    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$400(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_6d

    .line 159
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$100(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->headerCount:I
    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$500(Lcom/android/calendar/ImportVCalListActivity;)I

    move-result v1

    .local v1, index:I
    :goto_44
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->EventListAdapter:Lcom/android/calendar/ImportVCalListActivity$EventAdapter;
    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$400(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->getCount()I

    move-result v2

    if-gt v1, v2, :cond_6d

    .line 162
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$600(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .end local v0           #checked:Z
    .end local v1           #index:I
    :cond_5c
    move v0, v3

    .line 148
    goto :goto_f

    .line 154
    .restart local v0       #checked:Z
    :cond_5e
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #getter for: Lcom/android/calendar/ImportVCalListActivity;->mLeftSoftkey:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$200(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    #setter for: Lcom/android/calendar/ImportVCalListActivity;->countChecked:I
    invoke-static {v2, v3}, Lcom/android/calendar/ImportVCalListActivity;->access$302(Lcom/android/calendar/ImportVCalListActivity;I)I

    goto :goto_29

    .line 164
    :cond_6d
    return-void
.end method
