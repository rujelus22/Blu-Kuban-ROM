.class public Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;
.super Lcom/sec/android/socialhub/SocialHubQueryBuilder;
.source "SocialHubQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/SocialHubQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchQuery"
.end annotation


# instance fields
.field mQuery:Lcom/sec/android/socialhub/SocialHubQueryBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V
    .registers 4
    .parameter "context"
    .parameter "builder"

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;-><init>(Landroid/content/Context;)V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;->mQuery:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 486
    iput-object p2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;->mQuery:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 487
    return-void
.end method

.method private getFieldFromModel(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 17
    .parameter "model"
    .parameter "condition"
    .parameter "before"

    .prologue
    .line 613
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 615
    .local v1, buffer:Ljava/lang/StringBuffer;
    if-nez p1, :cond_17

    .line 617
    const-string v10, "SearchQuery"

    const-string v11, "getFieldFromModel()"

    const-string v12, "model is null."

    invoke-static {v10, v11, v12}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 692
    :goto_16
    return-object v10

    .line 621
    :cond_17
    invoke-virtual {p1}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->getFieldNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 622
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_b1

    const/4 v2, 0x0

    .line 624
    .local v2, count:I
    :goto_1e
    if-lez v2, :cond_ce

    .line 626
    if-eqz p3, :cond_2d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2d

    .line 628
    const-string v10, " or "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ce

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 633
    .local v5, element:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->getTextResource()I

    move-result v10

    const v11, 0x7f0800e2

    if-ne v10, v11, :cond_b7

    .line 639
    :try_start_46
    iget-object v10, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 640
    .local v3, current:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 641
    .local v8, start:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 643
    .local v6, end:Ljava/util/Calendar;
    invoke-virtual {v8, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 644
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 646
    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 647
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 648
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 651
    const/16 v10, 0xa

    const/16 v11, 0x18

    invoke-virtual {v6, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 652
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 653
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 655
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    const-string v10, " >= "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 657
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 658
    const-string v10, " and "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 660
    const-string v10, " <= "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 662
    const-string v10, " or "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_ab
    .catch Ljava/text/ParseException; {:try_start_46 .. :try_end_ab} :catch_ac

    goto :goto_31

    .line 664
    .end local v3           #current:Ljava/util/Date;
    .end local v6           #end:Ljava/util/Calendar;
    .end local v8           #start:Ljava/util/Calendar;
    :catch_ac
    move-exception v4

    .line 666
    .local v4, e:Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_31

    .line 622
    .end local v2           #count:I
    .end local v4           #e:Ljava/text/ParseException;
    .end local v5           #element:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_b1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto/16 :goto_1e

    .line 671
    .restart local v2       #count:I
    .restart local v5       #element:Ljava/lang/String;
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_b7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    const-string v10, " like \'%"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 674
    const-string v10, "%\' "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 675
    const-string v10, " or "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_31

    .line 680
    .end local v5           #element:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_ce
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_103

    .line 682
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 684
    .local v9, sub:Ljava/lang/String;
    const-string v10, "SearchQuery"

    const-string v11, "getFieldFromModel()"

    invoke-static {v10, v11, v9}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v10, "or"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_103

    .line 688
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 692
    .end local v9           #sub:Ljava/lang/String;
    :cond_103
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_16
.end method


# virtual methods
.method public getQuery(Ljava/lang/Object;)Ljava/lang/String;
    .registers 16
    .parameter "account"

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x1

    .line 492
    iget-object v11, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;->mQuery:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    if-nez v11, :cond_8

    move-object v9, v10

    .line 608
    :goto_7
    return-object v9

    .line 495
    :cond_8
    iget-object v11, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;->mQuery:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    invoke-virtual {v11, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->getQuery(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 496
    .local v9, where:Ljava/lang/String;
    const/4 v2, 0x0

    .line 498
    .local v2, condition:Ljava/lang/String;
    const/4 v0, 0x0

    .line 499
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;>;"
    const/4 v6, 0x0

    .line 501
    .local v6, model:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    const/4 v7, 0x0

    .line 503
    .local v7, parenthesis:Z
    iget-object v11, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mEditText:Landroid/widget/EditText;

    if-eqz v11, :cond_20

    .line 505
    iget-object v11, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    :cond_20
    iget-object v11, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mInfo:Landroid/os/Bundle;

    if-eqz v11, :cond_59

    .line 510
    iget-object v11, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mInfo:Landroid/os/Bundle;

    const-string v12, "search_model"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6           #model:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    check-cast v6, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    .line 511
    .restart local v6       #model:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    iget-object v11, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mInfo:Landroid/os/Bundle;

    const-string v12, "all_field"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 519
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-ne v11, v13, :cond_74

    .line 521
    :cond_3e
    const-string v10, "SearchQuery"

    const-string v11, "getQuery()"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "condition = null, query = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 515
    :cond_59
    const-string v10, "SearchQuery"

    const-string v11, "getQuery()"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mInfo is null. maybe onSearchText is not invoked yet. condition - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 525
    :cond_74
    if-nez v9, :cond_78

    .line 527
    const-string v9, ""

    .line 530
    :cond_78
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 532
    .local v1, buffer:Ljava/lang/StringBuffer;
    if-eqz v6, :cond_10d

    .line 534
    invoke-virtual {v6}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->getTextResource()I

    move-result v11

    const v12, 0x7f0800e0

    if-ne v11, v12, :cond_ec

    .line 536
    if-eqz v0, :cond_c8

    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 540
    .local v3, count:I
    if-lez v3, :cond_a0

    .line 542
    const/4 v7, 0x1

    .line 544
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-ne v10, v13, :cond_bb

    .line 546
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    :cond_a0
    :goto_a0
    const/4 v8, 0x0

    .line 557
    .local v8, ret:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_a5
    :goto_a5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    .line 565
    .local v5, items:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    if-eqz v5, :cond_a5

    .line 567
    invoke-direct {p0, v5, v2, v8}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;->getFieldFromModel(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 568
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a5

    .line 550
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #items:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    .end local v8           #ret:Ljava/lang/String;
    :cond_bb
    const-string v10, " and ("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a0

    .line 572
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #ret:Ljava/lang/String;
    :cond_c1
    if-ne v7, v13, :cond_c8

    .line 574
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    .end local v3           #count:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #ret:Ljava/lang/String;
    :cond_c8
    :goto_c8
    const-string v10, "SearchQuery"

    const-string v11, "getQuery()"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "field = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->getFieldNames()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :goto_e6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_7

    .line 580
    :cond_ec
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-ne v11, v13, :cond_106

    .line 582
    const/4 v7, 0x0

    .line 590
    :goto_f7
    invoke-direct {p0, v6, v2, v10}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;->getFieldFromModel(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    if-ne v7, v13, :cond_c8

    .line 594
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c8

    .line 586
    :cond_106
    const-string v11, " and ("

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    const/4 v7, 0x1

    goto :goto_f7

    .line 602
    :cond_10d
    const-string v10, "SearchQuery"

    const-string v11, "getQuery()"

    const-string v12, "model is null"

    invoke-static {v10, v11, v12}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e6
.end method
