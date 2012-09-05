.class Lcom/android/browser/SuggestionsAdapter$CombinedCursor;
.super Lcom/android/browser/SuggestionsAdapter$CursorSource;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CombinedCursor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SuggestionsAdapter;


# direct methods
.method constructor <init>(Lcom/android/browser/SuggestionsAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->this$0:Lcom/android/browser/SuggestionsAdapter;

    invoke-direct {p0, p1}, Lcom/android/browser/SuggestionsAdapter$CursorSource;-><init>(Lcom/android/browser/SuggestionsAdapter;)V

    return-void
.end method

.method private getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "title"
    .parameter "url"

    .prologue
    .line 497
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_10

    .line 498
    :cond_c
    invoke-static {p2}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 500
    :cond_10
    return-object p1
.end method

.method private getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "title"
    .parameter "url"

    .prologue
    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 514
    :cond_12
    const/4 v0, 0x0

    .line 516
    :goto_13
    return-object v0

    :cond_14
    invoke-static {p2}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method


# virtual methods
.method public getItem()Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 446
    iget-object v5, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_3c

    iget-object v5, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3c

    .line 447
    iget-object v5, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, url:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_38

    move v0, v3

    .line 450
    .local v0, isBookmark:Z
    :goto_25
    new-instance v5, Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    iget-object v6, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->this$0:Lcom/android/browser/SuggestionsAdapter;

    invoke-direct {p0, v1, v2}, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->getTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v2}, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_3a

    :goto_33
    invoke-direct {v5, v6, v7, v8, v4}, Lcom/android/browser/SuggestionsAdapter$SuggestItem;-><init>(Lcom/android/browser/SuggestionsAdapter;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v5

    .line 453
    .end local v0           #isBookmark:Z
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :goto_37
    return-object v3

    .restart local v1       #title:Ljava/lang/String;
    .restart local v2       #url:Ljava/lang/String;
    :cond_38
    move v0, v4

    .line 449
    goto :goto_25

    .restart local v0       #isBookmark:Z
    :cond_3a
    move v4, v3

    .line 450
    goto :goto_33

    .line 453
    .end local v0           #isBookmark:Z
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_3c
    const/4 v3, 0x0

    goto :goto_37
.end method

.method public runQuery(Ljava/lang/CharSequence;)V
    .registers 11
    .parameter "constraint"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 459
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 460
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, like:Ljava/lang/String;
    const/4 v6, 0x0

    .line 464
    .local v6, args:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 465
    .local v3, selection:Ljava/lang/String;
    const-string v0, "http"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "file"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 466
    :cond_31
    new-array v6, v4, [Ljava/lang/String;

    .line 467
    aput-object v7, v6, v2

    .line 468
    const-string v3, "url LIKE ?"

    .line 479
    :goto_37
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2$OmniboxSuggestions;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 480
    .local v8, ub:Landroid/net/Uri$Builder;
    const-string v0, "limit"

    iget-object v1, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->this$0:Lcom/android/browser/SuggestionsAdapter;

    iget v1, v1, Lcom/android/browser/SuggestionsAdapter;->mLinesLandscape:I

    iget-object v2, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->this$0:Lcom/android/browser/SuggestionsAdapter;

    iget v2, v2, Lcom/android/browser/SuggestionsAdapter;->mLinesPortrait:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 482
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CombinedCursor;->this$0:Lcom/android/browser/SuggestionsAdapter;

    iget-object v0, v0, Lcom/android/browser/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/browser/SuggestionsAdapter;->access$100()[Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_d5

    move-object v4, v6

    :goto_65
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    .line 485
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_74

    .line 486
    iget-object v0, p0, Lcom/android/browser/SuggestionsAdapter$CursorSource;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 488
    :cond_74
    return-void

    .line 470
    .end local v8           #ub:Landroid/net/Uri$Builder;
    :cond_75
    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 473
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 474
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 476
    const/4 v0, 0x4

    aput-object v7, v6, v0

    .line 477
    const-string v3, "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?)"

    goto/16 :goto_37

    .restart local v8       #ub:Landroid/net/Uri$Builder;
    :cond_d5
    move-object v4, v5

    .line 482
    goto :goto_65
.end method
