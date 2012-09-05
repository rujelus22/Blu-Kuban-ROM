.class public Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "SocialHubListsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 11
    .parameter "context"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 22
    const v2, 0x7f03002e

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 23
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, holder:Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;
    check-cast v0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;

    .line 34
    .restart local v0       #holder:Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;
    if-nez v0, :cond_11

    .line 36
    new-instance v0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;

    .end local v0           #holder:Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;
    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;-><init>(Landroid/view/View;)V

    .line 39
    .restart local v0       #holder:Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;
    :cond_11
    invoke-virtual {v0, p3}, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->changeData(Landroid/database/Cursor;)V

    .line 41
    iget-object v1, v0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->viewListsName:Landroid/widget/TextView;

    if-eqz v1, :cond_1f

    .line 43
    iget-object v1, v0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->viewListsName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->strListsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_1f
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
