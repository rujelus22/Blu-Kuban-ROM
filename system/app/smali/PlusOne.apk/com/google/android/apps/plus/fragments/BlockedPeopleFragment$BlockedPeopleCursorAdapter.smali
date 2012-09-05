.class Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "BlockedPeopleFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockedPeopleCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;

    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 75
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 90
    move-object v1, p1

    check-cast v1, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 91
    .local v1, item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    invoke-virtual {v1, v5}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setAvatarVisible(Z)V

    .line 92
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPersonId(Ljava/lang/String;)V

    .line 93
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContactId(J)V

    .line 94
    const/4 v3, 0x3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContactName(Ljava/lang/String;)V

    .line 96
    const/4 v3, 0x5

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v8, :cond_41

    move v3, v4

    :goto_27
    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPlusPage(Z)V

    .line 98
    const/4 v3, 0x4

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_43

    move v0, v4

    .line 99
    .local v0, blocked:Z
    :goto_32
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setUnblockButtonVisible(Z)V

    .line 100
    if-nez v0, :cond_45

    :goto_37
    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setAddButtonVisible(Z)V

    .line 101
    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setOnActionButtonClickListener(Lcom/google/android/apps/plus/views/PeopleListItemView$OnActionButtonClickListener;)V

    .line 102
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateContentDescription()V

    .line 103
    return-void

    .end local v0           #blocked:Z
    :cond_41
    move v3, v5

    .line 96
    goto :goto_27

    :cond_43
    move v0, v5

    .line 98
    goto :goto_32

    .restart local v0       #blocked:Z
    :cond_45
    move v4, v5

    .line 100
    goto :goto_37
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    .line 82
    invoke-static {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/PeopleListItemView;

    move-result-object v0

    return-object v0
.end method

.method public onAddPersonActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getPersonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getContactName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->onAddToCircles(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onRemovePersonActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 118
    return-void
.end method

.method public onUnblockPersonActionButtonClick(Lcom/google/android/apps/plus/views/PeopleListItemView;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment$BlockedPeopleCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->getPersonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->isPlusPage()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/BlockedPeopleFragment;->onUnblockPerson(Ljava/lang/String;Z)V

    .line 126
    return-void
.end method
