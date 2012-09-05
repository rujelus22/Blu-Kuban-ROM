.class public Lcom/google/android/apps/books/widget/TableOfContentsActionItem;
.super Landroid/widget/ImageButton;
.source "TableOfContentsActionItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/CursorAdapter;

.field private mCurrentChapterId:Ljava/lang/String;

.field private final mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

.field private mNavigator:Lcom/google/android/apps/books/util/Navigator;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPosition:Lcom/google/android/apps/books/common/Position;

.field private mReadingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mReadingMode:I

    .line 114
    new-instance v2, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$1;-><init>(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;)V

    iput-object v2, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 63
    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/apps/books/R$styleable;->Theme:[I

    invoke-virtual {p1, v2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 65
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-super {p0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mReadingMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mCurrentChapterId:Ljava/lang/String;

    return-object v0
.end method

.method private isShowing()Z
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private show()V
    .registers 9

    .prologue
    .line 123
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v5}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 124
    :cond_c
    const-string v5, "TableOfContentsActionItem"

    const-string v6, "missing volumemetadata when trying to show chapterlist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_13
    :goto_13
    return-void

    .line 128
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 129
    .local v1, context:Landroid/content/Context;
    new-instance v5, Landroid/widget/ListPopupWindow;

    const/4 v6, 0x0

    const v7, 0x1010300

    invoke-direct {v5, v1, v6, v7}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    .line 130
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v6, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 133
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v2, v5, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    .line 134
    .local v2, cursor:Landroid/database/Cursor;
    new-instance v5, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6, v2}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;-><init>(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mAdapter:Landroid/widget/CursorAdapter;

    .line 136
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v6, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 139
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 141
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 145
    .local v4, popupWidth:I
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 147
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->show()V

    .line 152
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v5, :cond_13

    .line 153
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v6, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPosition:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v6}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/books/model/VolumeMetadata;->getEarliestPossibleChapterIndexForPosition(Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, chapterIndex:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_13

    .line 156
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 157
    .local v3, listView:Landroid/widget/ListView;
    if-eqz v3, :cond_13

    .line 158
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 159
    iget-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v5, v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterId(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mCurrentChapterId:Ljava/lang/String;

    goto :goto_13
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 175
    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 111
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->show()V

    .line 112
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->dismiss()V

    .line 168
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 169
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 182
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v3}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 183
    :cond_d
    const-string v3, "TableOfContentsActionItem"

    const-string v4, "missing volumemetadata when trying to show chapterlist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_14
    return-void

    .line 187
    :cond_15
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 188
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, chapterId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterStartPosition(Ljava/lang/String;)Lcom/google/android/apps/books/common/Position;

    move-result-object v2

    .line 191
    .local v2, readingPos:Lcom/google/android/apps/books/common/Position;
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mNavigator:Lcom/google/android/apps/books/util/Navigator;

    if-eqz v3, :cond_34

    .line 192
    iget-object v3, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mNavigator:Lcom/google/android/apps/books/util/Navigator;

    sget-object v4, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->SELECT_CHAPTER:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    invoke-interface {v3, v2, v5, v4}, Lcom/google/android/apps/books/util/Navigator;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V

    .line 197
    :goto_30
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->dismiss()V

    goto :goto_14

    .line 194
    :cond_34
    const-string v3, "TableOfContentsActionItem"

    const-string v4, "missing NavigationListener"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public setEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 102
    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->dismiss()V

    .line 103
    :cond_8
    return-void
.end method

.method public setNavigator(Lcom/google/android/apps/books/util/Navigator;)V
    .registers 3
    .parameter "navigator"

    .prologue
    .line 72
    const-string v0, "missing navigator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Navigator;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mNavigator:Lcom/google/android/apps/books/util/Navigator;

    .line 73
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 79
    return-void
.end method

.method public setPosition(Lcom/google/android/apps/books/common/Position;)V
    .registers 2
    .parameter "position"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mPosition:Lcom/google/android/apps/books/common/Position;

    .line 97
    return-void
.end method

.method public setReadingMode(I)V
    .registers 2
    .parameter "readingMode"

    .prologue
    .line 92
    iput p1, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mReadingMode:I

    .line 93
    return-void
.end method

.method public setVolumeMetadata(Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 84
    if-eqz p1, :cond_16

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mAdapter:Landroid/widget/CursorAdapter;

    iget-object v1, p1, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 89
    :cond_15
    return-void

    .line 84
    :cond_16
    const/4 v0, 0x0

    goto :goto_5
.end method
