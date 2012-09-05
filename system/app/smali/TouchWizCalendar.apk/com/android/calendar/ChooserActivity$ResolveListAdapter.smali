.class final Lcom/android/calendar/ChooserActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ChooserActivity;
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
            "Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/calendar/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/ChooserActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;)V
    .registers 19
    .parameter
    .parameter "context"
    .parameter "intent"
    .parameter "initialIntents"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->this$0:Lcom/android/calendar/ChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 697
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 699
    iget-object v1, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 701
    const-string v1, "layout_inflater"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 705
    #getter for: Lcom/android/calendar/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/calendar/ChooserActivity;->access$200(Lcom/android/calendar/ChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v13, 0x1

    #getter for: Lcom/android/calendar/ChooserActivity;->mAlwaysCheck:Landroid/widget/CheckBox;
    invoke-static {p1}, Lcom/android/calendar/ChooserActivity;->access$100(Lcom/android/calendar/ChooserActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_56

    const/16 v1, 0x40

    :goto_2e
    or-int/2addr v1, v13

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 713
    .local v10, rListTemp:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v2, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_86

    .line 719
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 727
    .local v11, ri:Landroid/content/pm/ResolveInfo;
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.google.android.gm.ComposeActivityGmail"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 717
    :cond_53
    :goto_53
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 705
    .end local v2           #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #i:I
    .end local v10           #rListTemp:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :cond_56
    const/4 v1, 0x0

    goto :goto_2e

    .line 739
    .restart local v2       #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8       #i:I
    .restart local v10       #rListTemp:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11       #ri:Landroid/content/pm/ResolveInfo;
    :cond_58
    #getter for: Lcom/android/calendar/ChooserActivity;->mEmails:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/calendar/ChooserActivity;->access$300(Lcom/android/calendar/ChooserActivity;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_82

    const-string v1, "com.android.mms.ui.ComposeMessageActivity"

    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

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

    .line 755
    :cond_82
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 763
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :cond_86
    if-eqz v2, :cond_111

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    .local v7, N:I
    if-lez v7, :cond_111

    .line 769
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 771
    .local v5, r0:Landroid/content/pm/ResolveInfo;
    const/4 v8, 0x1

    :goto_96
    if-ge v8, v7, :cond_b5

    .line 773
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 775
    .restart local v11       #ri:Landroid/content/pm/ResolveInfo;
    iget v1, v5, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v11, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v1, v4, :cond_aa

    iget-boolean v1, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v4, v11, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v4, :cond_b2

    .line 777
    :cond_aa
    :goto_aa
    if-ge v8, v7, :cond_b2

    .line 779
    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 781
    add-int/lit8 v7, v7, -0x1

    goto :goto_aa

    .line 771
    :cond_b2
    add-int/lit8 v8, v8, 0x1

    goto :goto_96

    .line 789
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :cond_b5
    const/4 v1, 0x1

    if-le v7, v1, :cond_c4

    .line 791
    new-instance v9, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    #getter for: Lcom/android/calendar/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/calendar/ChooserActivity;->access$200(Lcom/android/calendar/ChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 795
    .local v9, rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    invoke-static {v2, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 801
    .end local v9           #rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_c4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 811
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #r0:Landroid/content/pm/ResolveInfo;
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 813
    .restart local v5       #r0:Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 815
    .local v3, start:I
    #getter for: Lcom/android/calendar/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/calendar/ChooserActivity;->access$200(Lcom/android/calendar/ChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 817
    .local v6, r0Label:Ljava/lang/CharSequence;
    const/4 v8, 0x1

    :goto_dc
    if-ge v8, v7, :cond_10b

    .line 819
    if-nez v6, :cond_e4

    .line 821
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 825
    :cond_e4
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 827
    .restart local v11       #ri:Landroid/content/pm/ResolveInfo;
    #getter for: Lcom/android/calendar/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/calendar/ChooserActivity;->access$200(Lcom/android/calendar/ChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 829
    .local v12, riLabel:Ljava/lang/CharSequence;
    if-nez v12, :cond_f8

    .line 831
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 835
    :cond_f8
    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 817
    :goto_fe
    add-int/lit8 v8, v8, 0x1

    goto :goto_dc

    .line 841
    :cond_101
    add-int/lit8 v4, v8, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 843
    move-object v5, v11

    .line 845
    move-object v6, v12

    .line 847
    move v3, v8

    goto :goto_fe

    .line 853
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    .end local v12           #riLabel:Ljava/lang/CharSequence;
    :cond_10b
    add-int/lit8 v4, v7, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 857
    .end local v3           #start:I
    .end local v5           #r0:Landroid/content/pm/ResolveInfo;
    .end local v6           #r0Label:Ljava/lang/CharSequence;
    .end local v7           #N:I
    :cond_111
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/ChooserActivity$ResolveListAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;)V
    .registers 8
    .parameter "view"
    .parameter "info"

    .prologue
    .line 1047
    const v3, 0x7f0f00bd

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1049
    .local v1, text:Landroid/widget/TextView;
    const v3, 0x7f0f00be

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1051
    .local v2, text2:Landroid/widget/TextView;
    const v3, 0x7f0f00c6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1053
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v3, p2, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    if-eqz v3, :cond_45

    .line 1057
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1059
    iget-object v3, p2, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    :goto_2d
    iget-object v3, p2, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3f

    .line 1069
    iget-object v3, p2, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->this$0:Lcom/android/calendar/ChooserActivity;

    #getter for: Lcom/android/calendar/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/calendar/ChooserActivity;->access$200(Lcom/android/calendar/ChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p2, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1073
    :cond_3f
    iget-object v3, p2, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1075
    return-void

    .line 1063
    :cond_45
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2d
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
    .line 867
    .local p1, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 869
    .local v12, num:I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1e

    .line 873
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->this$0:Lcom/android/calendar/ChooserActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;-><init>(Lcom/android/calendar/ChooserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    :cond_1d
    return-void

    .line 877
    :cond_1e
    const/4 v14, 0x0

    .line 879
    .local v14, usePkg:Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->this$0:Lcom/android/calendar/ChooserActivity;

    #getter for: Lcom/android/calendar/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/calendar/ChooserActivity;->access$200(Lcom/android/calendar/ChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 881
    .local v13, startApp:Ljava/lang/CharSequence;
    if-nez v13, :cond_34

    .line 883
    const/4 v14, 0x1

    .line 887
    :cond_34
    if-nez v14, :cond_68

    .line 891
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 893
    .local v7, duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 895
    add-int/lit8 v8, p2, 0x1

    .local v8, j:I
    :goto_40
    move/from16 v0, p3

    if-gt v8, v0, :cond_65

    .line 897
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 899
    .local v10, jRi:Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->this$0:Lcom/android/calendar/ChooserActivity;

    #getter for: Lcom/android/calendar/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/calendar/ChooserActivity;->access$200(Lcom/android/calendar/ChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 901
    .local v9, jApp:Ljava/lang/CharSequence;
    if-eqz v9, :cond_64

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 903
    :cond_64
    const/4 v14, 0x1

    .line 917
    .end local v9           #jApp:Ljava/lang/CharSequence;
    .end local v10           #jRi:Landroid/content/pm/ResolveInfo;
    :cond_65
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 921
    .end local v7           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8           #j:I
    :cond_68
    move/from16 v11, p2

    .local v11, k:I
    :goto_6a
    move/from16 v0, p3

    if-gt v11, v0, :cond_1d

    .line 923
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 925
    .local v3, add:Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_98

    .line 931
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->this$0:Lcom/android/calendar/ChooserActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;-><init>(Lcom/android/calendar/ChooserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    :goto_8f
    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    .line 909
    .end local v3           #add:Landroid/content/pm/ResolveInfo;
    .end local v11           #k:I
    .restart local v7       #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8       #j:I
    .restart local v9       #jApp:Ljava/lang/CharSequence;
    .restart local v10       #jRi:Landroid/content/pm/ResolveInfo;
    :cond_92
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 895
    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    .line 939
    .end local v7           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8           #j:I
    .end local v9           #jApp:Ljava/lang/CharSequence;
    .end local v10           #jRi:Landroid/content/pm/ResolveInfo;
    .restart local v3       #add:Landroid/content/pm/ResolveInfo;
    .restart local v11       #k:I
    :cond_98
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->this$0:Lcom/android/calendar/ChooserActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->this$0:Lcom/android/calendar/ChooserActivity;

    #getter for: Lcom/android/calendar/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/calendar/ChooserActivity;->access$200(Lcom/android/calendar/ChooserActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;-><init>(Lcom/android/calendar/ChooserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

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
    .line 1009
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 1017
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1027
    if-nez p2, :cond_18

    .line 1029
    iget-object v1, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03002b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1037
    .local v0, view:Landroid/view/View;
    :goto_c
    iget-object v1, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;)V

    .line 1039
    return-object v0

    .line 1033
    .end local v0           #view:Landroid/view/View;
    :cond_18
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_c
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .registers 8
    .parameter "position"

    .prologue
    .line 971
    iget-object v3, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v3, :cond_6

    .line 973
    const/4 v2, 0x0

    .line 993
    :goto_5
    return-object v2

    .line 979
    :cond_6
    iget-object v3, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;

    .line 983
    .local v1, dri:Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_31

    iget-object v3, v1, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_16
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 985
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x300

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 989
    iget-object v3, v1, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 991
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_5

    .line 983
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_31
    iget-object v3, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_16
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .registers 3
    .parameter "position"

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 957
    const/4 v0, 0x0

    .line 963
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_5
.end method
