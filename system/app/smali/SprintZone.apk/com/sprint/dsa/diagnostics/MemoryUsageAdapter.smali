.class public Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "MemoryUsageAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;,
        Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataNameComparable;,
        Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataSizeComparable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method


# virtual methods
.method public collectData()V
    .registers 21

    .prologue
    .line 46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "activity"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 47
    .local v3, activityManager:Landroid/app/ActivityManager;
    new-instance v7, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v7}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 48
    .local v7, memoryInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v3, v7}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 49
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    .line 51
    .local v15, runningAppProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 52
    .local v10, pidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_23
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_67

    .line 56
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 57
    .local v6, keys:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 58
    .local v13, pm:Landroid/content/pm/PackageManager;
    new-instance v16, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->mItems:Ljava/util/List;

    .line 60
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4a
    :goto_4a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_81

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->mItems:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v17, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataSizeComparable;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataSizeComparable;-><init>(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataSizeComparable;)V

    invoke-static/range {v16 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    return-void

    .line 52
    .end local v6           #keys:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    :cond_67
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 53
    .local v14, runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-object v0, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 60
    .end local v14           #runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v6       #keys:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    .restart local v13       #pm:Landroid/content/pm/PackageManager;
    :cond_81
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 62
    .local v5, key:I
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v12, v0, [I

    .line 63
    .local v12, pids:[I
    const/16 v16, 0x0

    aput v5, v12, v16

    .line 64
    new-instance v4, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;-><init>(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;)V

    .line 65
    .local v4, data:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;
    const/16 v16, 0x0

    aget v16, v12, v16

    move/from16 v0, v16

    iput v0, v4, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->processId:I

    .line 66
    const/16 v16, 0x0

    aget v16, v12, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->processName:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->appName:Ljava/lang/String;

    .line 69
    const/16 v16, 0x0

    :try_start_be
    aget v16, v12, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 70
    .local v9, pi:Landroid/content/pm/PackageInfo;
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->appName:Ljava/lang/String;

    .line 71
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->appIcon:Landroid/graphics/drawable/Drawable;
    :try_end_f6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_be .. :try_end_f6} :catch_135

    .line 75
    .end local v9           #pi:Landroid/content/pm/PackageInfo;
    :goto_f6
    invoke-virtual {v3, v12}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v8

    .line 77
    .local v8, memoryInfoArray:[Landroid/os/Debug$MemoryInfo;
    array-length v0, v8

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_ff
    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_118

    .line 83
    iget v0, v4, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->pss:I

    move/from16 v16, v0

    if-lez v16, :cond_4a

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->mItems:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4a

    .line 77
    :cond_118
    aget-object v11, v8, v16

    .line 79
    .local v11, pidMemoryInfo:Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->privateDirty:I

    .line 80
    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->pss:I

    .line 81
    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->sharedDirty:I

    .line 77
    add-int/lit8 v16, v16, 0x1

    goto :goto_ff

    .line 72
    .end local v8           #memoryInfoArray:[Landroid/os/Debug$MemoryInfo;
    .end local v11           #pidMemoryInfo:Landroid/os/Debug$MemoryInfo;
    :catch_135
    move-exception v16

    goto :goto_f6
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->mItems:Ljava/util/List;

    if-nez v0, :cond_6

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 111
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0b003e

    if-eq v7, v8, :cond_71

    .line 112
    :cond_b
    iget-object v7, p0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03000f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, childView:Landroid/view/View;
    :goto_15
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;

    .line 118
    .local v0, appData:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;
    const v7, 0x7f0b0001

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 119
    .local v5, iView:Landroid/widget/ImageView;
    iget-object v7, v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->appIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_73

    .line 120
    iget-object v7, v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :goto_2d
    const v7, 0x7f0b003f

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 125
    .local v6, tView:Landroid/widget/TextView;
    iget-object v7, v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->appName:Ljava/lang/String;

    if-eqz v7, :cond_7a

    iget-object v7, v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->appName:Ljava/lang/String;

    :goto_3c
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const v7, 0x7f0b0040

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tView:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 128
    .restart local v6       #tView:Landroid/widget/TextView;
    iget v7, v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->pss:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x4090

    div-double v2, v7, v9

    .line 129
    .local v2, d:D
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v7, "####.##"

    invoke-direct {v4, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 134
    .local v4, df:Ljava/text/DecimalFormat;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "MB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-object v1

    .line 114
    .end local v0           #appData:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;
    .end local v1           #childView:Landroid/view/View;
    .end local v2           #d:D
    .end local v4           #df:Ljava/text/DecimalFormat;
    .end local v5           #iView:Landroid/widget/ImageView;
    .end local v6           #tView:Landroid/widget/TextView;
    :cond_71
    move-object v1, p2

    .restart local v1       #childView:Landroid/view/View;
    goto :goto_15

    .line 122
    .restart local v0       #appData:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;
    .restart local v5       #iView:Landroid/widget/ImageView;
    :cond_73
    const v7, 0x7f020004

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2d

    .line 125
    .restart local v6       #tView:Landroid/widget/TextView;
    :cond_7a
    iget-object v7, v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->processName:Ljava/lang/String;

    goto :goto_3c
.end method

.method public sortItems(Z)V
    .registers 5
    .parameter "bySize"

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->mItems:Ljava/util/List;

    if-eqz p1, :cond_11

    new-instance v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataSizeComparable;

    invoke-direct {v0, p0, v2}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataSizeComparable;-><init>(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataSizeComparable;)V

    :goto_a
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 141
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;->notifyDataSetChanged()V

    .line 142
    return-void

    .line 140
    :cond_11
    new-instance v0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataNameComparable;

    invoke-direct {v0, p0, v2}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataNameComparable;-><init>(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataNameComparable;)V

    goto :goto_a
.end method
