.class Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "CircleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/CircleListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CirclesCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/CircleListFragment;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CircleListFragment$CirclesCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/CircleListFragment;

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 110
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    .line 127
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/CircleListItemView;

    .line 128
    .local v0, cliv:Lcom/google/android/apps/plus/views/CircleListItemView;
    const/4 v2, 0x3

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 129
    .local v1, type:I
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/google/android/apps/plus/views/CircleListItemView;->setCircle(Ljava/lang/String;ILjava/lang/String;I)V

    .line 133
    const/16 v2, 0xa

    if-ne v1, v2, :cond_26

    .line 134
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/CircleListItemView;->setAvatarStripVisible(Z)V

    .line 139
    :goto_22
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/CircleListItemView;->updateContentDescription()V

    .line 140
    return-void

    .line 136
    :cond_26
    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/CircleListItemView;->setAvatarStripVisible(Z)V

    .line 137
    const/4 v2, 0x5

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/CircleListItemView;->setPackedMemberIds(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 117
    new-instance v0, Lcom/google/android/apps/plus/views/CircleListItemView;

    invoke-direct {v0, p1}, Lcom/google/android/apps/plus/views/CircleListItemView;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, view:Lcom/google/android/apps/plus/views/CircleListItemView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CircleListItemView;->setAvatarStripVisible(Z)V

    .line 119
    return-object v0
.end method
