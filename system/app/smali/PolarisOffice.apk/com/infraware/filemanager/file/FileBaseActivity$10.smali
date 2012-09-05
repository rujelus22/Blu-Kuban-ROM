.class Lcom/infraware/filemanager/file/FileBaseActivity$10;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/file/FileBaseActivity;->updateMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/file/FileBaseActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$10;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 974
    invoke-static {}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$3()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x190

    move/from16 v0, v16

    if-lt v15, v0, :cond_22

    .line 976
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/file/FileBaseActivity$10;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v15}, Lcom/infraware/filemanager/file/FileBaseActivity;->onMediaDBBroadCast()V

    .line 977
    invoke-static {}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$3()Ljava/util/ArrayList;

    move-result-object v16

    monitor-enter v16

    :try_start_1a
    invoke-static {}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$3()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    monitor-exit v16
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_55

    .line 980
    :cond_22
    const/4 v9, 0x1

    .line 981
    .local v9, nMaxMediaCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/file/FileBaseActivity$10;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    const v16, 0x7f08030e

    invoke-virtual/range {v15 .. v16}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "FV03"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_38

    .line 982
    const/16 v9, 0xc8

    .line 984
    :cond_38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 985
    .local v5, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/media/MediaItem;>;"
    :cond_3d
    :goto_3d
    invoke-static {}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$3()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_58

    .line 1090
    :cond_47
    :goto_47
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1a1

    .line 1091
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/file/FileBaseActivity$10;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v15}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPostScan()V

    .line 1104
    :goto_54
    return-void

    .line 977
    .end local v5           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/media/MediaItem;>;"
    .end local v9           #nMaxMediaCount:I
    :catchall_55
    move-exception v15

    :try_start_56
    monitor-exit v16
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v15

    .line 987
    .restart local v5       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/media/MediaItem;>;"
    .restart local v9       #nMaxMediaCount:I
    :cond_58
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 988
    .local v12, stateSd:Ljava/lang/String;
    const-string v15, "mounted"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6f

    .line 990
    invoke-static {}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$3()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 991
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_47

    .line 995
    :cond_6f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v15, v9, :cond_47

    .line 999
    invoke-static {}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$3()Ljava/util/ArrayList;

    move-result-object v16

    monitor-enter v16

    .line 1001
    :try_start_7a
    invoke-static {}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$3()Ljava/util/ArrayList;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/infraware/filemanager/media/MediaItem;

    .line 999
    .local v4, mediaItem:Lcom/infraware/filemanager/media/MediaItem;
    monitor-exit v16
    :try_end_89
    .catchall {:try_start_7a .. :try_end_89} :catchall_ef

    .line 1005
    iget-object v15, v4, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    if-eqz v15, :cond_bb

    iget-object v15, v4, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_bb

    .line 1007
    iget-object v15, v4, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    const/16 v16, 0x2e

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1008
    .local v3, idx_exe:I
    iget-object v15, v4, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v3, v15, :cond_bb

    .line 1009
    iget-object v15, v4, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v0, v4, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v4, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    .line 1012
    .end local v3           #idx_exe:I
    :cond_bb
    iget-object v11, v4, Lcom/infraware/filemanager/media/MediaItem;->sourcePath:Ljava/lang/String;

    .line 1013
    .local v11, sourceName:Ljava/lang/String;
    iget-object v13, v4, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    .line 1015
    .local v13, targetName:Ljava/lang/String;
    if-eqz v11, :cond_c7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_c8

    .line 1016
    :cond_c7
    move-object v11, v13

    .line 1018
    :cond_c8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/file/FileBaseActivity$10;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v15}, Lcom/infraware/filemanager/file/FileBaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v11}, Lcom/infraware/common/util/Utils;->getMimeInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/infraware/common/define/CMDefine$MimeInfo;

    move-result-object v6

    .line 1019
    .local v6, mimeInfo:Lcom/infraware/common/define/CMDefine$MimeInfo;
    if-eqz v6, :cond_f2

    iget v15, v6, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaType:I

    if-eqz v15, :cond_f2

    .line 1021
    iget v15, v6, Lcom/infraware/common/define/CMDefine$MimeInfo;->id:I

    iput v15, v4, Lcom/infraware/filemanager/media/MediaItem;->contentId:I

    .line 1022
    iget v15, v6, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaType:I

    iput v15, v4, Lcom/infraware/filemanager/media/MediaItem;->mediaType:I

    .line 1023
    iget-object v15, v6, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaUri:Landroid/net/Uri;

    iput-object v15, v4, Lcom/infraware/filemanager/media/MediaItem;->mediaUri:Landroid/net/Uri;

    .line 1024
    iget-object v15, v6, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    iput-object v15, v4, Lcom/infraware/filemanager/media/MediaItem;->mimeType:Ljava/lang/String;

    .line 1026
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    .line 999
    .end local v4           #mediaItem:Lcom/infraware/filemanager/media/MediaItem;
    .end local v6           #mimeInfo:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .end local v11           #sourceName:Ljava/lang/String;
    .end local v13           #targetName:Ljava/lang/String;
    :catchall_ef
    move-exception v15

    :try_start_f0
    monitor-exit v16
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw v15

    .line 1030
    .restart local v4       #mediaItem:Lcom/infraware/filemanager/media/MediaItem;
    .restart local v6       #mimeInfo:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .restart local v11       #sourceName:Ljava/lang/String;
    .restart local v13       #targetName:Ljava/lang/String;
    :cond_f2
    iget v15, v4, Lcom/infraware/filemanager/media/MediaItem;->dbAction:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3d

    .line 1033
    const/16 v15, 0x2e

    invoke-virtual {v13, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1034
    .restart local v3       #idx_exe:I
    if-ltz v3, :cond_3d

    .line 1037
    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1038
    .local v2, ext:Ljava/lang/String;
    const/4 v8, -0x1

    .line 1039
    .local v8, mime_index:I
    const/4 v7, 0x0

    .line 1041
    .local v7, mimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/infraware/filemanager/porting/DRM;->isDRMExt(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12a

    .line 1043
    invoke-static {}, Lcom/infraware/filemanager/porting/DRM;->getInstance()Lcom/infraware/filemanager/porting/DRM;

    move-result-object v1

    .line 1044
    .local v1, drm:Lcom/infraware/filemanager/porting/DRM;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/file/FileBaseActivity$10;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v15}, Lcom/infraware/filemanager/file/FileBaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v1, v13, v15}, Lcom/infraware/filemanager/porting/DRM;->isDRM(Ljava/lang/String;Landroid/content/Context;)I

    move-result v15

    if-lez v15, :cond_12a

    .line 1046
    invoke-virtual {v1, v13}, Lcom/infraware/filemanager/porting/DRM;->getContentType(Ljava/lang/String;)I

    move-result v8

    .line 1047
    packed-switch v8, :pswitch_data_1d6

    .line 1053
    :goto_129
    const/4 v8, -0x1

    .line 1057
    .end local v1           #drm:Lcom/infraware/filemanager/porting/DRM;
    :cond_12a
    if-nez v7, :cond_138

    .line 1058
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1060
    :cond_138
    if-eqz v7, :cond_144

    .line 1061
    const/16 v15, 0x2f

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 1063
    :cond_144
    const/4 v15, -0x1

    if-eq v8, v15, :cond_3d

    .line 1065
    const/4 v15, 0x0

    invoke-virtual {v7, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1066
    .local v14, type:Ljava/lang/String;
    const-string v15, "application/ogg"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_156

    .line 1067
    const-string v14, "audio"

    .line 1069
    :cond_156
    const-string v15, "application/vnd.smaf"

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_160

    .line 1070
    const-string v14, "audio"

    .line 1072
    :cond_160
    const-string v15, "image"

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_17f

    .line 1073
    const/4 v15, 0x1

    iput v15, v4, Lcom/infraware/filemanager/media/MediaItem;->mediaType:I

    .line 1081
    :cond_16b
    :goto_16b
    iget v15, v4, Lcom/infraware/filemanager/media/MediaItem;->mediaType:I

    if-eqz v15, :cond_3d

    .line 1083
    iput-object v7, v4, Lcom/infraware/filemanager/media/MediaItem;->mimeType:Ljava/lang/String;

    .line 1084
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    .line 1049
    .end local v14           #type:Ljava/lang/String;
    .restart local v1       #drm:Lcom/infraware/filemanager/porting/DRM;
    :pswitch_176
    const-string v7, "image/*"

    goto :goto_129

    .line 1050
    :pswitch_179
    const-string v7, "audio/*"

    goto :goto_129

    .line 1051
    :pswitch_17c
    const-string v7, "video/*"

    goto :goto_129

    .line 1074
    .end local v1           #drm:Lcom/infraware/filemanager/porting/DRM;
    .restart local v14       #type:Ljava/lang/String;
    :cond_17f
    const-string v15, "audio"

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_18b

    .line 1075
    const/4 v15, 0x2

    iput v15, v4, Lcom/infraware/filemanager/media/MediaItem;->mediaType:I

    goto :goto_16b

    .line 1076
    :cond_18b
    const-string v15, "video"

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_197

    .line 1077
    const/4 v15, 0x3

    iput v15, v4, Lcom/infraware/filemanager/media/MediaItem;->mediaType:I

    goto :goto_16b

    .line 1078
    :cond_197
    invoke-static {v7}, Lcom/infraware/common/define/CMModelDefine;->isDocumentsFile(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16b

    .line 1079
    const/4 v15, 0x4

    iput v15, v4, Lcom/infraware/filemanager/media/MediaItem;->mediaType:I

    goto :goto_16b

    .line 1093
    .end local v2           #ext:Ljava/lang/String;
    .end local v3           #idx_exe:I
    .end local v4           #mediaItem:Lcom/infraware/filemanager/media/MediaItem;
    .end local v6           #mimeInfo:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v8           #mime_index:I
    .end local v11           #sourceName:Ljava/lang/String;
    .end local v12           #stateSd:Ljava/lang/String;
    .end local v13           #targetName:Ljava/lang/String;
    .end local v14           #type:Ljava/lang/String;
    :cond_1a1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v15, v9, :cond_1c7

    .line 1095
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/file/FileBaseActivity$10;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v15}, Lcom/infraware/filemanager/file/FileBaseActivity;->onMediaDBBroadCast()V

    .line 1096
    invoke-static {}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$3()Ljava/util/ArrayList;

    move-result-object v16

    monitor-enter v16

    :try_start_1b3
    invoke-static {}, Lcom/infraware/filemanager/file/FileBaseActivity;->access$3()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    monitor-exit v16
    :try_end_1bb
    .catchall {:try_start_1b3 .. :try_end_1bb} :catchall_1c4

    .line 1097
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/file/FileBaseActivity$10;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v15}, Lcom/infraware/filemanager/file/FileBaseActivity;->onPostScan()V

    goto/16 :goto_54

    .line 1096
    :catchall_1c4
    move-exception v15

    :try_start_1c5
    monitor-exit v16
    :try_end_1c6
    .catchall {:try_start_1c5 .. :try_end_1c6} :catchall_1c4

    throw v15

    .line 1101
    :cond_1c7
    new-instance v10, Lcom/infraware/filemanager/media/MediaScanner;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/file/FileBaseActivity$10;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-direct {v10, v15}, Lcom/infraware/filemanager/media/MediaScanner;-><init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V

    .line 1102
    .local v10, scanner:Lcom/infraware/filemanager/media/MediaScanner;
    invoke-virtual {v10, v5}, Lcom/infraware/filemanager/media/MediaScanner;->scanFile(Ljava/util/ArrayList;)V

    goto/16 :goto_54

    .line 1047
    nop

    :pswitch_data_1d6
    .packed-switch 0x1
        :pswitch_176
        :pswitch_179
        :pswitch_17c
    .end packed-switch
.end method
