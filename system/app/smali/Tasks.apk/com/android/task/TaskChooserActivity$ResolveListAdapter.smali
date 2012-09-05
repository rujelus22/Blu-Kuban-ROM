.class final Lcom/android/task/TaskChooserActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TaskChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIntent:Landroid/content/Intent;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/task/TaskChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/task/TaskChooserActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;)V
    .registers 19
    .parameter
    .parameter "context"
    .parameter "intent"
    .parameter "initialIntents"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->this$0:Lcom/android/task/TaskChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 271
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 273
    const-string v1, "layout_inflater"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 275
    #getter for: Lcom/android/task/TaskChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/task/TaskChooserActivity;->access$200(Lcom/android/task/TaskChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v13, 0x1

    #getter for: Lcom/android/task/TaskChooserActivity;->mAlwaysCheck:Landroid/widget/CheckBox;
    invoke-static {p1}, Lcom/android/task/TaskChooserActivity;->access$100(Lcom/android/task/TaskChooserActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_56

    const/16 v1, 0x40

    :goto_2e
    or-int/2addr v1, v13

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 278
    .local v10, rListTemp:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v2, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_92

    .line 281
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 284
    .local v11, ri:Landroid/content/pm/ResolveInfo;
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 280
    :cond_53
    :goto_53
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 275
    .end local v2           #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #i:I
    .end local v10           #rListTemp:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :cond_56
    const/4 v1, 0x0

    goto :goto_2e

    .line 292
    .restart local v2       #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8       #i:I
    .restart local v10       #rListTemp:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11       #ri:Landroid/content/pm/ResolveInfo;
    :cond_58
    const-string v1, "com.google.android.gm.ComposeActivityGmail"

    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 298
    #getter for: Lcom/android/task/TaskChooserActivity;->mEmails:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/task/TaskChooserActivity;->access$300(Lcom/android/task/TaskChooserActivity;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8e

    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.android.bluetooth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.broadcom.bt"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 305
    :cond_8e
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 309
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :cond_92
    if-eqz v2, :cond_129

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    .local v7, N:I
    if-lez v7, :cond_129

    .line 312
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 313
    .local v5, r0:Landroid/content/pm/ResolveInfo;
    const/4 v8, 0x1

    :goto_a2
    if-ge v8, v7, :cond_c1

    .line 314
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 315
    .restart local v11       #ri:Landroid/content/pm/ResolveInfo;
    iget v1, v5, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v11, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v1, v4, :cond_b6

    iget-boolean v1, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v4, v11, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v4, :cond_be

    .line 316
    :cond_b6
    :goto_b6
    if-ge v8, v7, :cond_be

    .line 317
    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 318
    add-int/lit8 v7, v7, -0x1

    goto :goto_b6

    .line 313
    :cond_be
    add-int/lit8 v8, v8, 0x1

    goto :goto_a2

    .line 322
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :cond_c1
    const/4 v1, 0x1

    if-le v7, v1, :cond_d0

    .line 323
    new-instance v9, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    #getter for: Lcom/android/task/TaskChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/task/TaskChooserActivity;->access$200(Lcom/android/task/TaskChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 324
    .local v9, rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    invoke-static {v2, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 328
    .end local v9           #rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_d0
    iget-object v1, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v1, :cond_dc

    .line 329
    iget-object v1, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 330
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 333
    :cond_dc
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 338
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #r0:Landroid/content/pm/ResolveInfo;
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 339
    .restart local v5       #r0:Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 340
    .local v3, start:I
    #getter for: Lcom/android/task/TaskChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/task/TaskChooserActivity;->access$200(Lcom/android/task/TaskChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 341
    .local v6, r0Label:Ljava/lang/CharSequence;
    const/4 v8, 0x1

    :goto_f4
    if-ge v8, v7, :cond_123

    .line 342
    if-nez v6, :cond_fc

    .line 343
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 345
    :cond_fc
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 346
    .restart local v11       #ri:Landroid/content/pm/ResolveInfo;
    #getter for: Lcom/android/task/TaskChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/task/TaskChooserActivity;->access$200(Lcom/android/task/TaskChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 347
    .local v12, riLabel:Ljava/lang/CharSequence;
    if-nez v12, :cond_110

    .line 348
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 350
    :cond_110
    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    .line 341
    :goto_116
    add-int/lit8 v8, v8, 0x1

    goto :goto_f4

    .line 353
    :cond_119
    add-int/lit8 v4, v8, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 354
    move-object v5, v11

    .line 355
    move-object v6, v12

    .line 356
    move v3, v8

    goto :goto_116

    .line 359
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    .end local v12           #riLabel:Ljava/lang/CharSequence;
    :cond_123
    add-int/lit8 v4, v7, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 361
    .end local v3           #start:I
    .end local v5           #r0:Landroid/content/pm/ResolveInfo;
    .end local v6           #r0Label:Ljava/lang/CharSequence;
    .end local v7           #N:I
    :cond_129
    return-void
.end method

.method static synthetic access$000(Lcom/android/task/TaskChooserActivity$ResolveListAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;)V
    .registers 8
    .parameter "view"
    .parameter "info"

    .prologue
    .line 453
    const v3, 0x7f0c0001

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 454
    .local v1, text:Landroid/widget/TextView;
    const v3, 0x7f0c0002

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 455
    .local v2, text2:Landroid/widget/TextView;
    const/high16 v3, 0x7f0c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 456
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v3, p2, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    if-eqz v3, :cond_44

    .line 458
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v3, p2, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    :goto_2c
    iget-object v3, p2, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3e

    .line 464
    iget-object v3, p2, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->this$0:Lcom/android/task/TaskChooserActivity;

    #getter for: Lcom/android/task/TaskChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/task/TaskChooserActivity;->access$200(Lcom/android/task/TaskChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p2, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 466
    :cond_3e
    iget-object v3, p2, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    return-void

    .line 461
    :cond_44
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .registers 22
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter "ro"
    .parameter "roLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 366
    .local v12, num:I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1e

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->this$0:Lcom/android/task/TaskChooserActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;-><init>(Lcom/android/task/TaskChooserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_1d
    return-void

    .line 370
    :cond_1e
    const/4 v14, 0x0

    .line 371
    .local v14, usePkg:Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->this$0:Lcom/android/task/TaskChooserActivity;

    #getter for: Lcom/android/task/TaskChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/task/TaskChooserActivity;->access$200(Lcom/android/task/TaskChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 372
    .local v13, startApp:Ljava/lang/CharSequence;
    if-nez v13, :cond_34

    .line 373
    const/4 v14, 0x1

    .line 375
    :cond_34
    if-nez v14, :cond_68

    .line 377
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 378
    .local v7, duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v8, p2, 0x1

    .local v8, j:I
    :goto_40
    move/from16 v0, p3

    if-gt v8, v0, :cond_65

    .line 380
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 381
    .local v10, jRi:Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->this$0:Lcom/android/task/TaskChooserActivity;

    #getter for: Lcom/android/task/TaskChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/task/TaskChooserActivity;->access$200(Lcom/android/task/TaskChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 382
    .local v9, jApp:Ljava/lang/CharSequence;
    if-eqz v9, :cond_64

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 383
    :cond_64
    const/4 v14, 0x1

    .line 390
    .end local v9           #jApp:Ljava/lang/CharSequence;
    .end local v10           #jRi:Landroid/content/pm/ResolveInfo;
    :cond_65
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 392
    .end local v7           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8           #j:I
    :cond_68
    move/from16 v11, p2

    .local v11, k:I
    :goto_6a
    move/from16 v0, p3

    if-gt v11, v0, :cond_1d

    .line 393
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 394
    .local v3, add:Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_98

    .line 397
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->this$0:Lcom/android/task/TaskChooserActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;-><init>(Lcom/android/task/TaskChooserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :goto_8f
    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    .line 386
    .end local v3           #add:Landroid/content/pm/ResolveInfo;
    .end local v11           #k:I
    .restart local v7       #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8       #j:I
    .restart local v9       #jApp:Ljava/lang/CharSequence;
    .restart local v10       #jRi:Landroid/content/pm/ResolveInfo;
    :cond_92
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    .line 400
    .end local v7           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8           #j:I
    .end local v9           #jApp:Ljava/lang/CharSequence;
    .end local v10           #jRi:Landroid/content/pm/ResolveInfo;
    .restart local v3       #add:Landroid/content/pm/ResolveInfo;
    .restart local v11       #k:I
    :cond_98
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->this$0:Lcom/android/task/TaskChooserActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->this$0:Lcom/android/task/TaskChooserActivity;

    #getter for: Lcom/android/task/TaskChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/task/TaskChooserActivity;->access$200(Lcom/android/task/TaskChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;-><init>(Lcom/android/task/TaskChooserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 438
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 443
    if-nez p2, :cond_17

    .line 444
    iget-object v1, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 448
    .local v0, view:Landroid/view/View;
    :goto_b
    iget-object v1, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;)V

    .line 449
    return-object v0

    .line 446
    .end local v0           #view:Landroid/view/View;
    :cond_17
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_b
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .registers 8
    .parameter "position"

    .prologue
    .line 416
    iget-object v3, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v3, :cond_6

    .line 417
    const/4 v2, 0x0

    .line 426
    :goto_5
    return-object v2

    .line 420
    :cond_6
    iget-object v3, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;

    .line 422
    .local v1, dri:Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_31

    iget-object v3, v1, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_16
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 423
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x300

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 424
    iget-object v3, v1, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 425
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_5

    .line 422
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_31
    iget-object v3, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_16
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .registers 3
    .parameter "position"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 409
    const/4 v0, 0x0

    .line 412
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/task/TaskChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;

    iget-object v0, v0, Lcom/android/task/TaskChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_5
.end method
