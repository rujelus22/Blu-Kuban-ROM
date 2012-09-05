.class Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;
.super Landroid/widget/CursorAdapter;
.source "TableOfContentsActionItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/TableOfContentsActionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChaptersAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;->this$0:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 204
    return-void
.end method

.method private isChapterEnabled(Landroid/database/Cursor;)Z
    .registers 5
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 231
    iget-object v2, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;->this$0:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    #getter for: Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mReadingMode:I
    invoke-static {v2}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->access$100(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;)I

    move-result v2

    packed-switch v2, :pswitch_data_1e

    .line 239
    :cond_b
    :goto_b
    return v0

    .line 233
    :pswitch_c
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_b

    .line 236
    :pswitch_15
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_b

    .line 231
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.method private isCurrentChapter(Landroid/database/Cursor;)Z
    .registers 4
    .parameter "cursor"

    .prologue
    .line 245
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;->this$0:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    #getter for: Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->mCurrentChapterId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->access$200(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 216
    invoke-direct {p0, p3}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;->isChapterEnabled(Landroid/database/Cursor;)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 218
    invoke-direct {p0, p3}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;->isCurrentChapter(Landroid/database/Cursor;)Z

    move-result v0

    .line 220
    .local v0, isCurrentChapter:Z
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 221
    .local v2, title:Landroid/widget/TextView;
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    if-eqz v0, :cond_3c

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_20
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 224
    const v3, 0x1020015

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 225
    .local v1, startPageTitle:Landroid/widget/TextView;
    const/4 v3, 0x5

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    if-eqz v0, :cond_3f

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_38
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 228
    return-void

    .line 222
    .end local v1           #startPageTitle:Landroid/widget/TextView;
    :cond_3c
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_20

    .line 226
    .restart local v1       #startPageTitle:Landroid/widget/TextView;
    :cond_3f
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_38
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 209
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
