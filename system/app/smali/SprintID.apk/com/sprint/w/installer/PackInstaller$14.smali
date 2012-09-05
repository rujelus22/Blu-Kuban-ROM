.class Lcom/sprint/w/installer/PackInstaller$14;
.super Ljava/lang/Thread;
.source "PackInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller;->installServicePack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    .prologue
    .line 1098
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v25, v0

    const v26, 0x7f06008c

    invoke-virtual/range {v25 .. v26}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v25

    #calls: Lcom/sprint/w/installer/PackInstaller;->updateStatus(Ljava/lang/CharSequence;)V
    invoke-static/range {v24 .. v25}, Lcom/sprint/w/installer/PackInstaller;->access$1000(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/CharSequence;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    #calls: Lcom/sprint/w/installer/PackInstaller;->saveCurrentLayout()V
    invoke-static/range {v24 .. v24}, Lcom/sprint/w/installer/PackInstaller;->access$1100(Lcom/sprint/w/installer/PackInstaller;)V

    .line 1103
    new-instance v9, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    #calls: Lcom/sprint/w/installer/PackInstaller;->getTargetFile()Ljava/io/File;
    invoke-static/range {v24 .. v24}, Lcom/sprint/w/installer/PackInstaller;->access$600(Lcom/sprint/w/installer/PackInstaller;)Ljava/io/File;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v9, v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    .line 1106
    .local v9, f:Ljava/util/jar/JarFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    const-string v25, "pack-info.xml"

    move-object/from16 v0, v25

    invoke-static {v9, v0}, Lcom/sprint/w/installer/PackInfo;->parsePackDetails(Ljava/util/jar/JarFile;Ljava/lang/String;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    move-object/from16 v24, v0

    if-nez v24, :cond_b6

    .line 1108
    new-instance v24, Lcom/sprint/w/installer/DownloadServiceException;

    sget-object v25, Lcom/sprint/w/installer/PsiCode;->INVALID_CONTENT:Lcom/sprint/w/installer/PsiCode;

    invoke-direct/range {v24 .. v25}, Lcom/sprint/w/installer/DownloadServiceException;-><init>(Lcom/sprint/w/installer/PsiCode;)V

    throw v24
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5e

    .line 1240
    .end local v9           #f:Ljava/util/jar/JarFile;
    :catch_5e
    move-exception v6

    .line 1241
    .local v6, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/w/installer/PackInstaller;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v24

    const-string v25, "Error while installing a pack: "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a3

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sprint/w/installer/PackInstaller;->mAbortInstall:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4c9

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    move-object/from16 v25, v0

    sget-object v26, Lcom/sprint/w/installer/DeliveryState;->CANCEL_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-static/range {v24 .. v28}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 1251
    :cond_a3
    :goto_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    new-instance v25, Lcom/sprint/w/installer/PackInstaller$14$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/sprint/w/installer/PackInstaller$14$2;-><init>(Lcom/sprint/w/installer/PackInstaller$14;Ljava/lang/Exception;)V

    invoke-virtual/range {v24 .. v25}, Lcom/sprint/w/installer/PackInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1278
    .end local v6           #e:Ljava/lang/Exception;
    :cond_b5
    :goto_b5
    return-void

    .line 1111
    .restart local v9       #f:Ljava/util/jar/JarFile;
    :cond_b6
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    move-object/from16 v24, v0

    if-eqz v24, :cond_102

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sprint/w/installer/psi/ServicePack;->isDefaultPack()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lcom/sprint/w/installer/PackInfo;->setDefaultPack(Z)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sprint/w/installer/psi/ServicePack;->isLocked()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lcom/sprint/w/installer/PackInfo;->setLocked(Z)V

    .line 1115
    :cond_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sprint/w/installer/PackInstaller;->mFromPsi:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1ab

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPsiId:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "psi://content/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPsiId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    .line 1123
    :goto_15f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sprint/w/installer/PackInfo;->version:Ljava/lang/String;

    move-object/from16 v25, v0

    #calls: Lcom/sprint/w/installer/PackInstaller;->updateVersion(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/sprint/w/installer/PackInstaller;->access$1200(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 1128
    .local v7, ee:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/jar/JarEntry;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    .local v5, apkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/jar/JarEntry;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    .local v17, ringtoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/jar/JarEntry;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    .local v23, wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/jar/JarEntry;>;"
    const-wide/16 v19, 0x0

    .line 1133
    .local v19, storageNeeded:J
    :cond_18f
    :goto_18f
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v24

    if-eqz v24, :cond_285

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sprint/w/installer/PackInstaller;->mAbortInstall:Z

    move/from16 v24, v0

    if-eqz v24, :cond_20c

    .line 1135
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "User cancelled"

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1118
    .end local v5           #apkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/jar/JarEntry;>;"
    .end local v7           #ee:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/jar/JarEntry;>;"
    .end local v17           #ringtoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/jar/JarEntry;>;"
    .end local v19           #storageNeeded:J
    .end local v23           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/jar/JarEntry;>;"
    :cond_1ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sprint/w/installer/PackInstaller;->mFromFile:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1ec

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "file://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPackFilePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    goto/16 :goto_15f

    .line 1121
    :cond_1ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPackSrcUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    goto/16 :goto_15f

    .line 1137
    .restart local v5       #apkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/jar/JarEntry;>;"
    .restart local v7       #ee:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/jar/JarEntry;>;"
    .restart local v17       #ringtoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/jar/JarEntry;>;"
    .restart local v19       #storageNeeded:J
    .restart local v23       #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/jar/JarEntry;>;"
    :cond_20c
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/JarEntry;

    .line 1138
    .local v8, entry:Ljava/util/jar/JarEntry;
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v24

    if-nez v24, :cond_18f

    .line 1142
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v24

    const-wide/16 v26, -0x1

    cmp-long v24, v24, v26

    if-eqz v24, :cond_228

    .line 1143
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v24

    add-long v19, v19, v24

    .line 1146
    :cond_228
    invoke-static {}, Lcom/sprint/w/installer/PackInstaller;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "entry="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1149
    .local v14, name:Ljava/lang/String;
    const-string v24, "app"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_261

    const-string v24, ".apk"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_261

    .line 1150
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18f

    .line 1151
    :cond_261
    const-string v24, "wallpapers/"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_274

    .line 1153
    invoke-static {v9, v8}, Lcom/sprint/w/installer/util/Util;->findBestResourceMatch(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18f

    .line 1154
    :cond_274
    const-string v24, "ringtones/"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18f

    .line 1155
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18f

    .line 1161
    .end local v8           #entry:Ljava/util/jar/JarEntry;
    .end local v14           #name:Ljava/lang/String;
    :cond_285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v19

    #calls: Lcom/sprint/w/installer/PackInstaller;->hasEnoughStorage(J)Z
    invoke-static {v0, v1, v2}, Lcom/sprint/w/installer/PackInstaller;->access$1300(Lcom/sprint/w/installer/PackInstaller;J)Z

    move-result v24

    if-nez v24, :cond_2a9

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    new-instance v25, Lcom/sprint/w/installer/PackInstaller$14$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sprint/w/installer/PackInstaller$14$1;-><init>(Lcom/sprint/w/installer/PackInstaller$14;)V

    invoke-virtual/range {v24 .. v25}, Lcom/sprint/w/installer/PackInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_b5

    .line 1178
    :cond_2a9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v25

    add-int v24, v24, v25

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v21, v0

    .line 1179
    .local v21, tItemCount:F
    const/16 v22, 0x0

    .line 1182
    .local v22, tItemsInstalled:F
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2c4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_317

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/jar/JarEntry;

    .line 1183
    .local v13, je:Ljava/util/jar/JarEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sprint/w/installer/PackInstaller;->mAbortInstall:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2e6

    .line 1184
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "User cancelled"

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1186
    :cond_2e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v25, v0

    const v26, 0x7f060026

    invoke-virtual/range {v25 .. v26}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/high16 v26, 0x3f80

    add-float v22, v22, v26

    div-float v26, v22, v21

    const/high16 v27, 0x42c8

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    #calls: Lcom/sprint/w/installer/PackInstaller;->updateStatus(Ljava/lang/CharSequence;I)V
    invoke-static/range {v24 .. v26}, Lcom/sprint/w/installer/PackInstaller;->access$1400(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/CharSequence;I)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    #calls: Lcom/sprint/w/installer/PackInstaller;->installWallpaper(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    invoke-static {v0, v9, v13}, Lcom/sprint/w/installer/PackInstaller;->access$1500(Lcom/sprint/w/installer/PackInstaller;Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    goto :goto_2c4

    .line 1191
    .end local v13           #je:Ljava/util/jar/JarEntry;
    :cond_317
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_31b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_36e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/jar/JarEntry;

    .line 1192
    .restart local v13       #je:Ljava/util/jar/JarEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sprint/w/installer/PackInstaller;->mAbortInstall:Z

    move/from16 v24, v0

    if-eqz v24, :cond_33d

    .line 1193
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "User cancelled"

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1195
    :cond_33d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v25, v0

    const v26, 0x7f060027

    invoke-virtual/range {v25 .. v26}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/high16 v26, 0x3f80

    add-float v22, v22, v26

    div-float v26, v22, v21

    const/high16 v27, 0x42c8

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    #calls: Lcom/sprint/w/installer/PackInstaller;->updateStatus(Ljava/lang/CharSequence;I)V
    invoke-static/range {v24 .. v26}, Lcom/sprint/w/installer/PackInstaller;->access$1400(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/CharSequence;I)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    #calls: Lcom/sprint/w/installer/PackInstaller;->installRingtone(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    invoke-static {v0, v9, v13}, Lcom/sprint/w/installer/PackInstaller;->access$1600(Lcom/sprint/w/installer/PackInstaller;Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    goto :goto_31b

    .line 1200
    .end local v13           #je:Ljava/util/jar/JarEntry;
    :cond_36e
    const/4 v10, 0x0

    .line 1201
    .local v10, i:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1202
    .local v4, N:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_377
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4b6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/JarEntry;

    .line 1203
    .restart local v8       #entry:Ljava/util/jar/JarEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sprint/w/installer/PackInstaller;->mAbortInstall:Z

    move/from16 v24, v0

    if-eqz v24, :cond_399

    .line 1204
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "User cancelled"

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1206
    :cond_399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sprint/w/installer/PackInstaller;->mRollbackInstall:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3af

    .line 1207
    new-instance v24, Lcom/sprint/w/installer/DownloadServiceException;

    sget-object v25, Lcom/sprint/w/installer/PsiCode;->INSUFFICIENT_MEMORY:Lcom/sprint/w/installer/PsiCode;

    invoke-direct/range {v24 .. v25}, Lcom/sprint/w/installer/DownloadServiceException;-><init>(Lcom/sprint/w/installer/PsiCode;)V

    throw v24

    .line 1209
    :cond_3af
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1210
    .restart local v14       #name:Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sprint/w/installer/PackInstaller;->getFilesDir()Ljava/io/File;

    move-result-object v24

    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1211
    .local v18, saveToFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-virtual {v9, v8}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/sprint/w/installer/PackInstaller;->mInputStream:Ljava/io/InputStream;

    .line 1212
    .local v12, is:Ljava/io/InputStream;
    new-instance v15, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lcom/sprint/w/installer/PackInstaller;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1214
    .local v15, os:Ljava/io/OutputStream;
    :goto_400
    const/16 v24, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v25, v0

    #getter for: Lcom/sprint/w/installer/PackInstaller;->BUFFER:[B
    invoke-static/range {v25 .. v25}, Lcom/sprint/w/installer/PackInstaller;->access$1700(Lcom/sprint/w/installer/PackInstaller;)[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .local v16, r:I
    move/from16 v0, v24

    move/from16 v1, v16

    if-eq v0, v1, :cond_42e

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    #getter for: Lcom/sprint/w/installer/PackInstaller;->BUFFER:[B
    invoke-static/range {v24 .. v24}, Lcom/sprint/w/installer/PackInstaller;->access$1700(Lcom/sprint/w/installer/PackInstaller;)[B

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v15, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_400

    .line 1217
    :cond_42e
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 1218
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 1219
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v25, v0

    add-int/lit8 v10, v10, 0x1

    if-lt v10, v4, :cond_4a1

    const/16 v24, 0x1

    :goto_443
    move/from16 v0, v24

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/sprint/w/installer/PackInstaller;->mLastFile:Z

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    #getter for: Lcom/sprint/w/installer/PackInstaller;->lock:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/sprint/w/installer/PackInstaller;->access$1800(Lcom/sprint/w/installer/PackInstaller;)Ljava/lang/Object;

    move-result-object v25

    monitor-enter v25
    :try_end_454
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_454} :catch_5e

    .line 1223
    :try_start_454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/high16 v28, 0x3f80

    add-float v22, v22, v28

    div-float v28, v22, v21

    const/high16 v29, 0x42c8

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    #calls: Lcom/sprint/w/installer/PackInstaller;->installApk(Ljava/lang/String;ZI)Z
    invoke-static {v0, v1, v2, v3}, Lcom/sprint/w/installer/PackInstaller;->access$1900(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/String;ZI)Z
    :try_end_47a
    .catchall {:try_start_454 .. :try_end_47a} :catchall_4b3

    move-result v24

    if-eqz v24, :cond_48a

    .line 1227
    :try_start_47d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    #getter for: Lcom/sprint/w/installer/PackInstaller;->lock:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lcom/sprint/w/installer/PackInstaller;->access$1800(Lcom/sprint/w/installer/PackInstaller;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->wait()V
    :try_end_48a
    .catchall {:try_start_47d .. :try_end_48a} :catchall_4b3
    .catch Ljava/lang/InterruptedException; {:try_start_47d .. :try_end_48a} :catch_4a4

    .line 1232
    :cond_48a
    :goto_48a
    :try_start_48a
    monitor-exit v25
    :try_end_48b
    .catchall {:try_start_48a .. :try_end_48b} :catchall_4b3

    .line 1233
    :try_start_48b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sprint/w/installer/PackInstaller;->mAbortInstall:Z

    move/from16 v24, v0

    if-eqz v24, :cond_377

    .line 1234
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "User cancelled"

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_4a1
    .catch Ljava/lang/Exception; {:try_start_48b .. :try_end_4a1} :catch_5e

    .line 1221
    :cond_4a1
    const/16 v24, 0x0

    goto :goto_443

    .line 1228
    :catch_4a4
    move-exception v6

    .line 1229
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_4a5
    invoke-static {}, Lcom/sprint/w/installer/PackInstaller;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v24

    const-string v26, "Something really bad happen while installing this app "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_48a

    .line 1232
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_4b3
    move-exception v24

    monitor-exit v25
    :try_end_4b5
    .catchall {:try_start_4a5 .. :try_end_4b5} :catchall_4b3

    :try_start_4b5
    throw v24

    .line 1237
    .end local v8           #entry:Ljava/util/jar/JarEntry;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #os:Ljava/io/OutputStream;
    .end local v16           #r:I
    .end local v18           #saveToFile:Ljava/io/File;
    :cond_4b6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_b5

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    #calls: Lcom/sprint/w/installer/PackInstaller;->configureHomeScreenAndFinish(Ljava/util/jar/JarFile;)V
    invoke-static {v0, v9}, Lcom/sprint/w/installer/PackInstaller;->access$2000(Lcom/sprint/w/installer/PackInstaller;Ljava/util/jar/JarFile;)V
    :try_end_4c7
    .catch Ljava/lang/Exception; {:try_start_4b5 .. :try_end_4c7} :catch_5e

    goto/16 :goto_b5

    .line 1248
    .end local v4           #N:I
    .end local v5           #apkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/jar/JarEntry;>;"
    .end local v7           #ee:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/jar/JarEntry;>;"
    .end local v9           #f:Ljava/util/jar/JarFile;
    .end local v10           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v17           #ringtoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/jar/JarEntry;>;"
    .end local v19           #storageNeeded:J
    .end local v21           #tItemCount:F
    .end local v22           #tItemsInstalled:F
    .end local v23           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/jar/JarEntry;>;"
    .local v6, e:Ljava/lang/Exception;
    :cond_4c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    move-object/from16 v25, v0

    sget-object v26, Lcom/sprint/w/installer/DeliveryState;->FAIL_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v24 .. v28}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto/16 :goto_a3
.end method
