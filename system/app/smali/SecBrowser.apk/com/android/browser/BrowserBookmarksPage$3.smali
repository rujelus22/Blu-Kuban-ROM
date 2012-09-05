.class Lcom/android/browser/BrowserBookmarksPage$3;
.super Ljava/lang/Object;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Lcom/android/browser/BookmarkDragHandler$BookmarkDragController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBookmarksPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserBookmarksPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserBookmarksPage;)V
    .registers 2
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionItemClicked(Landroid/view/View;Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;)V
    .registers 8
    .parameter "v"
    .parameter "state"

    .prologue
    .line 945
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0d0045

    if-ne v1, v2, :cond_11

    .line 946
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    iget-object v1, v1, Lcom/android/browser/BrowserBookmarksPage;->mGrid:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, p2}, Lcom/android/browser/view/BookmarkExpandableView;->showContextMenuForState(Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;)V

    .line 952
    :goto_10
    return-void

    .line 948
    :cond_11
    iget-object v0, p2, Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;->extraState:Ljava/lang/Object;

    check-cast v0, Lcom/android/browser/BrowserBookmarksPage$ExtraDragState;

    .line 949
    .local v0, extraState:Lcom/android/browser/BrowserBookmarksPage$ExtraDragState;
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget v3, v0, Lcom/android/browser/BrowserBookmarksPage$ExtraDragState;->groupPosition:I

    iget v4, v0, Lcom/android/browser/BrowserBookmarksPage$ExtraDragState;->childPosition:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/browser/BrowserBookmarksPage;->handleContextItem(III)Z

    goto :goto_10
.end method

.method public getActionModeView(Landroid/view/ActionMode;Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;)Landroid/view/ViewGroup;
    .registers 12
    .parameter "mode"
    .parameter "state"

    .prologue
    .line 926
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v7}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 927
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040051

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 929
    .local v6, view:Landroid/widget/LinearLayout;
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 930
    iget-object v2, p2, Lcom/android/browser/BookmarkDragHandler$BookmarkDragState;->extraState:Ljava/lang/Object;

    check-cast v2, Lcom/android/browser/BrowserBookmarksPage$ExtraDragState;

    .line 931
    .local v2, extraState:Lcom/android/browser/BrowserBookmarksPage$ExtraDragState;
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    iget v8, v2, Lcom/android/browser/BrowserBookmarksPage$ExtraDragState;->groupPosition:I

    #calls: Lcom/android/browser/BrowserBookmarksPage;->getChildAdapter(I)Lcom/android/browser/BrowserBookmarksAdapter;
    invoke-static {v7, v8}, Lcom/android/browser/BrowserBookmarksPage;->access$100(Lcom/android/browser/BrowserBookmarksPage;I)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v0

    .line 932
    .local v0, adapter:Lcom/android/browser/BrowserBookmarksAdapter;
    iget v7, v2, Lcom/android/browser/BrowserBookmarksPage$ExtraDragState;->childPosition:I

    invoke-virtual {v0, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v1

    .line 933
    .local v1, c:Landroid/database/Cursor;
    const/4 v7, 0x6

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_50

    const/4 v4, 0x1

    .line 934
    .local v4, isFolder:Z
    :goto_32
    if-eqz v4, :cond_4f

    .line 935
    const v7, 0x7f0d0043

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 936
    const v7, 0x7f0d0044

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 938
    .local v5, iv:Landroid/widget/ImageView;
    const v7, 0x7f02008c

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 940
    .end local v5           #iv:Landroid/widget/ImageView;
    :cond_4f
    return-object v6

    .line 933
    .end local v4           #isFolder:Z
    :cond_50
    const/4 v4, 0x0

    goto :goto_32
.end method
