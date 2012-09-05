.class Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsLoader"
.end annotation


# instance fields
.field private final mIsLaunching:Z

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .registers 7
    .parameter
    .parameter "launcher"
    .parameter "isLaunching"

    .prologue
    .line 855
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 856
    iput-boolean p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mIsLaunching:Z

    .line 857
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mRunning:Z

    .line 860
    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationsLoader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return-void
.end method


# virtual methods
.method isRunning()Z
    .registers 2

    .prologue
    .line 870
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .registers 38

    .prologue
    .line 875
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ApplicationsLoader.run: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mIsLaunching:Z

    move/from16 v34, v0

    if-eqz v34, :cond_6b

    const/16 v34, 0x0

    :goto_26
    invoke-static/range {v34 .. v34}, Landroid/os/Process;->setThreadPriority(I)V

    .line 882
    new-instance v25, Landroid/content/Intent;

    const-string v34, "android.intent.action.MAIN"

    const/16 v35, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 883
    .local v25, mainIntent:Landroid/content/Intent;
    const-string v34, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$600(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v4

    .line 886
    .local v4, appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/app/twlauncher/Launcher;

    .line 887
    .local v24, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    if-eqz v24, :cond_5b

    if-nez v4, :cond_6e

    .line 888
    :cond_5b
    const-string v34, "Launcher.LauncherModel"

    const-string v35, "Launcher/mApplicationsAdapter destroyed before ApplicationsLoader.run"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mRunning:Z

    .line 1054
    :goto_6a
    return-void

    .line 879
    .end local v4           #appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .end local v24           #launcher:Lcom/sec/android/app/twlauncher/Launcher;
    .end local v25           #mainIntent:Landroid/content/Intent;
    :cond_6b
    const/16 v34, 0xa

    goto :goto_26

    .line 892
    .restart local v4       #appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .restart local v24       #launcher:Lcom/sec/android/app/twlauncher/Launcher;
    .restart local v25       #mainIntent:Landroid/content/Intent;
    :cond_6e
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v33, toRemove:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModFlag:Z
    invoke-static/range {v34 .. v35}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$002(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 895
    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 896
    .local v26, manager:Landroid/content/pm/PackageManager;
    const/16 v34, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 898
    .local v8, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_1e6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-nez v34, :cond_1e6

    .line 899
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    .line 901
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;
    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$700(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/HashMap;

    move-result-object v6

    .line 903
    .local v6, appMainInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/16 v17, 0x0

    .local v17, i:I
    :goto_a8
    move/from16 v0, v17

    if-ge v0, v11, :cond_cc

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-nez v34, :cond_cc

    .line 904
    move/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    .line 905
    .local v21, info:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$800(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v7

    .line 907
    .local v7, application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    .line 903
    add-int/lit8 v17, v17, 0x1

    goto :goto_a8

    .line 912
    .end local v7           #application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v21           #info:Landroid/content/pm/ResolveInfo;
    :cond_cc
    const/16 v34, 0x2000

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v22

    .line 914
    .local v22, installedAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$900()Ljava/util/HashSet;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->clear()V

    .line 915
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_e1
    :goto_e1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_103

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/ApplicationInfo;

    .line 916
    .local v27, p:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_e1

    .line 917
    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$900()Ljava/util/HashSet;

    move-result-object v34

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e1

    .line 920
    .end local v27           #p:Landroid/content/pm/ApplicationInfo;
    :cond_103
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-nez v34, :cond_1e6

    .line 921
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v14

    .line 922
    .local v14, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;
    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1000(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/UserFolderModel;->clear()V

    .line 923
    if-eqz v14, :cond_1e6

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v34

    if-lez v34, :cond_1e6

    .line 925
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 927
    :cond_127
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 928
    .local v19, id:J
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 929
    .local v28, pageNum:I
    const/16 v34, 0x2

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 930
    .local v9, cellNum:I
    const/16 v34, 0x4

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 931
    .local v32, title:Ljava/lang/String;
    const/16 v34, 0x5

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 932
    .local v15, defaultSort:I
    const/16 v34, 0x7

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 933
    .local v29, parentId:J
    const/16 v34, 0x3

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_214

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;
    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1000(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move-wide/from16 v1, v19

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v16

    .line 936
    .local v16, fInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setNormalModeInfo(II)V

    .line 937
    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 938
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->assignNormalToEdit()V

    .line 939
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setDefaultSort(I)V

    .line 940
    const/16 v34, 0x6

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-object/from16 v0, v16

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setCreateTime(J)V

    .line 941
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->markAsClean()V

    .line 942
    const-string v34, "DebugPlacement Folder"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Loaded folder "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    .end local v16           #fInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :goto_1d5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v34

    if-eqz v34, :cond_1e3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-eqz v34, :cond_127

    .line 1021
    :cond_1e3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1026
    .end local v6           #appMainInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v9           #cellNum:I
    .end local v11           #count:I
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v15           #defaultSort:I
    .end local v17           #i:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #id:J
    .end local v22           #installedAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v28           #pageNum:I
    .end local v29           #parentId:J
    .end local v32           #title:Ljava/lang/String;
    :cond_1e6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-nez v34, :cond_3c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$600(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v34

    move-object/from16 v0, v34

    if-ne v0, v4, :cond_3c2

    .line 1027
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :goto_200
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_363

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1028
    .local v31, str:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_200

    .line 944
    .end local v31           #str:Ljava/lang/String;
    .restart local v6       #appMainInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .restart local v9       #cellNum:I
    .restart local v11       #count:I
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v15       #defaultSort:I
    .restart local v17       #i:I
    .restart local v19       #id:J
    .restart local v22       #installedAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v28       #pageNum:I
    .restart local v29       #parentId:J
    .restart local v32       #title:Ljava/lang/String;
    :cond_214
    const/16 v34, 0x3

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 946
    .local v10, cn:Landroid/content/ComponentName;
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 947
    .restart local v7       #application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v7, :cond_280

    .line 948
    move-wide/from16 v0, v19

    iput-wide v0, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 949
    move/from16 v0, v28

    invoke-virtual {v7, v0, v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    .line 950
    move-wide/from16 v0, v29

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    .line 951
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    .line 952
    invoke-virtual {v7, v15}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setDefaultSort(I)V

    .line 956
    if-nez v32, :cond_243

    .line 957
    move-object/from16 v0, v24

    invoke-static {v0, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    .line 960
    :cond_243
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    .line 962
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ApplicationInfo title="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " page="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " cell="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d5

    .line 969
    :cond_280
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v23

    .line 971
    .local v23, isSafeMode:Z
    if-nez v23, :cond_340

    move-object/from16 v0, v24

    invoke-static {v10, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isStoredExternalStorageUnmounted(Landroid/content/ComponentName;Landroid/content/Context;)Z

    move-result v34

    if-nez v34, :cond_296

    move-object/from16 v0, v24

    invoke-static {v10, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isStoredExternalStorageMounted(Landroid/content/ComponentName;Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_340

    .line 975
    :cond_296
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[loadAllAppsByBatch] isStoredExternalStorage - cn : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", title : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    new-instance v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 980
    .local v5, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-wide/from16 v0, v29

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    .line 981
    move-wide/from16 v0, v19

    iput-wide v0, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 982
    move/from16 v0, v28

    invoke-virtual {v5, v0, v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    .line 983
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    .line 984
    invoke-virtual {v5, v15}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setDefaultSort(I)V

    .line 985
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 986
    const/high16 v34, 0x1020

    move/from16 v0, v34

    invoke-virtual {v5, v10, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 988
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    .line 989
    if-nez v32, :cond_33a

    .line 990
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 994
    :goto_2f8
    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f02006d

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 998
    const-wide/16 v12, 0x0

    .line 999
    .local v12, createTime:J
    sget v34, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v35, 0x9

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_32f

    .line 1001
    :try_start_31b
    iget-object v0, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x2000

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v34

    move-object/from16 v0, v34

    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_32f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31b .. :try_end_32f} :catch_3df

    .line 1008
    :cond_32f
    :goto_32f
    invoke-virtual {v5, v12, v13}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCreateTime(J)V

    .line 1009
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    .line 1011
    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_1d5

    .line 992
    .end local v12           #createTime:J
    :cond_33a
    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2f8

    .line 1013
    .end local v5           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_340
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ApplicationsLoader-run() - (toRemove) - cn : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d5

    .line 1030
    .end local v6           #appMainInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v7           #application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v9           #cellNum:I
    .end local v10           #cn:Landroid/content/ComponentName;
    .end local v11           #count:I
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v15           #defaultSort:I
    .end local v17           #i:I
    .end local v19           #id:J
    .end local v22           #installedAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v23           #isSafeMode:Z
    .end local v28           #pageNum:I
    .end local v29           #parentId:J
    .end local v32           #title:Ljava/lang/String;
    :cond_363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z
    invoke-static/range {v34 .. v35}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1032
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ApplicationsLoader: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", mApplicationsAdapter: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", items loaded: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    new-instance v34, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/Launcher;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1053
    .end local v18           #i$:Ljava/util/Iterator;
    :goto_3b8
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mRunning:Z

    goto/16 :goto_6a

    .line 1051
    :cond_3c2
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ApplicationsLoader stopped before loading complete: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b8

    .line 1004
    .restart local v5       #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v6       #appMainInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .restart local v7       #application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v9       #cellNum:I
    .restart local v10       #cn:Landroid/content/ComponentName;
    .restart local v11       #count:I
    .restart local v12       #createTime:J
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v15       #defaultSort:I
    .restart local v17       #i:I
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v19       #id:J
    .restart local v22       #installedAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v23       #isSafeMode:Z
    .restart local v28       #pageNum:I
    .restart local v29       #parentId:J
    .restart local v32       #title:Ljava/lang/String;
    :catch_3df
    move-exception v34

    goto/16 :goto_32f
.end method

.method stop()V
    .registers 4

    .prologue
    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    .line 866
    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationsLoader.stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-void
.end method
