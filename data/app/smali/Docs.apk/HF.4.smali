.class public LHF;
.super Ljava/lang/Object;
.source "NavigationFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

.field final synthetic a:[LHA;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/NavigationFragment;[LHA;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, LHF;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    iput-object p2, p0, LHF;->a:[LHA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, LHF;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->b(Lcom/google/android/apps/docs/fragment/NavigationFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LHF;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 255
    invoke-static {p3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    .line 256
    iget-object v2, p0, LHF;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    iget-object v2, v2, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 257
    iget-object v1, p0, LHF;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    iget-object v1, v1, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 258
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 259
    iget-object v2, p0, LHF;->a:[LHA;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    .line 261
    iget-object v1, p0, LHF;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    iget-object v1, v1, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LHG;

    invoke-virtual {v0, v1}, LHA;->a(LHG;)V

    .line 262
    const/4 v0, 0x1

    return v0
.end method
