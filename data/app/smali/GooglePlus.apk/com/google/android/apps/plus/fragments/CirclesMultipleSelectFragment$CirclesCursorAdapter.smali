.class Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "CirclesMultipleSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CirclesCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    .line 106
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 107
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 126
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/CircleListItemView;

    .line 127
    .local v0, cliv:Lcom/google/android/apps/plus/views/CircleListItemView;
    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, circleId:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 129
    .local v2, type:I
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    #calls: Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->access$000(Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/google/android/apps/plus/util/AccountsUtil;->isRestrictedCircleForAccount(Lcom/google/android/apps/plus/content/EsAccount;I)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/CircleListItemView;->setCircle(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 134
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->access$100(Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/CircleListItemView;->setChecked(Z)V

    .line 135
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/CircleListItemView;->updateContentDescription()V

    .line 136
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 114
    new-instance v0, Lcom/google/android/apps/plus/views/CircleListItemView;

    invoke-direct {v0, p1}, Lcom/google/android/apps/plus/views/CircleListItemView;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, view:Lcom/google/android/apps/plus/views/CircleListItemView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CircleListItemView;->setAvatarStripVisible(Z)V

    .line 116
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CircleListItemView;->setCheckBoxVisible(Z)V

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CircleListItemView;->setOnItemCheckedChangeListener(Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;)V

    .line 118
    return-object v0
.end method
