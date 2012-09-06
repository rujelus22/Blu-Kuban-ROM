.class Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;
.super Landroid/database/DataSetObserver;
.source "SubscriptionTagEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagSelector"
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v4/widget/CursorAdapter;

.field private final mListView:Landroid/widget/ListView;

.field private mSyncPosition:Ljava/lang/Integer;

.field private mSyncTagId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Landroid/support/v4/widget/CursorAdapter;)V
    .registers 5
    .parameter "listView"
    .parameter "adapter"

    .prologue
    .line 396
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 397
    if-nez p1, :cond_d

    .line 398
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ListView is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_d
    if-nez p2, :cond_17

    .line 401
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "CursorAdapter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_17
    iput-object p1, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mListView:Landroid/widget/ListView;

    .line 404
    iput-object p2, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/CursorAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 406
    return-void
.end method

.method private dispatchOnItemClick(I)V
    .registers 8
    .parameter "position"

    .prologue
    .line 465
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 466
    .local v0, listener:Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    const-wide/high16 v4, -0x8000

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 467
    return-void
.end method

.method private findTag(Ljava/lang/String;)I
    .registers 8
    .parameter "tagId"

    .prologue
    .line 432
    iget-object v5, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v5}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 433
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_29

    .line 434
    iget-object v5, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 435
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, position:I
    :goto_f
    if-ge v3, v0, :cond_29

    .line 436
    iget-object v5, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 437
    .local v2, item:Ljava/lang/Object;
    if-ne v2, v1, :cond_26

    .line 438
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, streamId:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    move v5, v3

    .line 445
    .end local v0           #count:I
    .end local v2           #item:Ljava/lang/Object;
    .end local v3           #position:I
    .end local v4           #streamId:Ljava/lang/String;
    :goto_25
    return v5

    .line 435
    .restart local v0       #count:I
    .restart local v2       #item:Ljava/lang/Object;
    .restart local v3       #position:I
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 445
    .end local v0           #count:I
    .end local v2           #item:Ljava/lang/Object;
    .end local v3           #position:I
    :cond_29
    const/4 v5, -0x1

    goto :goto_25
.end method

.method private selectTagLater(Ljava/lang/String;)V
    .registers 2
    .parameter "tagId"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mSyncTagId:Ljava/lang/String;

    .line 420
    return-void
.end method

.method private selectTagNow(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 449
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->findTag(Ljava/lang/String;)I

    move-result v0

    .line 450
    if-gez v0, :cond_1b

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    const/4 v0, 0x0

    .line 457
    :goto_1a
    return v0

    .line 454
    :cond_1b
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 455
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->dispatchOnItemClick(I)V

    .line 456
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->showPositionAfterLayout(I)V

    move v0, v2

    .line 457
    goto :goto_1a
.end method

.method private showPositionAfterLayout(I)V
    .registers 3
    .parameter

    .prologue
    .line 471
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mSyncPosition:Ljava/lang/Integer;

    .line 472
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 473
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mSyncTagId:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 425
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mSyncTagId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->selectTagNow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mSyncTagId:Ljava/lang/String;

    .line 429
    :cond_f
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 479
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mSyncPosition:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    .line 480
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mSyncPosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 481
    .local v0, position:I
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 482
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->mSyncPosition:Ljava/lang/Integer;

    .line 484
    .end local v0           #position:I
    :cond_12
    return-void
.end method

.method public selectTag(Ljava/lang/String;)V
    .registers 4
    .parameter "tagId"

    .prologue
    .line 409
    if-nez p1, :cond_a

    .line 410
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tag ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_a
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->selectTagNow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 413
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/SubscriptionTagEditorActivity$TagSelector;->selectTagLater(Ljava/lang/String;)V

    .line 415
    :cond_13
    return-void
.end method
