.class Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;
.super Landroid/widget/CursorAdapter;
.source "HomeMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/HomeMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalSearchAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 228
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 229
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 271
    const v5, 0x1020006

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 272
    .local v1, icon:Landroid/widget/ImageView;
    const v5, 0x1020014

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 273
    .local v2, text1:Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 276
    .local v3, text2:Landroid/widget/TextView;
    const/4 v5, 0x1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, accountName:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, volumeId:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverThumbnailUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 280
    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 286
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_c
    const/4 v0, 0x1

    .line 287
    .local v0, invalidPosition:Z
    :goto_d
    if-eqz p1, :cond_19

    if-nez v0, :cond_19

    .line 288
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    :goto_16
    return-object v1

    .line 286
    .end local v0           #invalidPosition:Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_d

    .line 290
    .restart local v0       #invalidPosition:Z
    :cond_19
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 233
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 234
    .local v0, count:I
    if-lez v0, :cond_9

    add-int/lit8 v1, v0, 0x1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getItemViewType(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 244
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_e

    const/4 v0, 0x1

    .line 245
    .local v0, footer:Z
    :goto_7
    if-eqz v0, :cond_10

    invoke-super {p0}, Landroid/widget/CursorAdapter;->getViewTypeCount()I

    move-result v1

    :goto_d
    return v1

    .line 244
    .end local v0           #footer:Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    .line 245
    .restart local v0       #footer:Z
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_d
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    if-ne p1, v3, :cond_1d

    const/4 v0, 0x1

    .line 251
    .local v0, footer:Z
    :goto_8
    if-eqz v0, :cond_1f

    .line 252
    if-nez p2, :cond_1b

    .line 253
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 254
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03001a

    invoke-virtual {v1, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_1b
    move-object v2, p2

    .line 259
    :goto_1c
    return-object v2

    .end local v0           #footer:Z
    :cond_1d
    move v0, v2

    .line 250
    goto :goto_8

    .line 259
    .restart local v0       #footer:Z
    :cond_1f
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1c
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 239
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 265
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 266
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
