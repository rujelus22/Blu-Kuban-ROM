.class public Lcom/google/android/apps/plus/phone/StreamsActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "StreamsActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/plus/views/SlidingPanel$OnPanelSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;,
        Lcom/google/android/apps/plus/phone/StreamsActivity$CirclesQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragmentActivity;",
        "Lcom/google/android/apps/plus/views/SlidingPanel$OnPanelSelectedListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActiveFragmentTag:Ljava/lang/String;

.field private mCirclesCursor:Landroid/database/Cursor;

.field private mFragmentInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/fragments/StreamListFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsPaused:Z

.field private mLayoutRunnable:Ljava/lang/Runnable;

.field private mLoading:Z

.field private mNeedToRestartLoaders:Z

.field private mSlidingPanel:Lcom/google/android/apps/plus/views/SlidingPanel;

.field private mTitles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragments:Ljava/util/HashMap;

    .line 87
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mIsPaused:Z

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mNeedToRestartLoaders:Z

    .line 91
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/StreamsActivity;)Lcom/google/android/apps/plus/views/SlidingPanel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mSlidingPanel:Lcom/google/android/apps/plus/views/SlidingPanel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/StreamsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/StreamsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->prepareFragments()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/phone/StreamsActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mNeedToRestartLoaders:Z

    return p1
.end method

.method private activateFragment(Ljava/lang/String;)V
    .registers 26
    .parameter "tag"

    .prologue
    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    if-nez v22, :cond_d

    .line 664
    :cond_c
    :goto_c
    return-void

    .line 553
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;

    .line 554
    .local v16, info:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    if-nez v16, :cond_65

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_2d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_63

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 557
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->index:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2d

    .line 558
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .end local v16           #info:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    check-cast v16, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;

    .line 559
    .restart local v16       #info:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .line 564
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;>;"
    .restart local p1
    :cond_63
    if-eqz v16, :cond_c

    .line 569
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_65
    move-object/from16 v0, v16

    iget v3, v0, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->index:I

    .line 571
    .local v3, activeFragmentIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mActiveFragmentTag:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a7

    .line 573
    const-string v22, "streams"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 575
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string v22, "circle"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 576
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_13a

    .line 577
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 582
    :goto_a1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/phone/StreamsActivity;->mActiveFragmentTag:Ljava/lang/String;

    .line 585
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_a7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    .line 586
    .local v9, fragMgr:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 587
    .local v4, addTransactions:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v20

    .line 591
    .local v20, removeTransactions:Landroid/support/v4/app/FragmentTransaction;
    const/16 v22, 0x0

    add-int/lit8 v23, v3, -0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 592
    .local v18, min:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    add-int/lit8 v23, v3, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 596
    .local v17, max:I
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 597
    .local v21, tagsToAdd:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v15, v0, [I

    .line 598
    .local v15, indices:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_f1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_171

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 599
    .restart local v6       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 600
    .local v11, fragmentTag:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;

    .line 601
    .local v10, fragmentInfo:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    iget v0, v10, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->index:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v18

    if-lt v0, v1, :cond_14b

    iget v0, v10, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->index:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_14b

    .line 603
    invoke-virtual {v9, v11}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    .line 605
    .local v8, frag:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    if-nez v8, :cond_13f

    .line 606
    iget v0, v10, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->index:I

    move/from16 v22, v0

    sub-int v22, v22, v18

    aput-object v11, v21, v22

    .line 610
    :goto_12d
    iget v0, v10, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->index:I

    move/from16 v22, v0

    iget v0, v10, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->index:I

    move/from16 v23, v0

    sub-int v23, v23, v18

    aput v23, v15, v22

    goto :goto_f1

    .line 579
    .end local v4           #addTransactions:Landroid/support/v4/app/FragmentTransaction;
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;>;"
    .end local v8           #frag:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    .end local v9           #fragMgr:Landroid/support/v4/app/FragmentManager;
    .end local v10           #fragmentInfo:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    .end local v11           #fragmentTag:Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #indices:[I
    .end local v17           #max:I
    .end local v18           #min:I
    .end local v20           #removeTransactions:Landroid/support/v4/app/FragmentTransaction;
    .end local v21           #tagsToAdd:[Ljava/lang/String;
    .restart local v5       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_13a
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_a1

    .line 608
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v4       #addTransactions:Landroid/support/v4/app/FragmentTransaction;
    .restart local v6       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;>;"
    .restart local v8       #frag:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    .restart local v9       #fragMgr:Landroid/support/v4/app/FragmentManager;
    .restart local v10       #fragmentInfo:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    .restart local v11       #fragmentTag:Ljava/lang/String;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #indices:[I
    .restart local v17       #max:I
    .restart local v18       #min:I
    .restart local v20       #removeTransactions:Landroid/support/v4/app/FragmentTransaction;
    .restart local v21       #tagsToAdd:[Ljava/lang/String;
    :cond_13f
    iget v0, v10, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->index:I

    move/from16 v22, v0

    sub-int v22, v22, v18

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->setFragmentIndex(I)V

    goto :goto_12d

    .line 613
    .end local v8           #frag:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    :cond_14b
    invoke-virtual {v9, v11}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    .line 615
    .local v19, oldFragment:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    if-eqz v19, :cond_168

    .line 616
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->deactivate()V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragments:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 620
    :cond_168
    iget v0, v10, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->index:I

    move/from16 v22, v0

    const/16 v23, -0x1

    aput v23, v15, v22

    goto :goto_f1

    .line 625
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;>;"
    .end local v10           #fragmentInfo:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    .end local v11           #fragmentTag:Ljava/lang/String;
    .end local v19           #oldFragment:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    :cond_171
    :try_start_171
    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_174
    .catch Ljava/lang/IllegalStateException; {:try_start_171 .. :try_end_174} :catch_1ba

    .line 631
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 634
    const/4 v13, 0x0

    .local v13, i:I
    :goto_178
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_1bd

    .line 635
    aget-object v22, v21, v13

    if-eqz v22, :cond_1b7

    .line 636
    aget-object v22, v21, v13

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    .line 638
    .restart local v8       #frag:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    aget-object v23, v21, v13

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;

    .line 639
    .restart local v10       #fragmentInfo:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    if-nez v8, :cond_1ab

    .line 640
    aget-object v22, v21, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-direct {v0, v1, v10, v2}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getFragment(Ljava/lang/String;Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;I)Lcom/google/android/apps/plus/fragments/StreamListFragment;

    move-result-object v8

    .line 642
    :cond_1ab
    const v22, 0x7f0d0184

    aget-object v23, v21, v13

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v8, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 634
    .end local v8           #frag:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    .end local v10           #fragmentInfo:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    :cond_1b7
    add-int/lit8 v13, v13, 0x1

    goto :goto_178

    .line 626
    .end local v13           #i:I
    :catch_1ba
    move-exception v7

    .line 629
    .local v7, ex:Ljava/lang/IllegalStateException;
    goto/16 :goto_c

    .line 646
    .end local v7           #ex:Ljava/lang/IllegalStateException;
    .restart local v13       #i:I
    :cond_1bd
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 647
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mSlidingPanel:Lcom/google/android/apps/plus/views/SlidingPanel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/SlidingPanel;->setSelectedPanel(I)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mSlidingPanel:Lcom/google/android/apps/plus/views/SlidingPanel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/google/android/apps/plus/views/SlidingPanel;->setIndices([I)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mLayoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 659
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->attachProgressBarToActiveFragment(Landroid/widget/ProgressBar;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mActiveFragmentTag:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    .line 663
    .local v12, fragmentToActivate:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    invoke-virtual {v12}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->activate()V

    goto/16 :goto_c
.end method

.method private attachProgressBarToActiveFragment(Landroid/widget/ProgressBar;)V
    .registers 5
    .parameter "progressBarView"

    .prologue
    .line 678
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mActiveFragmentTag:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 687
    :goto_4
    return-void

    .line 682
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 684
    .local v0, fragMgr:Landroid/support/v4/app/FragmentManager;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mActiveFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    .line 686
    .local v1, fragmentToActivate:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    goto :goto_4
.end method

.method private getCircleIdPreference()Ljava/lang/String;
    .registers 4

    .prologue
    .line 537
    const-string v0, "streams"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "circle"

    const-string v2, "v.whatshot"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFragment(Ljava/lang/String;Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;I)Lcom/google/android/apps/plus/fragments/StreamListFragment;
    .registers 12
    .parameter "tag"
    .parameter "info"
    .parameter "minIndex"

    .prologue
    const/4 v2, 0x0

    .line 693
    const-string v0, "v.all.circles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 694
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 695
    .local v6, view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    const v0, 0x7f0700d1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 711
    .local v5, circleId:Ljava/lang/String;
    :goto_13
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object v0, p0

    move-object v4, v2

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/Intents;->getStreamFragmentIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Landroid/content/Intent;

    move-result-object v7

    .line 713
    .local v7, intentFrag:Landroid/content/Intent;
    new-instance v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    const/4 v1, 0x0

    iget v2, p2, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->index:I

    sub-int/2addr v2, p3

    invoke-direct {v0, v7, v1, v2}, Lcom/google/android/apps/plus/fragments/StreamListFragment;-><init>(Landroid/content/Intent;ZI)V

    return-object v0

    .line 697
    .end local v3           #title:Ljava/lang/String;
    .end local v5           #circleId:Ljava/lang/String;
    .end local v6           #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .end local v7           #intentFrag:Landroid/content/Intent;
    :cond_25
    const-string v0, "v.whatshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 698
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 699
    .restart local v6       #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    const v0, 0x7f0700d3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 700
    .restart local v3       #title:Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5       #circleId:Ljava/lang/String;
    goto :goto_13

    .line 701
    .end local v3           #title:Ljava/lang/String;
    .end local v5           #circleId:Ljava/lang/String;
    .end local v6           #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    :cond_38
    const-string v0, "v.nearby"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 702
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 703
    .restart local v6       #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    const v0, 0x7f0700d0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 704
    .restart local v3       #title:Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5       #circleId:Ljava/lang/String;
    goto :goto_13

    .line 706
    .end local v3           #title:Ljava/lang/String;
    .end local v5           #circleId:Ljava/lang/String;
    .end local v6           #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    :cond_4b
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 707
    .restart local v6       #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    iget-object v3, p2, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->title:Ljava/lang/String;

    .line 708
    .restart local v3       #title:Ljava/lang/String;
    move-object v5, p1

    .restart local v5       #circleId:Ljava/lang/String;
    goto :goto_13
.end method

.method private getProgressBarView()Landroid/widget/ProgressBar;
    .registers 3

    .prologue
    .line 670
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_10

    .line 671
    const v0, 0x7f0d0039

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 673
    :goto_f
    return-object v0

    :cond_10
    const v0, 0x7f0d018e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    goto :goto_f
.end method

.method private getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 7
    .parameter "index"

    .prologue
    .line 760
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 761
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;

    .line 762
    .local v3, info:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 763
    .local v0, circleId:Ljava/lang/String;
    iget v4, v3, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->index:I

    if-ne v4, p1, :cond_a

    .line 764
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getViewForLogging(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v4

    .line 767
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;>;"
    .end local v3           #info:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    :goto_2a
    return-object v4

    :cond_2b
    sget-object v4, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_2a
.end method

.method private static getViewForLogging(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2
    .parameter "circleId"

    .prologue
    .line 739
    const-string v0, "v.all.circles"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 740
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->LOOP_CIRCLES:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    .line 750
    :goto_a
    return-object v0

    .line 741
    :cond_b
    const-string v0, "v.whatshot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 742
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->LOOP_WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_a

    .line 743
    :cond_16
    const-string v0, "v.nearby"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 744
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->LOOP_NEARBY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_a

    .line 745
    :cond_21
    const-string v0, "f."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "g."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 748
    :cond_31
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_a

    .line 750
    :cond_34
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_a
.end method

.method private prepareFragments()V
    .registers 21

    .prologue
    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 534
    :cond_8
    :goto_8
    return-void

    .line 456
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v17

    if-nez v17, :cond_43

    .line 457
    const v17, 0x7f0d0185

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 458
    const v17, 0x7f0d0184

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getProgressBarView()Landroid/widget/ProgressBar;

    move-result-object v13

    .line 460
    .local v13, progressBarView:Landroid/widget/ProgressBar;
    if-eqz v13, :cond_8

    .line 461
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_8

    .line 466
    .end local v13           #progressBarView:Landroid/widget/ProgressBar;
    :cond_43
    const v17, 0x7f0d0185

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 467
    const v17, 0x7f0d0184

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mTitles:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_119

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mTitles:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_119

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_119

    .line 473
    const/4 v12, 0x1

    .line 474
    .local v12, noChange:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mTitles:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_c7

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mTitles:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e3

    .line 476
    const/4 v12, 0x0

    .line 487
    :cond_c7
    if-eqz v12, :cond_119

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mSlidingPanel:Lcom/google/android/apps/plus/views/SlidingPanel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mTitles:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/apps/plus/views/SlidingPanel;->setTitles([Ljava/lang/String;)V

    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getCircleIdPreference()Ljava/lang/String;

    move-result-object v15

    .line 491
    .local v15, tagToActivate:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/apps/plus/phone/StreamsActivity;->activateFragment(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 479
    .end local v15           #tagToActivate:Ljava/lang/String;
    :cond_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 480
    .local v14, tag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 481
    .local v16, title:Ljava/lang/String;
    new-instance v11, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;

    move-object/from16 v0, v16

    invoke-direct {v11, v7, v0}, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;-><init>(ILjava/lang/String;)V

    .line 482
    .local v11, info:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 474
    add-int/lit8 v7, v7, 0x1

    goto :goto_9d

    .line 496
    .end local v7           #i:I
    .end local v11           #info:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    .end local v12           #noChange:Z
    .end local v14           #tag:Ljava/lang/String;
    .end local v16           #title:Ljava/lang/String;
    :cond_119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 499
    .local v4, fragMgr:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 501
    .local v6, ft:Landroid/support/v4/app/FragmentTransaction;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/phone/StreamsActivity;->mTitles:[Ljava/lang/String;

    .line 502
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 504
    .local v5, fragmentsToKeep:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/fragments/StreamListFragment;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_19d

    .line 505
    const/4 v9, 0x0

    .line 507
    .local v9, index:I
    :goto_152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 508
    .restart local v14       #tag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 509
    .restart local v16       #title:Ljava/lang/String;
    new-instance v11, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;

    move-object/from16 v0, v16

    invoke-direct {v11, v9, v0}, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;-><init>(ILjava/lang/String;)V

    .line 510
    .restart local v11       #info:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mTitles:[Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9           #index:I
    .local v10, index:I
    aput-object v16, v17, v9

    .line 512
    invoke-virtual {v4, v14}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    .line 513
    .local v3, frag:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    if-eqz v3, :cond_191

    .line 514
    invoke-virtual {v5, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-nez v17, :cond_1fc

    .line 519
    .end local v3           #frag:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    .end local v10           #index:I
    .end local v11           #info:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    .end local v14           #tag:Ljava/lang/String;
    .end local v16           #title:Ljava/lang/String;
    :cond_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragments:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1ab
    :goto_1ab
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1d8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 520
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/fragments/StreamListFragment;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1ab

    .line 521
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->deactivate()V

    .line 522
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/v4/app/Fragment;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1ab

    .line 525
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/fragments/StreamListFragment;>;"
    :cond_1d8
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragments:Ljava/util/HashMap;

    .line 527
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 528
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mSlidingPanel:Lcom/google/android/apps/plus/views/SlidingPanel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mTitles:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/apps/plus/views/SlidingPanel;->setTitles([Ljava/lang/String;)V

    .line 532
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getCircleIdPreference()Ljava/lang/String;

    move-result-object v15

    .line 533
    .restart local v15       #tagToActivate:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/apps/plus/phone/StreamsActivity;->activateFragment(Ljava/lang/String;)V

    goto/16 :goto_8

    .end local v8           #i$:Ljava/util/Iterator;
    .end local v15           #tagToActivate:Ljava/lang/String;
    .restart local v3       #frag:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    .restart local v10       #index:I
    .restart local v11       #info:Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;
    .restart local v14       #tag:Ljava/lang/String;
    .restart local v16       #title:Ljava/lang/String;
    :cond_1fc
    move v9, v10

    .end local v10           #index:I
    .restart local v9       #index:I
    goto/16 :goto_152
.end method

.method private recordPanelChanged(II)V
    .registers 7
    .parameter "oldIndex"
    .parameter "newIndex"

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 723
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_12

    .line 724
    move-object v1, p0

    .line 725
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v3

    .line 726
    .local v3, startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v2

    .line 727
    .local v2, endView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-static {v1, v0, v3, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordTabNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 729
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #endView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .end local v3           #startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    :cond_12
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 4

    .prologue
    .line 794
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mSlidingPanel:Lcom/google/android/apps/plus/views/SlidingPanel;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/SlidingPanel;->hasPanels()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 795
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mSlidingPanel:Lcom/google/android/apps/plus/views/SlidingPanel;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/SlidingPanel;->getSelectedPanel()I

    move-result v1

    .line 796
    .local v1, selectedPanel:I
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v2

    .line 801
    .end local v1           #selectedPanel:I
    :goto_12
    return-object v2

    .line 800
    :cond_13
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getCircleIdPreference()Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, circleId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getViewForLogging(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v2

    goto :goto_12
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    .prologue
    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    .line 237
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->invalidateOptionsMenu()V

    .line 241
    :goto_9
    return-void

    .line 239
    :cond_a
    const v0, 0x7f100021

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->createTitlebarButtons(I)V

    goto :goto_9
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 810
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter "fragment"

    .prologue
    .line 158
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 159
    check-cast v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    .line 160
    .local v0, streamListFragment:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragments:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .end local v0           #streamListFragment:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    :cond_10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const v11, 0x7f07005e

    const/4 v10, 0x1

    .line 99
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v4, Lcom/google/android/apps/plus/phone/StreamsActivity$1;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/phone/StreamsActivity$1;-><init>(Lcom/google/android/apps/plus/phone/StreamsActivity;)V

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 111
    if-eqz p1, :cond_24

    .line 112
    const-string v4, "com.google.android.apps.plus.phone.StreamsActivity.STATE_TITLES_ID"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mTitles:[Ljava/lang/String;

    .line 115
    :cond_24
    const v4, 0x7f0300a3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/StreamsActivity;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 120
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "account"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 121
    const-string v4, "user_id"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    const-string v4, "user_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 123
    .local v3, userId:Ljava/lang/Long;
    :goto_4c
    const-string v4, "display_name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, displayName:Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v4, v6, :cond_7c

    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 128
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 129
    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setTitle(I)V

    .line 147
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_62
    const v4, 0x7f0d0184

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/StreamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/SlidingPanel;

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mSlidingPanel:Lcom/google/android/apps/plus/views/SlidingPanel;

    .line 148
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mSlidingPanel:Lcom/google/android/apps/plus/views/SlidingPanel;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/plus/views/SlidingPanel;->setOnPanelSelectedListener(Lcom/google/android/apps/plus/views/SlidingPanel$OnPanelSelectedListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v10, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 151
    return-void

    .end local v1           #displayName:Ljava/lang/String;
    .end local v3           #userId:Ljava/lang/Long;
    :cond_7a
    move-object v3, v5

    .line 121
    goto :goto_4c

    .line 132
    .restart local v1       #displayName:Ljava/lang/String;
    .restart local v3       #userId:Ljava/lang/Long;
    :cond_7c
    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/phone/StreamsActivity;->showTitlebar(Z)V

    .line 135
    if-eqz v3, :cond_8f

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_a0

    .line 137
    :cond_8f
    const v4, 0x7f0200a3

    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/google/android/apps/plus/phone/StreamsActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 144
    :goto_99
    const v4, 0x7f100021

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/StreamsActivity;->createTitlebarButtons(I)V

    goto :goto_62

    .line 140
    :cond_a0
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->setTitlebarTitle(ILjava/lang/String;)V

    goto :goto_99
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    packed-switch p1, :pswitch_data_12

    .line 399
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 394
    :pswitch_5
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/apps/plus/phone/StreamsActivity$CirclesQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/apps/plus/fragments/CircleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)V

    goto :goto_4

    .line 392
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100021

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 249
    const v1, 0x7f0d01b8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 250
    .local v0, spinner:Landroid/view/MenuItem;
    if-eqz v0, :cond_23

    .line 251
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->attachProgressBarToActiveFragment(Landroid/widget/ProgressBar;)V

    .line 254
    :cond_23
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 775
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onDestroy()V

    .line 776
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 777
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 779
    :cond_c
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mCirclesCursor:Landroid/database/Cursor;

    .line 411
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    .line 439
    :goto_9
    return-void

    .line 413
    :pswitch_a
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 414
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/apps/plus/phone/StreamsActivity$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/apps/plus/phone/StreamsActivity$2;-><init>(Lcom/google/android/apps/plus/phone/StreamsActivity;Landroid/database/Cursor;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    .line 411
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/StreamsActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 290
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_86

    .line 348
    const/4 v2, 0x0

    :goto_9
    return v2

    .line 292
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->finish()V

    move v2, v3

    .line 293
    goto :goto_9

    .line 297
    :sswitch_f
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mActiveFragmentTag:Ljava/lang/String;

    if-eqz v2, :cond_24

    .line 298
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mActiveFragmentTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    .line 301
    .local v0, frag:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    if-eqz v0, :cond_24

    .line 302
    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->refresh()V

    .end local v0           #frag:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    :cond_24
    move v2, v3

    .line 305
    goto :goto_9

    .line 309
    :sswitch_26
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->LOOP_CHECKIN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/StreamsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 310
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v2}, Lcom/google/android/apps/plus/phone/Intents;->getCheckinActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/StreamsActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 311
    goto :goto_9

    .line 315
    :sswitch_36
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v4

    invoke-static {p0, v2, v4, v5}, Lcom/google/android/apps/plus/phone/Intents;->getSelectCirclesActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/StreamsActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 317
    goto :goto_9

    .line 321
    :sswitch_47
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->LOOP_POST:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/StreamsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 322
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    check-cast v2, Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {p0, v4, v2}, Lcom/google/android/apps/plus/phone/Intents;->getPostActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/StreamsActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 323
    goto :goto_9

    .line 327
    :sswitch_5a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->onSearchRequested()Z

    move-result v2

    goto :goto_9

    .line 331
    :sswitch_5f
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v2}, Lcom/google/android/apps/plus/phone/Intents;->getSettingsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    .line 332
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 333
    goto :goto_9

    .line 337
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_6a
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_FEEDBACK:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/StreamsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 338
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V

    move v2, v3

    .line 339
    goto :goto_9

    .line 343
    :sswitch_74
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "plus_stream"

    invoke-static {p0, v5}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/StreamsActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 345
    goto :goto_9

    .line 290
    :sswitch_data_86
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0d01b3 -> :sswitch_5a
        0x7f0d01b4 -> :sswitch_f
        0x7f0d01b5 -> :sswitch_5f
        0x7f0d01b6 -> :sswitch_6a
        0x7f0d01b7 -> :sswitch_74
        0x7f0d01db -> :sswitch_47
        0x7f0d01f4 -> :sswitch_26
        0x7f0d01f5 -> :sswitch_36
    .end sparse-switch
.end method

.method public onPanelSelected(II)V
    .registers 10
    .parameter "previous"
    .parameter "index"

    .prologue
    .line 366
    const/4 v4, 0x0

    .line 367
    .local v4, tagToActivate:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 368
    .local v2, fragMgr:Landroid/support/v4/app/FragmentManager;
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mFragmentInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 369
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;

    iget v5, v5, Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;->index:I

    if-ne v5, p2, :cond_2b

    .line 370
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #tagToActivate:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 373
    .restart local v4       #tagToActivate:Ljava/lang/String;
    :cond_2b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mActiveFragmentTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 374
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mActiveFragmentTag:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/StreamListFragment;

    .line 376
    .local v1, frag:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    if-eqz v1, :cond_f

    .line 377
    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->deactivate()V

    goto :goto_f

    .line 382
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/plus/phone/StreamsActivity$FragmentInfo;>;"
    .end local v1           #frag:Lcom/google/android/apps/plus/fragments/StreamListFragment;
    :cond_47
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/phone/StreamsActivity;->activateFragment(Ljava/lang/String;)V

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/StreamsActivity;->recordPanelChanged(II)V

    .line 385
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mIsPaused:Z

    .line 207
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const v4, 0x7f0d01b4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 262
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1d

    .line 263
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    const v2, 0x7f0d01db

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 269
    :goto_1c
    return v1

    .line 266
    :cond_1d
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mLoading:Z

    if-nez v3, :cond_26

    move v0, v1

    :cond_26
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1c
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 277
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_13

    .line 278
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 281
    :cond_13
    const v3, 0x7f0d01b4

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mLoading:Z

    if-nez v4, :cond_1f

    move v1, v2

    :cond_1f
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 282
    const v1, 0x7f0d01db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 283
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 190
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mIsPaused:Z

    .line 191
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mNeedToRestartLoaders:Z

    if-eqz v0, :cond_1b

    .line 192
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mNeedToRestartLoaders:Z

    .line 193
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 198
    :cond_1b
    :goto_1b
    return-void

    .line 196
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->finish()V

    goto :goto_1b
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mTitles:[Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 217
    const-string v0, "com.google.android.apps.plus.phone.StreamsActivity.STATE_TITLES_ID"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mTitles:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 219
    :cond_e
    return-void
.end method

.method public onSearchRequested()Z
    .registers 4

    .prologue
    .line 818
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 819
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->startActivity(Landroid/content/Intent;)V

    .line 820
    const/4 v1, 0x1

    return v1
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStart()V

    .line 170
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPostsData;->setSyncEnabled(Z)V

    .line 171
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStart()V

    .line 179
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPostsData;->setSyncEnabled(Z)V

    .line 180
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->finish()V

    .line 359
    return-void
.end method

.method public setLoading(Z)V
    .registers 3
    .parameter "loading"

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mLoading:Z

    if-eq v0, p1, :cond_9

    .line 226
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity;->mLoading:Z

    .line 227
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->invalidateOptionsMenu()V

    .line 229
    :cond_9
    return-void
.end method
