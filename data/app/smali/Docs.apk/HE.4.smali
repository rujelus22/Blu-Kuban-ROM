.class public LHE;
.super Ljava/lang/Object;
.source "NavigationFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/fragment/NavigationFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/NavigationFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, LHE;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, LHE;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a(Lcom/google/android/apps/docs/fragment/NavigationFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LHE;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 231
    invoke-static {p3, p4}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    .line 233
    iget-object v2, p0, LHE;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    iget-object v2, v2, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 234
    iget-object v1, p0, LHE;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    iget-object v1, v1, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 235
    sget-object v1, LMk;->n:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1, v0}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, LhX;

    invoke-direct {v1}, LhX;-><init>()V

    .line 238
    iget-object v2, p0, LHE;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    iget-object v2, v2, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LhM;

    iget-object v3, p0, LHE;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    iget-object v3, v3, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LhB;

    invoke-interface {v3}, LhB;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, LhM;->a(Ljava/lang/String;Ljava/lang/String;)LhK;

    move-result-object v0

    invoke-virtual {v1, v0}, LhX;->a(LhK;)LhX;

    .line 240
    iget-object v0, p0, LHE;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LhM;

    invoke-interface {v0}, LhM;->a()LhK;

    move-result-object v0

    invoke-virtual {v1, v0}, LhX;->a(LhK;)LhX;

    .line 241
    iget-object v0, p0, LHE;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:LHG;

    iget-object v2, p0, LHE;->a:Lcom/google/android/apps/docs/fragment/NavigationFragment;

    iget-object v2, v2, Lcom/google/android/apps/docs/fragment/NavigationFragment;->a:Ljc;

    invoke-interface {v2}, Ljc;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, LhX;->a()LhW;

    move-result-object v1

    invoke-static {v2, v1}, Ljl;->a(Ljava/util/List;LhW;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, LHG;->a(Ljava/util/List;)V

    .line 244
    const/4 v0, 0x1

    return v0
.end method
