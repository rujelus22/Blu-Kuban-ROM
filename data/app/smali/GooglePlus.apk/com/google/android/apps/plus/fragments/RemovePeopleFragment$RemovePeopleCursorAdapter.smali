.class Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "RemovePeopleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemovePeopleCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 69
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/PeopleListItemView;

    .line 85
    .local v0, item:Lcom/google/android/apps/plus/views/PeopleListItemView;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setCircleNameResolver(Lcom/google/android/apps/plus/fragments/CircleNameResolver;)V

    .line 86
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, personId:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPersonId(Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setGaiaId(Ljava/lang/String;)V

    .line 89
    const/4 v2, 0x3

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setContactName(Ljava/lang/String;)V

    .line 90
    const/4 v2, 0x4

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setPackedCircleIds(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setCheckBoxVisible(Z)V

    .line 92
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setOnItemCheckedChangeListener(Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;)V

    .line 93
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$RemovePeopleCursorAdapter;->this$0:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->mSelectedPersonIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->access$000(Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/PeopleListItemView;->setChecked(Z)V

    .line 94
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PeopleListItemView;->updateContentDescription()V

    .line 95
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    .line 76
    invoke-static {p1}, Lcom/google/android/apps/plus/views/PeopleListItemView;->createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/PeopleListItemView;

    move-result-object v0

    return-object v0
.end method
