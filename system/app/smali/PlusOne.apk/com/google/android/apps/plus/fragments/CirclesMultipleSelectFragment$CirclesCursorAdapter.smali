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
    .line 104
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 106
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 125
    move-object v1, p1

    check-cast v1, Lcom/google/android/apps/plus/views/CircleListItemView;

    .line 126
    .local v1, cliv:Lcom/google/android/apps/plus/views/CircleListItemView;
    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, circleId:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/plus/views/CircleListItemView;->setCircle(Ljava/lang/String;ILjava/lang/String;I)V

    .line 131
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->mNewCircleIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->access$000(Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/CircleListItemView;->setChecked(Z)V

    .line 132
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/CircleListItemView;->updateContentDescription()V

    .line 133
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 113
    new-instance v0, Lcom/google/android/apps/plus/views/CircleListItemView;

    invoke-direct {v0, p1}, Lcom/google/android/apps/plus/views/CircleListItemView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, view:Lcom/google/android/apps/plus/views/CircleListItemView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CircleListItemView;->setAvatarStripVisible(Z)V

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CircleListItemView;->setCheckBoxVisible(Z)V

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$CirclesCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CircleListItemView;->setOnItemCheckedChangeListener(Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;)V

    .line 117
    return-object v0
.end method
