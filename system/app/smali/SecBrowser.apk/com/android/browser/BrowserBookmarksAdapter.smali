.class public Lcom/android/browser/BrowserBookmarksAdapter;
.super Landroid/widget/CursorAdapter;
.source "BrowserBookmarksAdapter.java"


# instance fields
.field isOpbookmarkIDs:[J

.field mAppWidgetId:I

.field mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

.field mBookmarkWidgetId:[J

.field private mCheckBoxChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckBoxClickListener:Landroid/view/View$OnClickListener;

.field mChecked:Z

.field mContext:Landroid/content/Context;

.field mCountItems:I

.field mCurrentView:I

.field mCursor:Landroid/database/Cursor;

.field mInflater:Landroid/view/LayoutInflater;

.field mIsFolder:I

.field mIsSelectAll:Z

.field mSelectAll:Z

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserBookmarksPage;Landroid/content/Context;I)V
    .registers 9
    .parameter "bookmarkPage"
    .parameter "context"
    .parameter "defaultView"

    .prologue
    const/4 v4, 0x0

    .line 80
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 378
    new-instance v1, Lcom/android/browser/BrowserBookmarksAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/browser/BrowserBookmarksAdapter$1;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;)V

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCheckBoxChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 406
    new-instance v1, Lcom/android/browser/BrowserBookmarksAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/browser/BrowserBookmarksAdapter$2;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;)V

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCheckBoxClickListener:Landroid/view/View$OnClickListener;

    .line 81
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    .line 82
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 83
    invoke-virtual {p0, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->selectView(I)V

    .line 84
    iput-object p2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContext:Landroid/content/Context;

    .line 85
    const-string v1, "BrowserBookmarksAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 86
    check-cast v0, Landroid/app/Activity;

    .line 87
    .local v0, act:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mAppWidgetId:I

    .line 88
    const-string v1, "BrowserBookmarksAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAppWidgetId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->loadCheckedOPBookmarks()V

    .line 91
    return-void
.end method


# virtual methods
.method bindGridView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0027

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 121
    .local v6, padding:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    invoke-virtual {p1, v6, v11, v6, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 123
    const v11, 0x7f0d0021

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 124
    .local v7, thumb:Landroid/widget/ImageView;
    const v11, 0x7f0d001f

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 125
    .local v10, tv:Landroid/widget/TextView;
    const/4 v11, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mIsFolder:I

    .line 128
    const v11, 0x7f0d00ea

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 130
    .local v1, check:Landroid/widget/CheckBox;
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 131
    .local v4, id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 134
    const-string v11, "BrowserBookmarksAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mSelectAll : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mSelectAll:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-boolean v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mIsSelectAll:Z

    if-eqz v11, :cond_75

    .line 138
    iget-object v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    iget-boolean v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mSelectAll:Z

    invoke-virtual {v11, v4, v5, v12}, Lcom/android/browser/BrowserBookmarksPage;->setCheckedBox(JZ)V

    .line 141
    :cond_75
    iget-object v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v11, v4, v5}, Lcom/android/browser/BrowserBookmarksPage;->isCheckedBox(J)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mChecked:Z

    .line 142
    iget-boolean v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mChecked:Z

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/android/browser/BookmarkMoveToFolder;

    if-eqz v11, :cond_11c

    .line 147
    iget v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mIsFolder:I

    if-eqz v11, :cond_117

    .line 149
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 150
    const-string v11, "BrowserBookmarksAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This is a Folder // id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_a9
    :goto_a9
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/android/browser/BookmarkWidgetPage;

    if-eqz v11, :cond_ea

    .line 180
    iget-object v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v11}, Lcom/android/browser/BrowserBookmarksPage;->checkIfInvalidate()Z

    move-result v11

    if-eqz v11, :cond_ea

    .line 182
    iget-object v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v11, v4, v5}, Lcom/android/browser/BrowserBookmarksPage;->isCheckedBox(J)Z

    move-result v11

    if-nez v11, :cond_c9

    .line 184
    iget-object v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v5, v12}, Lcom/android/browser/BrowserBookmarksPage;->setCheckedBox(JZ)V

    .line 185
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 189
    :cond_c9
    const/4 v3, 0x0

    .local v3, i:I
    :goto_ca
    :try_start_ca
    iget-object v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkWidgetId:[J

    array-length v11, v11

    if-ge v3, v11, :cond_ea

    .line 191
    iget-object v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkWidgetId:[J

    aget-wide v11, v11, v3

    cmp-long v11, v11, v4

    if-nez v11, :cond_17a

    .line 194
    iget-object v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v12, 0x1

    invoke-virtual {v11, v4, v5, v12}, Lcom/android/browser/BrowserBookmarksPage;->setCheckedBox(JZ)V

    .line 195
    iget-object v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v11, v4, v5}, Lcom/android/browser/BrowserBookmarksPage;->isCheckedBox(J)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mChecked:Z

    .line 196
    iget-boolean v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mChecked:Z

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_ea} :catch_17e

    .line 206
    .end local v3           #i:I
    :cond_ea
    :goto_ea
    iget-object v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCheckBoxChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    iget-object v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCheckBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const/4 v11, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_199

    .line 214
    const v11, 0x7f0200b1

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 216
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    :goto_116
    return-void

    .line 153
    :cond_117
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_a9

    .line 155
    :cond_11c
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/android/browser/DeleteBookmark;

    if-eqz v11, :cond_14b

    .line 157
    iget v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mIsFolder:I

    if-eqz v11, :cond_145

    .line 159
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 160
    const-string v11, "BrowserBookmarksAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This is a Folder // id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 163
    :cond_145
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_a9

    .line 165
    :cond_14b
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/android/browser/BookmarkWidgetPage;

    if-eqz v11, :cond_a9

    .line 167
    iget v11, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mIsFolder:I

    if-eqz v11, :cond_174

    .line 169
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 170
    const-string v11, "BrowserBookmarksAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This is a Folder // id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 173
    :cond_174
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_a9

    .line 189
    .restart local v3       #i:I
    :cond_17a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_ca

    .line 200
    :catch_17e
    move-exception v2

    .line 201
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "BrowserBookmarksAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "data is null"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ea

    .line 218
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    :cond_199
    const/4 v11, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 219
    .local v9, thumbData:[B
    const/4 v8, 0x0

    .line 220
    .local v8, thumbBitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_1a9

    .line 221
    const/4 v11, 0x0

    array-length v12, v9

    invoke-static {v9, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 224
    :cond_1a9
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 225
    if-nez v8, :cond_1be

    .line 226
    const v11, 0x7f020019

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    :goto_1b6
    const v11, 0x7f020011

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_116

    .line 228
    :cond_1be
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1b6
.end method

.method bindListView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 19
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 235
    const v12, 0x7f0d0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 236
    .local v3, favicon:Landroid/widget/ImageView;
    const v12, 0x7f0d001f

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 237
    .local v9, tv:Landroid/widget/TextView;
    const v12, 0x7f0d0006

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 238
    .local v10, url:Landroid/widget/TextView;
    const-string v12, "BrowserBookmarksAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bindListView - view : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v12, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mIsFolder:I

    .line 242
    const v12, 0x7f0d00ea

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 244
    .local v1, check:Landroid/widget/CheckBox;
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 245
    .local v7, id:J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 247
    iget-object v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v12, v7, v8}, Lcom/android/browser/BrowserBookmarksPage;->isCheckedBox(J)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mChecked:Z

    .line 248
    iget-boolean v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mChecked:Z

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 251
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/android/browser/BookmarkMoveToFolder;

    if-eqz v12, :cond_11c

    .line 253
    iget v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mIsFolder:I

    if-eqz v12, :cond_116

    .line 255
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 256
    const-string v12, "BrowserBookmarksAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "This is a Folder // id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_99
    :goto_99
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/android/browser/BookmarkWidgetPage;

    if-eqz v12, :cond_da

    .line 286
    iget-object v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v12}, Lcom/android/browser/BrowserBookmarksPage;->checkIfInvalidate()Z

    move-result v12

    if-eqz v12, :cond_da

    .line 288
    iget-object v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v12, v7, v8}, Lcom/android/browser/BrowserBookmarksPage;->isCheckedBox(J)Z

    move-result v12

    if-nez v12, :cond_b9

    .line 290
    iget-object v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v13, 0x0

    invoke-virtual {v12, v7, v8, v13}, Lcom/android/browser/BrowserBookmarksPage;->setCheckedBox(JZ)V

    .line 291
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 294
    :cond_b9
    const/4 v6, 0x0

    .local v6, i:I
    :goto_ba
    :try_start_ba
    iget-object v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkWidgetId:[J

    array-length v12, v12

    if-ge v6, v12, :cond_da

    .line 296
    iget-object v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkWidgetId:[J

    aget-wide v12, v12, v6

    cmp-long v12, v12, v7

    if-nez v12, :cond_17a

    .line 298
    iget-object v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v13, 0x1

    invoke-virtual {v12, v7, v8, v13}, Lcom/android/browser/BrowserBookmarksPage;->setCheckedBox(JZ)V

    .line 299
    iget-object v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v12, v7, v8}, Lcom/android/browser/BrowserBookmarksPage;->isCheckedBox(J)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mChecked:Z

    .line 300
    iget-boolean v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mChecked:Z

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_da} :catch_17e

    .line 310
    .end local v6           #i:I
    :cond_da
    :goto_da
    iget-object v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCheckBoxChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 311
    iget-object v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCheckBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    const/4 v12, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 318
    .local v11, urlText:Ljava/lang/String;
    if-eqz v11, :cond_fd

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_199

    .line 319
    :cond_fd
    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    :goto_102
    const/4 v12, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_1a2

    .line 333
    const v12, 0x7f020051

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    :goto_115
    return-void

    .line 259
    .end local v11           #urlText:Ljava/lang/String;
    :cond_116
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_99

    .line 261
    :cond_11c
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/android/browser/DeleteBookmark;

    if-eqz v12, :cond_14b

    .line 263
    iget v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mIsFolder:I

    if-eqz v12, :cond_145

    .line 265
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 266
    const-string v12, "BrowserBookmarksAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "This is a Folder // id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    .line 269
    :cond_145
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_99

    .line 271
    :cond_14b
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/android/browser/BookmarkWidgetPage;

    if-eqz v12, :cond_99

    .line 273
    iget v12, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mIsFolder:I

    if-eqz v12, :cond_174

    .line 275
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 276
    const-string v12, "BrowserBookmarksAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "This is a Folder // id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    .line 279
    :cond_174
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_99

    .line 294
    .restart local v6       #i:I
    :cond_17a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_ba

    .line 304
    :catch_17e
    move-exception v2

    .line 305
    .local v2, e:Ljava/lang/Exception;
    const-string v12, "BrowserBookmarksAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data is null"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_da

    .line 321
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #i:I
    .restart local v11       #urlText:Ljava/lang/String;
    :cond_199
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_102

    .line 336
    :cond_1a2
    const/4 v12, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 337
    .local v5, faviconData:[B
    const/4 v4, 0x0

    .line 338
    .local v4, faviconBitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1b2

    .line 339
    const/4 v12, 0x0

    array-length v13, v5

    invoke-static {v5, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 342
    :cond_1b2
    if-nez v4, :cond_1c2

    .line 343
    const v12, 0x7f020002

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    :goto_1ba
    const v12, 0x7f020007

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_115

    .line 345
    :cond_1c2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1ba
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 95
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCountItems:I

    .line 96
    iput-object p3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    .line 97
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mView:Landroid/view/View;

    .line 98
    instance-of v1, p2, Lcom/android/browser/BookmarkWidgetPage;

    if-eqz v1, :cond_11

    .line 101
    :try_start_e
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->loadCheckedBookmarks()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_1a

    .line 106
    :cond_11
    :goto_11
    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentView:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->bindListView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 112
    :goto_19
    return-void

    .line 102
    :catch_1a
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BrowserBookmarksAdapter"

    const-string v2, "Bookmark DB is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 109
    .end local v0           #e:Ljava/lang/Exception;
    :cond_23
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/browser/BrowserBookmarksAdapter;->bindGridView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_19
.end method

.method public getIsOpBookmark(JLandroid/content/Context;)Z
    .registers 7
    .parameter "id"
    .parameter "context"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->isOpbookmarkIDs:[J

    if-eqz v1, :cond_1f

    instance-of v1, p3, Lcom/android/browser/DeleteBookmark;

    if-nez v1, :cond_c

    instance-of v1, p3, Lcom/android/browser/BookmarkMoveToFolder;

    if-eqz v1, :cond_1f

    .line 450
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->isOpbookmarkIDs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 452
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->isOpbookmarkIDs:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_1c

    .line 453
    const/4 v1, 0x1

    .line 456
    .end local v0           #i:I
    :goto_1b
    return v1

    .line 450
    .restart local v0       #i:I
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 456
    .end local v0           #i:I
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public getItem(I)Landroid/database/Cursor;
    .registers 5
    .parameter "position"

    .prologue
    .line 374
    const-string v0, "BrowserBookmarksAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItem //position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getViewMode()I
    .registers 2

    .prologue
    .line 369
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentView:I

    return v0
.end method

.method loadCheckedBookmarks()V
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 419
    new-instance v11, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v11, v1}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;-><init>(Landroid/content/Context;)V

    .line 420
    .local v11, helper:Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;
    invoke-virtual {v11}, Lcom/android/browser/BookmarkAppWidgetProvider$BookmarkAppWidgetDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 421
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "%s = ?"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v5, "appWidgetId"

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, selection:Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    const-string v1, "%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mAppWidgetId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    .line 426
    .local v4, selectionArgs:[Ljava/lang/String;
    :try_start_2d
    const-string v1, "bookmarks"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 427
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 429
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkWidgetId:[J

    if-nez v1, :cond_47

    .line 430
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkWidgetId:[J

    .line 432
    :cond_47
    const/4 v12, 0x0

    .local v12, i:I
    :goto_48
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v12, v1, :cond_5d

    .line 434
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarkWidgetId:[J

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v1, v12

    .line 435
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 432
    add-int/lit8 v12, v12, 0x1

    goto :goto_48

    .line 437
    :cond_5d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_60
    .catchall {:try_start_2d .. :try_end_60} :catchall_85
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_60} :catch_66

    .line 441
    if-eqz v0, :cond_65

    .line 442
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 444
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v12           #i:I
    :cond_65
    :goto_65
    return-void

    .line 438
    :catch_66
    move-exception v10

    .line 439
    .local v10, e:Ljava/lang/Exception;
    :try_start_67
    const-string v1, "bookmarkwidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB is null"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_85

    .line 441
    if-eqz v0, :cond_65

    .line 442
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_65

    .line 441
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_85
    move-exception v1

    if-eqz v0, :cond_8b

    .line 442
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8b
    throw v1
.end method

.method loadCheckedOPBookmarks()V
    .registers 10

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 462
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 466
    .local v6, c:Landroid/database/Cursor;
    :try_start_7
    sget-object v1, Lcom/android/browser/provider/BrowserProvider2$OpBookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bookmark_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 470
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->isOpbookmarkIDs:[J

    if-nez v1, :cond_24

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->isOpbookmarkIDs:[J

    .line 474
    :cond_24
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 476
    const/4 v8, 0x0

    .local v8, i:I
    :goto_28
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v8, v1, :cond_3d

    .line 478
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->isOpbookmarkIDs:[J

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v1, v8

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3a} :catch_43

    .line 476
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .line 484
    :cond_3d
    if-eqz v6, :cond_42

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 487
    .end local v8           #i:I
    :cond_42
    :goto_42
    return-void

    .line 481
    :catch_43
    move-exception v7

    .line 482
    .local v7, e:Ljava/lang/Exception;
    :try_start_44
    const-string v1, "loadCheckedOPBookmarks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_62

    .line 484
    if-eqz v6, :cond_42

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .line 484
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_62
    move-exception v1

    if-eqz v6, :cond_68

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_68
    throw v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 353
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 354
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04004b

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 356
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04004f

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_f
.end method

.method refreshAdapter(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mSelectAll:Z

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mIsSelectAll:Z

    .line 416
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->notifyDataSetChanged()V

    .line 417
    return-void
.end method

.method public selectView(I)V
    .registers 5
    .parameter "view"

    .prologue
    .line 361
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_1f
    iput p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentView:I

    .line 366
    return-void
.end method
