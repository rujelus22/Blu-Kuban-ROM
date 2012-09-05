.class Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;
.super Ljava/lang/Thread;
.source "PackSwitcherLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackSwitcherLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigThread"
.end annotation


# instance fields
.field private id:J

.field private packId:Ljava/lang/String;

.field final synthetic this$0:Lcom/sprint/w/installer/PackSwitcherLoader;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/PackSwitcherLoader;J)V
    .registers 5
    .parameter
    .parameter "id"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    .line 350
    const-string v0, "PackSwitcher"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 351
    iput-wide p2, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->id:J

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->packId:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public constructor <init>(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "id"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    .line 356
    const-string v0, "PackSwitcher"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 357
    iput-object p2, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->packId:Ljava/lang/String;

    .line 358
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->id:J

    .line 359
    return-void
.end method

.method private loadBitmap(Landroid/app/WallpaperManager;Lcom/sprint/w/installer/PackInfo;)Z
    .registers 8
    .parameter "wpm"
    .parameter "packInfo"

    .prologue
    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wp-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, packPngFile:Ljava/lang/String;
    :try_start_1b
    iget-object v3, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v3}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sprint/w/installer/SprintIdHome;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 491
    .local v1, in:Ljava/io/FileInputStream;
    invoke-virtual {p1, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_28} :catch_2a

    .line 492
    const/4 v3, 0x1

    .line 494
    .end local v1           #in:Ljava/io/FileInputStream;
    :goto_29
    return v3

    .line 493
    :catch_2a
    move-exception v0

    .line 494
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_29
.end method

.method private loadContent(Lcom/sprint/w/installer/PackInfo;)V
    .registers 13
    .parameter "packInfo"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 675
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "package"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v1, "path"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "packId"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "packName"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "packVersion"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "itemType"

    aput-object v1, v2, v0

    .line 678
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "packId=?"

    .line 679
    .local v3, selection:Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    iget-object v0, p1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    aput-object v0, v4, v5

    .line 683
    .local v4, args:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/w/installer/SprintIdHome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    const-string v5, "title"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 686
    .local v6, cur:Landroid/database/Cursor;
    :try_start_46
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mAppItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$700(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_e7

    .line 687
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mAppItems:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$702(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 688
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mRingtoneItems:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$802(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 689
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mWallpaperItems:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$602(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 695
    :goto_6c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 697
    :cond_72
    new-instance v8, Lcom/sprint/w/installer/PackUninstaller$Item;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/sprint/w/installer/PackUninstaller$Item;-><init>(Z)V

    .line 698
    .local v8, i:Lcom/sprint/w/installer/PackUninstaller$Item;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->id:I

    .line 699
    const-string v0, "itemType"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->type:I

    .line 700
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->title:Ljava/lang/String;

    .line 701
    const-string v0, "packId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packId:Ljava/lang/String;

    .line 702
    const-string v0, "packName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packName:Ljava/lang/String;

    .line 703
    const-string v0, "packVersion"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packVersion:Ljava/lang/String;

    .line 704
    const-string v0, "path"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    .line 705
    const-string v0, "package"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    .line 706
    iget v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->type:I

    packed-switch v0, :pswitch_data_16c

    .line 724
    :goto_dd
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_e0
    .catchall {:try_start_46 .. :try_end_e0} :catchall_104

    move-result v0

    if-nez v0, :cond_72

    .line 727
    .end local v8           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :cond_e3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 729
    return-void

    .line 691
    :cond_e7
    :try_start_e7
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mAppItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$700(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 692
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mRingtoneItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$800(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 693
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mWallpaperItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$600(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_102
    .catchall {:try_start_e7 .. :try_end_102} :catchall_104

    goto/16 :goto_6c

    .line 727
    :catchall_104
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 709
    .restart local v8       #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :pswitch_109
    :try_start_109
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/w/installer/SprintIdHome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 710
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/w/installer/SprintIdHome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->title:Ljava/lang/String;

    .line 711
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mAppItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$700(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_137
    .catchall {:try_start_109 .. :try_end_137} :catchall_104
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_137} :catch_138

    goto :goto_dd

    .line 712
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    :catch_138
    move-exception v7

    .line 713
    .local v7, e:Ljava/lang/Exception;
    :try_start_139
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App seems to no longer be installed: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto :goto_dd

    .line 717
    .end local v7           #e:Ljava/lang/Exception;
    :pswitch_156
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mRingtoneItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$800(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_dd

    .line 720
    :pswitch_161
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mWallpaperItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$600(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16a
    .catchall {:try_start_139 .. :try_end_16a} :catchall_104

    goto/16 :goto_dd

    .line 706
    :pswitch_data_16c
    .packed-switch 0x0
        :pswitch_109
        :pswitch_156
        :pswitch_161
    .end packed-switch
.end method

.method private loadDefault(Landroid/app/WallpaperManager;Lcom/sprint/w/installer/PackInfo;)V
    .registers 9
    .parameter "wpm"
    .parameter "packInfo"

    .prologue
    .line 471
    iget-object v3, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mWallpaperItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$600(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 484
    :goto_c
    return-void

    .line 475
    :cond_d
    iget-object v3, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mWallpaperItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$600(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 477
    .local v2, item:Lcom/sprint/w/installer/PackUninstaller$Item;
    :try_start_1a
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, v2, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 478
    .local v1, in:Ljava/io/FileInputStream;
    invoke-virtual {p1, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 479
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 480
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper loaded from default, pack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_43} :catch_44

    goto :goto_c

    .line 481
    .end local v1           #in:Ljava/io/FileInputStream;
    :catch_44
    move-exception v0

    .line 482
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper failed to load from default, pack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    goto :goto_c
.end method

.method private loadHomeScreenConfig(Ljava/lang/String;)V
    .registers 32
    .parameter "packId"

    .prologue
    .line 537
    const/4 v7, 0x0

    .line 538
    .local v7, addCount:I
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->wipeHomeScreen()V

    .line 540
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v5, v2

    .line 543
    .local v5, args:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v2}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprint/w/installer/SprintIdHome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 544
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/sprint/w/installer/ContentProvider;->URI_INSTALLER_FAVORITES:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "packId=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 550
    .local v8, cur:Landroid/database/Cursor;
    :try_start_20
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1ed

    .line 551
    const-string v2, "l_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 552
    .local v23, idxLaunchId:I
    const-string v2, "container"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 553
    .local v13, idxContainer:I
    const-string v2, "screen"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 554
    .local v24, idxScreen:I
    const-string v2, "title"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 555
    .local v27, idxTitle:I
    const-string v2, "itemType"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 556
    .local v22, idxItemType:I
    const-string v2, "cellX"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 557
    .local v11, idxCellX:I
    const-string v2, "cellY"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 558
    .local v12, idxCellY:I
    const-string v2, "spanX"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 559
    .local v25, idxSpanX:I
    const-string v2, "spanY"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 560
    .local v26, idxSpanY:I
    const-string v2, "iconType"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 561
    .local v19, idxIconType:I
    const-string v2, "iconResource"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 562
    .local v18, idxIconResource:I
    const-string v2, "iconPackage"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 563
    .local v17, idxIconPackage:I
    const-string v2, "icon"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 564
    .local v16, idxIcon:I
    const-string v2, "appWidgetId"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 565
    .local v10, idxAppWidgetId:I
    const-string v2, "intent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 566
    .local v20, idxIntent:I
    const-string v2, "uri"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 567
    .local v28, idxUri:I
    const-string v2, "displayMode"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 568
    .local v14, idxDisplayMode:I
    const-string v2, "isShortcut"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 569
    .local v21, idxIsShortcut:I
    const-string v2, "extras"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 572
    .local v15, idxExtras:I
    :cond_98
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 573
    .local v29, values:Landroid/content/ContentValues;
    const-string v2, "container"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 574
    const-string v2, "screen"

    move/from16 v0, v24

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 575
    const-string v2, "title"

    move/from16 v0, v27

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v2, "itemType"

    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    const-string v2, "cellX"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    const-string v2, "cellY"

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    const-string v2, "spanX"

    move/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    const-string v2, "spanY"

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    const-string v2, "iconType"

    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    const-string v2, "iconResource"

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v2, "iconPackage"

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v2, "icon"

    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 585
    const-string v2, "appWidgetId"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    const-string v2, "intent"

    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v2, "uri"

    move/from16 v0, v28

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v2, "displayMode"

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v2, "isShortcut"

    move/from16 v0, v21

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v2, "l_id"

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    invoke-interface {v8, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1b6

    .line 592
    const-string v2, "extras"

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 595
    :cond_1b6
    invoke-static/range {v29 .. v29}, Lcom/sprint/w/installer/ContentValuesFactory;->forLauncher(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v29

    .line 597
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding favorite: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V
    :try_end_1d8
    .catchall {:try_start_20 .. :try_end_1d8} :catchall_245
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_1d8} :catch_22c

    .line 599
    :try_start_1d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mService:Lcom/sprint/id/ISprintIDService;
    invoke-static {v2}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$500(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/id/ISprintIDService;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-interface {v2, v0}, Lcom/sprint/id/ISprintIDService;->addDesktopItemNoNotify(Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1e5
    .catchall {:try_start_1d8 .. :try_end_1e5} :catchall_245
    .catch Landroid/os/RemoteException; {:try_start_1d8 .. :try_end_1e5} :catch_221
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1e5} :catch_23a

    .line 600
    add-int/lit8 v7, v7, 0x1

    .line 608
    :goto_1e7
    :try_start_1e7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1ea
    .catchall {:try_start_1e7 .. :try_end_1ea} :catchall_245
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1ea} :catch_22c

    move-result v2

    if-nez v2, :cond_98

    .line 613
    .end local v10           #idxAppWidgetId:I
    .end local v11           #idxCellX:I
    .end local v12           #idxCellY:I
    .end local v13           #idxContainer:I
    .end local v14           #idxDisplayMode:I
    .end local v15           #idxExtras:I
    .end local v16           #idxIcon:I
    .end local v17           #idxIconPackage:I
    .end local v18           #idxIconResource:I
    .end local v19           #idxIconType:I
    .end local v20           #idxIntent:I
    .end local v21           #idxIsShortcut:I
    .end local v22           #idxItemType:I
    .end local v23           #idxLaunchId:I
    .end local v24           #idxScreen:I
    .end local v25           #idxSpanX:I
    .end local v26           #idxSpanY:I
    .end local v27           #idxTitle:I
    .end local v28           #idxUri:I
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_1ed
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 616
    :goto_1f0
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 618
    :try_start_20a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mService:Lcom/sprint/id/ISprintIDService;
    invoke-static {v2}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$500(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/id/ISprintIDService;

    move-result-object v2

    invoke-interface {v2}, Lcom/sprint/id/ISprintIDService;->notifyFavoritesChanges()V

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mService:Lcom/sprint/id/ISprintIDService;
    invoke-static {v2}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$500(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/id/ISprintIDService;

    move-result-object v2

    invoke-interface {v2}, Lcom/sprint/id/ISprintIDService;->notifyAppWidgetReset()V
    :try_end_220
    .catch Landroid/os/RemoteException; {:try_start_20a .. :try_end_220} :catch_24a

    .line 624
    :goto_220
    return-void

    .line 601
    .restart local v10       #idxAppWidgetId:I
    .restart local v11       #idxCellX:I
    .restart local v12       #idxCellY:I
    .restart local v13       #idxContainer:I
    .restart local v14       #idxDisplayMode:I
    .restart local v15       #idxExtras:I
    .restart local v16       #idxIcon:I
    .restart local v17       #idxIconPackage:I
    .restart local v18       #idxIconResource:I
    .restart local v19       #idxIconType:I
    .restart local v20       #idxIntent:I
    .restart local v21       #idxIsShortcut:I
    .restart local v22       #idxItemType:I
    .restart local v23       #idxLaunchId:I
    .restart local v24       #idxScreen:I
    .restart local v25       #idxSpanX:I
    .restart local v26       #idxSpanY:I
    .restart local v27       #idxTitle:I
    .restart local v28       #idxUri:I
    .restart local v29       #values:Landroid/content/ContentValues;
    :catch_221
    move-exception v9

    .line 603
    .local v9, e:Landroid/os/RemoteException;
    :try_start_222
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    const-string v3, "Remote Error trying to add a fav to the launcher"

    invoke-virtual {v2, v3, v9}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22b
    .catchall {:try_start_222 .. :try_end_22b} :catchall_245
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_22b} :catch_22c

    goto :goto_1e7

    .line 610
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v10           #idxAppWidgetId:I
    .end local v11           #idxCellX:I
    .end local v12           #idxCellY:I
    .end local v13           #idxContainer:I
    .end local v14           #idxDisplayMode:I
    .end local v15           #idxExtras:I
    .end local v16           #idxIcon:I
    .end local v17           #idxIconPackage:I
    .end local v18           #idxIconResource:I
    .end local v19           #idxIconType:I
    .end local v20           #idxIntent:I
    .end local v21           #idxIsShortcut:I
    .end local v22           #idxItemType:I
    .end local v23           #idxLaunchId:I
    .end local v24           #idxScreen:I
    .end local v25           #idxSpanX:I
    .end local v26           #idxSpanY:I
    .end local v27           #idxTitle:I
    .end local v28           #idxUri:I
    .end local v29           #values:Landroid/content/ContentValues;
    :catch_22c
    move-exception v9

    .line 611
    .local v9, e:Ljava/lang/Exception;
    :try_start_22d
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    const-string v3, "Error loading favorites to the launcher"

    invoke-virtual {v2, v3, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_236
    .catchall {:try_start_22d .. :try_end_236} :catchall_245

    .line 613
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1f0

    .line 604
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v10       #idxAppWidgetId:I
    .restart local v11       #idxCellX:I
    .restart local v12       #idxCellY:I
    .restart local v13       #idxContainer:I
    .restart local v14       #idxDisplayMode:I
    .restart local v15       #idxExtras:I
    .restart local v16       #idxIcon:I
    .restart local v17       #idxIconPackage:I
    .restart local v18       #idxIconResource:I
    .restart local v19       #idxIconType:I
    .restart local v20       #idxIntent:I
    .restart local v21       #idxIsShortcut:I
    .restart local v22       #idxItemType:I
    .restart local v23       #idxLaunchId:I
    .restart local v24       #idxScreen:I
    .restart local v25       #idxSpanX:I
    .restart local v26       #idxSpanY:I
    .restart local v27       #idxTitle:I
    .restart local v28       #idxUri:I
    .restart local v29       #values:Landroid/content/ContentValues;
    :catch_23a
    move-exception v9

    .line 606
    .restart local v9       #e:Ljava/lang/Exception;
    :try_start_23b
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    const-string v3, "Error trying to add a fav to the launcher"

    invoke-virtual {v2, v3, v9}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_244
    .catchall {:try_start_23b .. :try_end_244} :catchall_245
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_244} :catch_22c

    goto :goto_1e7

    .line 613
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #idxAppWidgetId:I
    .end local v11           #idxCellX:I
    .end local v12           #idxCellY:I
    .end local v13           #idxContainer:I
    .end local v14           #idxDisplayMode:I
    .end local v15           #idxExtras:I
    .end local v16           #idxIcon:I
    .end local v17           #idxIconPackage:I
    .end local v18           #idxIconResource:I
    .end local v19           #idxIconType:I
    .end local v20           #idxIntent:I
    .end local v21           #idxIsShortcut:I
    .end local v22           #idxItemType:I
    .end local v23           #idxLaunchId:I
    .end local v24           #idxScreen:I
    .end local v25           #idxSpanX:I
    .end local v26           #idxSpanY:I
    .end local v27           #idxTitle:I
    .end local v28           #idxUri:I
    .end local v29           #values:Landroid/content/ContentValues;
    :catchall_245
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 620
    :catch_24a
    move-exception v9

    .line 622
    .local v9, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    const-string v3, "Remote Error trying to notify for ID switch"

    invoke-virtual {v2, v3, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_220
.end method

.method private loadLive(Landroid/app/WallpaperManager;Lcom/sprint/w/installer/PackInfo;)Z
    .registers 13
    .parameter "wpm"
    .parameter "packInfo"

    .prologue
    .line 499
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wp-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 501
    .local v6, packTxtFile:Ljava/lang/String;
    :try_start_1b
    iget-object v7, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v7}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sprint/w/installer/SprintIdHome;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 504
    .local v3, in:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 505
    .local v4, inr:Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, data:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 507
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v5

    .line 508
    .local v5, iwman:Landroid/app/IWallpaperManager;
    invoke-interface {v5, v0}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 509
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wallpaper loaded from a live wp, pack="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_5a} :catch_5c

    .line 510
    const/4 v7, 0x1

    .line 512
    .end local v0           #comp:Landroid/content/ComponentName;
    .end local v1           #data:Ljava/lang/String;
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #inr:Ljava/io/BufferedReader;
    .end local v5           #iwman:Landroid/app/IWallpaperManager;
    :goto_5b
    return v7

    .line 511
    :catch_5c
    move-exception v2

    .line 512
    .local v2, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_5b
.end method

.method private loadNewWallpaper(Lcom/sprint/w/installer/PackInfo;)V
    .registers 5
    .parameter "packInfo"

    .prologue
    .line 458
    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v1

    const-string v2, "wallpaper"

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/SprintIdHome;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 459
    .local v0, wpm:Landroid/app/WallpaperManager;
    invoke-direct {p0, v0, p1}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->loadLive(Landroid/app/WallpaperManager;Lcom/sprint/w/installer/PackInfo;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 468
    :cond_14
    :goto_14
    return-void

    .line 463
    :cond_15
    invoke-direct {p0, v0, p1}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->loadBitmap(Landroid/app/WallpaperManager;Lcom/sprint/w/installer/PackInfo;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 467
    invoke-direct {p0, v0, p1}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->loadDefault(Landroid/app/WallpaperManager;Lcom/sprint/w/installer/PackInfo;)V

    goto :goto_14
.end method

.method private setDefaultRingtone(Ljava/lang/String;)V
    .registers 14
    .parameter "packId"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 627
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rt-ringtone"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, packRingtoneFile:Ljava/lang/String;
    const/4 v5, 0x0

    .line 629
    .local v5, rtUri:Ljava/lang/String;
    const/4 v1, 0x0

    .line 631
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_18
    iget-object v6, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v6}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sprint/w/installer/SprintIdHome;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 632
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2f} :catch_86

    move-result-object v5

    .line 636
    if-eqz v1, :cond_36

    .line 638
    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_ee

    .line 641
    :goto_35
    const/4 v1, 0x0

    .line 644
    :cond_36
    :goto_36
    if-eqz v5, :cond_b0

    .line 645
    iget-object v6, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v6}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v6

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v9, v7}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 650
    :goto_45
    const/4 v2, 0x0

    .line 651
    .local v2, notificationUri:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rt-notification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, packNotificationFile:Ljava/lang/String;
    :try_start_59
    iget-object v6, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v6}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sprint/w/installer/SprintIdHome;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 654
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_59 .. :try_end_70} :catchall_dd
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_70} :catch_ba

    move-result-object v2

    .line 658
    if-eqz v1, :cond_76

    .line 660
    :try_start_73
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_f5

    .line 665
    :cond_76
    :goto_76
    if-eqz v2, :cond_e4

    .line 666
    iget-object v6, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v6}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v6

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v10, v7}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 671
    :goto_85
    return-void

    .line 633
    .end local v2           #notificationUri:Ljava/lang/String;
    .end local v3           #packNotificationFile:Ljava/lang/String;
    :catch_86
    move-exception v0

    .line 634
    .local v0, e:Ljava/lang/Exception;
    :try_start_87
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading ringtone for pack "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a1
    .catchall {:try_start_87 .. :try_end_a1} :catchall_a8

    .line 636
    if-eqz v1, :cond_36

    .line 638
    :try_start_a3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_f1

    .line 641
    :goto_a6
    const/4 v1, 0x0

    goto :goto_36

    .line 636
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_a8
    move-exception v6

    if-eqz v1, :cond_af

    .line 638
    :try_start_ab
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_f3

    .line 641
    :goto_ae
    const/4 v1, 0x0

    :cond_af
    throw v6

    .line 648
    :cond_b0
    iget-object v6, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v6}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v6

    invoke-static {v6, v9, v11}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_45

    .line 655
    .restart local v2       #notificationUri:Ljava/lang/String;
    .restart local v3       #packNotificationFile:Ljava/lang/String;
    :catch_ba
    move-exception v0

    .line 656
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_bb
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading notification for pack "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d5
    .catchall {:try_start_bb .. :try_end_d5} :catchall_dd

    .line 658
    if-eqz v1, :cond_76

    .line 660
    :try_start_d7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_76

    .line 661
    :catch_db
    move-exception v6

    goto :goto_76

    .line 658
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_dd
    move-exception v6

    if-eqz v1, :cond_e3

    .line 660
    :try_start_e0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_f7

    .line 662
    :cond_e3
    :goto_e3
    throw v6

    .line 669
    :cond_e4
    iget-object v6, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v6}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v6

    invoke-static {v6, v10, v11}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_85

    .line 639
    .end local v2           #notificationUri:Ljava/lang/String;
    .end local v3           #packNotificationFile:Ljava/lang/String;
    :catch_ee
    move-exception v6

    goto/16 :goto_35

    .restart local v0       #e:Ljava/lang/Exception;
    :catch_f1
    move-exception v6

    goto :goto_a6

    .end local v0           #e:Ljava/lang/Exception;
    :catch_f3
    move-exception v7

    goto :goto_ae

    .line 661
    .restart local v2       #notificationUri:Ljava/lang/String;
    .restart local v3       #packNotificationFile:Ljava/lang/String;
    :catch_f5
    move-exception v6

    goto :goto_76

    :catch_f7
    move-exception v7

    goto :goto_e3
.end method

.method private startHome()V
    .registers 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread$1;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread$1;-><init>(Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/SprintIdHome;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 524
    return-void
.end method

.method private wipeHomeScreen()V
    .registers 4

    .prologue
    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mService:Lcom/sprint/id/ISprintIDService;
    invoke-static {v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$500(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/id/ISprintIDService;

    move-result-object v1

    invoke-interface {v1}, Lcom/sprint/id/ISprintIDService;->wipeDesktopContainer()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 533
    :goto_9
    return-void

    .line 529
    :catch_a
    move-exception v0

    .line 531
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "Remote Exception trying to wipe homescreen"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v9, 0x1

    const/4 v13, 0x0

    .line 362
    sget-boolean v0, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    if-eqz v0, :cond_10

    .line 363
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v4, "Ignoring switch request -- already working on a pack switch!"

    invoke-virtual {v0, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 455
    :goto_f
    return-void

    .line 368
    :cond_10
    const/4 v0, 0x1

    :try_start_11
    sput-boolean v0, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    .line 369
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v0

    invoke-static {v0}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v7

    .line 371
    .local v7, currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$400(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 372
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v4, "mPackList is null if the thread is spun outside of ServicePackSwitcher"

    invoke-virtual {v0, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 375
    const-string v0, "HOME"

    iget-object v4, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->packId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_117

    const-string v0, "OEM"

    iget-object v4, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->packId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_117

    .line 376
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v0

    iget-object v4, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->packId:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/sprint/w/installer/PackInfo;->loadPackDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v12

    .line 386
    .local v12, tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    :goto_52
    if-nez v12, :cond_151

    move-object v10, v7

    .line 391
    .end local v12           #tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    .local v10, newPackInfo:Lcom/sprint/w/installer/PackInfo;
    :goto_55
    if-nez v7, :cond_165

    .line 392
    .local v9, isFirstTimeSwitchingPacks:Z
    :goto_57
    if-eqz v9, :cond_168

    .line 394
    const-string v6, "HOME"

    .line 395
    .local v6, currentPackId:Ljava/lang/String;
    const-string v0, "HOME"

    iget-object v4, v10, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 396
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getOemPack()Lcom/sprint/w/installer/PackInfo;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 397
    const-string v6, "OEM"

    .line 406
    :cond_6d
    :goto_6d
    const-string v0, "OEM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 407
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mService:Lcom/sprint/id/ISprintIDService;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$500(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/id/ISprintIDService;

    move-result-object v0

    iget-object v4, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v4}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v4

    invoke-static {v0, v4, v6}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveHomeScreenConfig(Lcom/sprint/id/ISprintIDService;Landroid/app/Activity;Ljava/lang/String;)V

    .line 413
    :cond_84
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveCurrentLiveWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveCurrentRingTones(Landroid/content/Context;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v10, v4}, Lcom/sprint/w/installer/PackInfo;->saveActivePackInfo(Landroid/content/Context;Lcom/sprint/w/installer/PackInfo;Z)V

    .line 416
    const-string v0, "OEM"

    iget-object v4, v10, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a7
    .catchall {:try_start_11 .. :try_end_a7} :catchall_14d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_a7} :catch_130

    move-result v0

    if-eqz v0, :cond_16c

    .line 419
    :try_start_aa
    invoke-direct {p0, v10}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->loadNewWallpaper(Lcom/sprint/w/installer/PackInfo;)V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_14d
    .catch Ljava/lang/RuntimeException; {:try_start_aa .. :try_end_ad} :catch_181
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_130

    .line 422
    :goto_ad
    :try_start_ad
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/w/installer/SprintIdHome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 423
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 424
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 425
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 426
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v3, sampleIntent:Landroid/content/Intent;
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    .line 429
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v0

    invoke-virtual {v10}, Lcom/sprint/w/installer/PackInfo;->getOemLauncher()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/sprint/w/installer/PackInstaller;->setAsPreferred(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;Z)V

    .line 443
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #sampleIntent:Landroid/content/Intent;
    :goto_e5
    iget-object v0, v10, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->setDefaultRingtone(Ljava/lang/String;)V

    .line 444
    iget-object v11, v10, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    .line 445
    .local v11, psiId:Ljava/lang/String;
    if-nez v11, :cond_104

    iget-object v0, v10, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    if-eqz v0, :cond_104

    iget-object v0, v10, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    const-string v4, "psi://content/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 446
    iget-object v0, v10, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 448
    :cond_104
    new-instance v0, Lcom/sprint/w/installer/BroadcastNotifier;

    iget-object v4, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v4}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sprint/w/installer/BroadcastNotifier;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v10, v4}, Lcom/sprint/w/installer/BroadcastNotifier;->notifyPackActivated(Lcom/sprint/w/installer/PackInfo;Z)V
    :try_end_113
    .catchall {:try_start_ad .. :try_end_113} :catchall_14d
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_113} :catch_130

    .line 452
    sput-boolean v13, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    goto/16 :goto_f

    .line 377
    .end local v6           #currentPackId:Ljava/lang/String;
    .end local v9           #isFirstTimeSwitchingPacks:Z
    .end local v10           #newPackInfo:Lcom/sprint/w/installer/PackInfo;
    .end local v11           #psiId:Ljava/lang/String;
    :cond_117
    :try_start_117
    const-string v0, "HOME"

    iget-object v4, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->packId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 378
    new-instance v12, Lcom/sprint/w/installer/PackInfo;

    invoke-direct {v12}, Lcom/sprint/w/installer/PackInfo;-><init>()V

    .line 379
    .restart local v12       #tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    const-string v0, "My ID"

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 380
    const-string v0, "HOME"

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;
    :try_end_12e
    .catchall {:try_start_117 .. :try_end_12e} :catchall_14d
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_12e} :catch_130

    goto/16 :goto_52

    .line 449
    .end local v7           #currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    .end local v12           #tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    :catch_130
    move-exception v8

    .line 450
    .local v8, e:Ljava/lang/Exception;
    :try_start_131
    invoke-static {}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v4, "Caught an exception trying to switch IDs"

    invoke-virtual {v0, v4, v8}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13a
    .catchall {:try_start_131 .. :try_end_13a} :catchall_14d

    .line 452
    sput-boolean v13, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    goto/16 :goto_f

    .line 382
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    :cond_13e
    :try_start_13e
    new-instance v12, Lcom/sprint/w/installer/PackInfo;

    invoke-direct {v12}, Lcom/sprint/w/installer/PackInfo;-><init>()V

    .line 383
    .restart local v12       #tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    const-string v0, "OEM"

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 384
    const-string v0, "OEM"

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;
    :try_end_14b
    .catchall {:try_start_13e .. :try_end_14b} :catchall_14d
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_14b} :catch_130

    goto/16 :goto_52

    .line 452
    .end local v7           #currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    .end local v12           #tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    :catchall_14d
    move-exception v0

    sput-boolean v13, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    throw v0

    .restart local v7       #currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    .restart local v12       #tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    :cond_151
    move-object v10, v12

    .line 386
    goto/16 :goto_55

    .line 388
    .end local v12           #tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    :cond_154
    :try_start_154
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$400(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iget-wide v4, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->id:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sprint/w/installer/PackInfo;

    .restart local v10       #newPackInfo:Lcom/sprint/w/installer/PackInfo;
    goto/16 :goto_55

    :cond_165
    move v9, v13

    .line 391
    goto/16 :goto_57

    .line 401
    .restart local v9       #isFirstTimeSwitchingPacks:Z
    :cond_168
    iget-object v6, v7, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    .restart local v6       #currentPackId:Ljava/lang/String;
    goto/16 :goto_6d

    .line 431
    :cond_16c
    if-nez v9, :cond_179

    .line 432
    invoke-direct {p0, v10}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->loadContent(Lcom/sprint/w/installer/PackInfo;)V

    .line 433
    iget-object v0, v10, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->loadHomeScreenConfig(Ljava/lang/String;)V
    :try_end_176
    .catchall {:try_start_154 .. :try_end_176} :catchall_14d
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_176} :catch_130

    .line 435
    :try_start_176
    invoke-direct {p0, v10}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->loadNewWallpaper(Lcom/sprint/w/installer/PackInfo;)V
    :try_end_179
    .catchall {:try_start_176 .. :try_end_179} :catchall_14d
    .catch Ljava/lang/RuntimeException; {:try_start_176 .. :try_end_179} :catch_184
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_179} :catch_130

    .line 439
    :cond_179
    :goto_179
    const/4 v0, 0x0

    :try_start_17a
    sput-boolean v0, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    .line 440
    invoke-direct {p0}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->startHome()V
    :try_end_17f
    .catchall {:try_start_17a .. :try_end_17f} :catchall_14d
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_17f} :catch_130

    goto/16 :goto_e5

    .line 420
    :catch_181
    move-exception v0

    goto/16 :goto_ad

    .line 436
    :catch_184
    move-exception v0

    goto :goto_179
.end method
