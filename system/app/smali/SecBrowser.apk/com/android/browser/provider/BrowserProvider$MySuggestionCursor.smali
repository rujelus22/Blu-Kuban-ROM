.class Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;
.super Landroid/database/AbstractCursor;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/BrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySuggestionCursor"
.end annotation


# instance fields
.field private mHistoryCount:I

.field private mHistoryCursor:Landroid/database/Cursor;

.field private mIncludeWebSearch:Z

.field private mString:Ljava/lang/String;

.field private mSuggestCursor:Landroid/database/Cursor;

.field private mSuggestIntentExtraDataId:I

.field private mSuggestQueryId:I

.field private mSuggestText1Id:I

.field private mSuggestText2Id:I

.field private mSuggestText2UrlId:I

.field private mSuggestionCount:I

.field final synthetic this$0:Lcom/android/browser/provider/BrowserProvider;


# direct methods
.method public constructor <init>(Lcom/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter "hc"
    .parameter "sc"
    .parameter "string"

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 473
    iput-object p1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->this$0:Lcom/android/browser/provider/BrowserProvider;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 474
    iput-object p2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    .line 475
    iput-object p3, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    .line 476
    if-eqz p2, :cond_49

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_11
    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    .line 477
    if-eqz p3, :cond_4b

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_19
    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    .line 478
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    #getter for: Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I
    invoke-static {p1}, Lcom/android/browser/provider/BrowserProvider;->access$200(Lcom/android/browser/provider/BrowserProvider;)I

    move-result v2

    iget v3, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_2f

    .line 479
    #getter for: Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I
    invoke-static {p1}, Lcom/android/browser/provider/BrowserProvider;->access$200(Lcom/android/browser/provider/BrowserProvider;)I

    move-result v0

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    .line 481
    :cond_2f
    iput-object p4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    .line 482
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_38

    const/4 v1, 0x1

    :cond_38
    iput-boolean v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    .line 487
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4d

    .line 488
    iput v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    .line 489
    iput v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    .line 490
    iput v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    .line 491
    iput v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    .line 492
    iput v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    .line 505
    :goto_48
    return-void

    :cond_49
    move v0, v1

    .line 476
    goto :goto_11

    :cond_4b
    move v0, v1

    .line 477
    goto :goto_19

    .line 494
    :cond_4d
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_text_1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    .line 496
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_text_2"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    .line 498
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_text_2_url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    .line 500
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_intent_query"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    .line 502
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_intent_extra_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    goto :goto_48
.end method

.method private getHistoryTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 731
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1e

    .line 733
    :cond_13
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/browser/provider/BrowserProvider;->stripUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/provider/BrowserProvider;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 735
    :cond_1e
    return-object v0
.end method

.method private getHistoryUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_15

    .line 748
    :cond_13
    const/4 v1, 0x0

    .line 750
    :goto_14
    return-object v1

    :cond_15
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/browser/provider/BrowserProvider;->stripUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/provider/BrowserProvider;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_14
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 713
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 714
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 715
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 716
    iput-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    .line 718
    :cond_f
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1a

    .line 719
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 720
    iput-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    .line 722
    :cond_1a
    return-void
.end method

.method public deactivate()V
    .registers 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 696
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 698
    :cond_9
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_12

    .line 699
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 701
    :cond_12
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 702
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 544
    invoke-static {}, Lcom/android/browser/provider/BrowserProvider;->access$300()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    if-eqz v0, :cond_c

    .line 536
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 538
    :goto_b
    return v0

    :cond_c
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    add-int/2addr v0, v1

    goto :goto_b
.end method

.method public getDouble(I)D
    .registers 3
    .parameter "column"

    .prologue
    .line 661
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 666
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 676
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    if-nez p1, :cond_b

    .line 677
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 679
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 684
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 9
    .parameter "columnIndex"

    .prologue
    const/4 v2, 0x2

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 549
    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    if-eq v4, v6, :cond_28

    iget-object v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_28

    .line 550
    const/4 v0, -0x1

    .line 551
    .local v0, type:I
    iget-boolean v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    if-eqz v4, :cond_3c

    .line 552
    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-nez v4, :cond_2a

    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    if-nez v4, :cond_2a

    .line 553
    const/4 v0, 0x0

    .line 561
    :cond_1a
    :goto_1a
    if-ne v0, v6, :cond_25

    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-ge v4, v5, :cond_3a

    move v0, v1

    .line 566
    :cond_25
    :goto_25
    packed-switch p1, :pswitch_data_124

    .end local v0           #type:I
    :cond_28
    move-object v1, v3

    .line 656
    :goto_29
    return-object v1

    .line 554
    .restart local v0       #type:I
    :cond_2a
    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-lez v4, :cond_1a

    .line 555
    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    if-nez v4, :cond_34

    .line 556
    const/4 v0, 0x1

    goto :goto_1a

    .line 557
    :cond_34
    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    if-ne v4, v1, :cond_1a

    .line 558
    const/4 v0, 0x0

    goto :goto_1a

    :cond_3a
    move v0, v2

    .line 561
    goto :goto_25

    .line 563
    :cond_3c
    iget v4, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mPos:I

    iget v5, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-ge v4, v5, :cond_44

    move v0, v1

    :goto_43
    goto :goto_25

    :cond_44
    move v0, v2

    goto :goto_43

    .line 568
    :pswitch_46
    if-ne v0, v1, :cond_4b

    .line 569
    const-string v1, "android.intent.action.VIEW"

    goto :goto_29

    .line 571
    :cond_4b
    const-string v1, "android.intent.action.SEARCH"

    goto :goto_29

    .line 575
    :pswitch_4e
    if-ne v0, v1, :cond_57

    .line 576
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_57
    move-object v1, v3

    .line 578
    goto :goto_29

    .line 582
    :pswitch_59
    if-nez v0, :cond_5e

    .line 583
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    goto :goto_29

    .line 584
    :cond_5e
    if-ne v0, v1, :cond_65

    .line 585
    invoke-direct {p0}, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->getHistoryTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 587
    :cond_65
    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    if-ne v1, v6, :cond_6b

    move-object v1, v3

    goto :goto_29

    .line 588
    :cond_6b
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 592
    :pswitch_74
    if-nez v0, :cond_84

    .line 593
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->this$0:Lcom/android/browser/provider/BrowserProvider;

    invoke-virtual {v1}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c013e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 594
    :cond_84
    if-ne v0, v1, :cond_88

    move-object v1, v3

    .line 595
    goto :goto_29

    .line 597
    :cond_88
    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    if-ne v1, v6, :cond_8e

    move-object v1, v3

    goto :goto_29

    .line 598
    :cond_8e
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 602
    :pswitch_97
    if-nez v0, :cond_9b

    move-object v1, v3

    .line 603
    goto :goto_29

    .line 604
    :cond_9b
    if-ne v0, v1, :cond_a2

    .line 605
    invoke-direct {p0}, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->getHistoryUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 607
    :cond_a2
    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    if-ne v1, v6, :cond_a8

    move-object v1, v3

    goto :goto_29

    .line 608
    :cond_a8
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_29

    .line 612
    :pswitch_b2
    if-ne v0, v1, :cond_d7

    .line 613
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_ca

    .line 614
    const v1, 0x7f02007e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_29

    .line 618
    :cond_ca
    const v1, 0x7f020080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_29

    .line 623
    :cond_d7
    const v1, 0x7f020081

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_29

    .line 629
    :pswitch_e4
    const-string v1, "0"

    goto/16 :goto_29

    .line 632
    :pswitch_e8
    if-nez v0, :cond_ee

    .line 633
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    goto/16 :goto_29

    .line 634
    :cond_ee
    if-ne v0, v1, :cond_f8

    .line 639
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_29

    .line 641
    :cond_f8
    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    if-ne v1, v6, :cond_ff

    move-object v1, v3

    goto/16 :goto_29

    .line 642
    :cond_ff
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_29

    .line 646
    :pswitch_109
    if-nez v0, :cond_10e

    move-object v1, v3

    .line 647
    goto/16 :goto_29

    .line 648
    :cond_10e
    if-ne v0, v1, :cond_113

    move-object v1, v3

    .line 649
    goto/16 :goto_29

    .line 651
    :cond_113
    iget v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    if-ne v1, v6, :cond_11a

    move-object v1, v3

    goto/16 :goto_29

    .line 652
    :cond_11a
    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_29

    .line 566
    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_46
        :pswitch_4e
        :pswitch_59
        :pswitch_74
        :pswitch_97
        :pswitch_b2
        :pswitch_e4
        :pswitch_e8
        :pswitch_109
    .end packed-switch
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 689
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onMove(II)Z
    .registers 6
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 509
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-nez v2, :cond_7

    .line 530
    :goto_6
    return v0

    .line 512
    :cond_7
    iget-boolean v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    if-eqz v2, :cond_26

    .line 513
    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-nez v2, :cond_13

    if-nez p2, :cond_13

    move v0, v1

    .line 514
    goto :goto_6

    .line 515
    :cond_13
    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-lez v2, :cond_24

    .line 516
    if-nez p2, :cond_20

    .line 517
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    .line 518
    goto :goto_6

    .line 519
    :cond_20
    if-ne p2, v1, :cond_24

    move v0, v1

    .line 520
    goto :goto_6

    .line 523
    :cond_24
    add-int/lit8 p2, p2, -0x1

    .line 525
    :cond_26
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-le v0, p2, :cond_31

    .line 526
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_2f
    move v0, v1

    .line 530
    goto :goto_6

    .line 528
    :cond_31
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int v2, p2, v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_2f
.end method

.method public requery()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 706
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    :goto_b
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_15

    iget-object v1, p0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    :cond_15
    or-int/2addr v0, v1

    return v0

    :cond_17
    move v0, v1

    goto :goto_b
.end method
