.class public Lcom/android/calendar/ChooserActivity;
.super Landroid/app/Activity;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ChooserActivity$ResolveListAdapter;,
        Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

.field protected mAlert:Lcom/android/internal/app/AlertController;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private mAlwaysCheck:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mEmails:[Ljava/lang/String;

.field private mEventID:J

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/ChooserActivity;->mEmails:[Ljava/lang/String;

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/ChooserActivity;->mEventID:J

    .line 681
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/ChooserActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/ChooserActivity;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/ChooserActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mEmails:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->finish()V

    .line 1131
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1143
    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->finish()V

    .line 1147
    :cond_9
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1099
    :goto_4
    return-void

    .line 1089
    :cond_5
    if-eqz p2, :cond_e

    .line 1091
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1095
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 29
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v21

    .line 451
    .local v21, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v14

    .line 455
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    if-eqz v23, :cond_18f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v23

    if-eqz v23, :cond_18f

    .line 459
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 463
    .local v11, filter:Landroid/content/IntentFilter;
    if-eqz v14, :cond_46

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_46

    .line 465
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    :cond_46
    const/4 v8, 0x0

    .line 471
    .local v8, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v14, :cond_4d

    .line 473
    invoke-virtual {v14}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 475
    :cond_4d
    if-eqz v8, :cond_63

    .line 477
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_53
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_63

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 479
    .local v7, cat:Ljava/lang/String;
    invoke-virtual {v11, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_53

    .line 485
    .end local v7           #cat:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_63
    const-string v23, "android.intent.category.DEFAULT"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 489
    const/4 v7, 0x0

    .line 491
    .local v7, cat:I
    if-eqz v21, :cond_77

    .line 493
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v23, v0

    const/high16 v24, 0xfff

    and-int v7, v23, v24

    .line 497
    :cond_77
    const/4 v9, 0x0

    .line 499
    .local v9, data:Landroid/net/Uri;
    if-eqz v14, :cond_7e

    .line 501
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 503
    :cond_7e
    const/high16 v23, 0x60

    move/from16 v0, v23

    if-ne v7, v0, :cond_f5

    .line 507
    const/4 v15, 0x0

    .line 509
    .local v15, mimeType:Ljava/lang/String;
    if-eqz v14, :cond_8d

    .line 511
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 513
    :cond_8d
    if-eqz v15, :cond_92

    .line 517
    :try_start_8f
    invoke-virtual {v11, v15}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_92
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_8f .. :try_end_92} :catch_f2

    .line 595
    .end local v15           #mimeType:Ljava/lang/String;
    :cond_92
    :goto_92
    if-eqz v11, :cond_18f

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->access$000(Lcom/android/calendar/ChooserActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    .line 599
    .local v3, N:I
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object/from16 v22, v0

    .line 601
    .local v22, set:[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 603
    .local v6, bestMatch:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_a8
    if-ge v12, v3, :cond_17c

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->access$000(Lcom/android/calendar/ChooserActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    .line 607
    .local v20, r:Landroid/content/pm/ResolveInfo;
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v23, v22, v12

    .line 609
    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v0, v6, :cond_ef

    .line 611
    move-object/from16 v0, v20

    iget v6, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 603
    :cond_ef
    add-int/lit8 v12, v12, 0x1

    goto :goto_a8

    .line 519
    .end local v3           #N:I
    .end local v6           #bestMatch:I
    .end local v12           #i:I
    .end local v20           #r:Landroid/content/pm/ResolveInfo;
    .end local v22           #set:[Landroid/content/ComponentName;
    .restart local v15       #mimeType:Ljava/lang/String;
    :catch_f2
    move-exception v10

    .line 521
    .local v10, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const/4 v11, 0x0

    goto :goto_92

    .line 527
    .end local v10           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v15           #mimeType:Ljava/lang/String;
    :cond_f5
    if-eqz v9, :cond_92

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_92

    .line 529
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 537
    const/4 v5, 0x0

    .line 539
    .local v5, aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v21, :cond_113

    .line 541
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 543
    :cond_113
    if-eqz v5, :cond_13c

    .line 545
    :cond_115
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13c

    .line 547
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 549
    .local v4, a:Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v23

    if-ltz v23, :cond_115

    .line 551
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v19

    .line 553
    .local v19, port:I
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v24

    if-ltz v19, :cond_179

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    :goto_135
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .end local v4           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v19           #port:I
    :cond_13c
    const/16 v17, 0x0

    .line 567
    .local v17, pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v21, :cond_14a

    .line 569
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v17

    .line 571
    :cond_14a
    if-eqz v17, :cond_92

    .line 573
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 575
    .local v18, path:Ljava/lang/String;
    :cond_150
    if-eqz v18, :cond_92

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_92

    .line 577
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PatternMatcher;

    .line 579
    .local v16, p:Landroid/os/PatternMatcher;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_150

    .line 581
    invoke-virtual/range {v16 .. v16}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Landroid/os/PatternMatcher;->getType()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_92

    .line 553
    .end local v16           #p:Landroid/os/PatternMatcher;
    .end local v17           #pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v18           #path:Ljava/lang/String;
    .restart local v4       #a:Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v19       #port:I
    :cond_179
    const/16 v23, 0x0

    goto :goto_135

    .line 617
    .end local v4           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v5           #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v19           #port:I
    .restart local v3       #N:I
    .restart local v6       #bestMatch:I
    .restart local v12       #i:I
    .restart local v22       #set:[Landroid/content/ComponentName;
    :cond_17c
    if-eqz v14, :cond_18f

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v11, v6, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 629
    .end local v3           #N:I
    .end local v6           #bestMatch:I
    .end local v7           #cat:I
    .end local v8           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #data:Landroid/net/Uri;
    .end local v11           #filter:Landroid/content/IntentFilter;
    .end local v12           #i:I
    .end local v22           #set:[Landroid/content/ComponentName;
    :cond_18f
    if-eqz v14, :cond_196

    .line 631
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/calendar/ChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 635
    :cond_196
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ChooserActivity;->finish()V

    .line 637
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 213
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    .line 217
    .local v7, targetParcelable:Landroid/os/Parcelable;
    instance-of v0, v7, Landroid/content/Intent;

    if-nez v0, :cond_12

    .line 219
    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->finish()V

    .line 269
    :goto_11
    return-void

    :cond_12
    move-object v2, v7

    .line 225
    check-cast v2, Landroid/content/Intent;

    .line 227
    .local v2, target:Landroid/content/Intent;
    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ChooserActivity;->mEmails:[Ljava/lang/String;

    .line 229
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 231
    .local v3, title:Ljava/lang/CharSequence;
    if-nez v3, :cond_30

    .line 235
    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 243
    :cond_30
    const/4 v4, 0x0

    .line 267
    .local v4, initialIntents:[Landroid/content/Intent;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/ChooserActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Z)V

    goto :goto_11
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Z)V
    .registers 10
    .parameter "savedInstanceState"
    .parameter "intent"
    .parameter "title"
    .parameter "initialIntents"
    .parameter "alwaysUseOption"

    .prologue
    const/4 v3, 0x1

    .line 291
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 293
    new-instance v1, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAlert:Lcom/android/internal/app/AlertController;

    .line 295
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 299
    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 301
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 305
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 309
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 311
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 313
    new-instance v1, Lcom/android/calendar/ChooserActivity$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/ChooserActivity$1;-><init>(Lcom/android/calendar/ChooserActivity;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 323
    const v1, 0x7f0a0087

    invoke-virtual {p0, v1}, Lcom/android/calendar/ChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 351
    new-instance v1, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    invoke-direct {v1, p0, p0, p2, p4}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;-><init>(Lcom/android/calendar/ChooserActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    .line 353
    iget-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->getCount()I

    move-result v1

    if-le v1, v3, :cond_56

    .line 355
    iget-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 373
    :goto_49
    iget-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/android/calendar/ChooserActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 375
    iget-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 377
    :goto_55
    return-void

    .line 357
    :cond_56
    iget-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_6c

    .line 359
    iget-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/ChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->finish()V

    goto :goto_55

    .line 367
    :cond_6c
    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104045d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_49
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1107
    const/4 v0, 0x1

    .line 1109
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1119
    const/4 v0, 0x1

    .line 1121
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onResume()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v4, 0x0

    .line 385
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 389
    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 391
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    .line 393
    .local v11, targetParcelable:Landroid/os/Parcelable;
    instance-of v0, v11, Landroid/content/Intent;

    if-nez v0, :cond_14

    .line 443
    :cond_13
    :goto_13
    return-void

    :cond_14
    move-object v10, v11

    .line 401
    check-cast v10, Landroid/content/Intent;

    .line 403
    .local v10, target:Landroid/content/Intent;
    const-string v0, "_id"

    const-wide/16 v1, -0x1

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/ChooserActivity;->mEventID:J

    .line 407
    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v14, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "title"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, p0, Lcom/android/calendar/ChooserActivity;->mEventID:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 409
    .local v9, mCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v14, :cond_56

    .line 415
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 417
    const/4 v9, 0x0

    .line 419
    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->finish()V

    goto :goto_13

    .line 427
    :cond_56
    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 431
    new-instance v6, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    invoke-direct {v6, p0, p0, v10, v4}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;-><init>(Lcom/android/calendar/ChooserActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;)V

    .line 433
    .local v6, adapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 435
    .local v8, lv:Landroid/widget/ListView;
    if-eqz v8, :cond_13

    .line 437
    iput-object v6, p0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    .line 439
    invoke-virtual {v8, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_13
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method
