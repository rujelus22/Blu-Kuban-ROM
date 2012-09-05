.class Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;
.super Ljava/lang/Thread;
.source "FileCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/FileCopy/FileCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileCopyThread"
.end annotation


# static fields
.field private static LOADDATA_PATH:Ljava/lang/String;

.field private static mDstAmrPath:Ljava/lang/String;

.field private static mDstImagePath:Ljava/lang/String;

.field private static mDstMp3Path:Ljava/lang/String;

.field private static mDstVideoPath:Ljava/lang/String;

.field private static mSecondSrcAmrPath:Ljava/lang/String;

.field private static mSecondSrcImagePath:Ljava/lang/String;

.field private static mSecondSrcMp3Path:Ljava/lang/String;

.field private static mSecondSrcVideoPath:Ljava/lang/String;

.field private static mSrcAmrPath:Ljava/lang/String;

.field private static mSrcImagePath:Ljava/lang/String;

.field private static mSrcMp3Path:Ljava/lang/String;

.field private static mSrcVideoPath:Ljava/lang/String;


# instance fields
.field private final MP3TYPE:Ljava/lang/String;

.field private final PHOTOTYPE:Ljava/lang/String;

.field private final VIDEOTYPE:Ljava/lang/String;

.field private final VOICETYPE:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mp3:I

.field mp3Prefix:Ljava/lang/String;

.field photo:I

.field photoPrefix:Ljava/lang/String;

.field video:I

.field videoPrefix:Ljava/lang/String;

.field voicePrefix:Ljava/lang/String;

.field voicememo:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 840
    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstImagePath:Ljava/lang/String;

    .line 842
    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstAmrPath:Ljava/lang/String;

    .line 844
    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstMp3Path:Ljava/lang/String;

    .line 846
    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstVideoPath:Ljava/lang/String;

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSrcImagePath:Ljava/lang/String;

    .line 852
    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1400()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSrcAmrPath:Ljava/lang/String;

    .line 854
    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1400()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSrcMp3Path:Ljava/lang/String;

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSrcVideoPath:Ljava/lang/String;

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/loaddata_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->LOADDATA_PATH:Ljava/lang/String;

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->LOADDATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSecondSrcImagePath:Ljava/lang/String;

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->LOADDATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "voicememo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSecondSrcAmrPath:Ljava/lang/String;

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->LOADDATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSecondSrcMp3Path:Ljava/lang/String;

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->LOADDATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSecondSrcVideoPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .registers 7
    .parameter "context"
    .parameter "photo"
    .parameter "video"
    .parameter "mp3"
    .parameter "voicememo"

    .prologue
    .line 972
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 872
    const-string v0, ".jpg"

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->PHOTOTYPE:Ljava/lang/String;

    .line 874
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->VIDEOTYPE:Ljava/lang/String;

    .line 876
    const-string v0, ".mp3"

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->MP3TYPE:Ljava/lang/String;

    .line 878
    const-string v0, ".amr"

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->VOICETYPE:Ljava/lang/String;

    .line 884
    const-string v0, "mdata_vmemo"

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->voicePrefix:Ljava/lang/String;

    .line 886
    const-string v0, "mdata_mp"

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mp3Prefix:Ljava/lang/String;

    .line 888
    const-string v0, "mdata_pic"

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->photoPrefix:Ljava/lang/String;

    .line 890
    const-string v0, "mdata_vid"

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->videoPrefix:Ljava/lang/String;

    .line 974
    iput-object p1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mContext:Landroid/content/Context;

    .line 976
    iput p2, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->photo:I

    .line 978
    iput p3, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->video:I

    .line 980
    iput p4, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mp3:I

    .line 982
    iput p5, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->voicememo:I

    .line 984
    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;I)Ljava/io/File;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->getSrcFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->setSystemPath()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->setUserPath()V

    return-void
.end method

.method private copyFile(Ljava/lang/String;IILjava/lang/String;)V
    .registers 23
    .parameter "prefix"
    .parameter "num"
    .parameter "fileType"
    .parameter "dst"

    .prologue
    .line 1020
    if-nez p2, :cond_3

    .line 1098
    :goto_2
    return-void

    .line 1024
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->getSrcFile(I)Ljava/io/File;

    move-result-object v10

    .line 1028
    .local v10, srcFile:Ljava/io/File;
    if-nez v10, :cond_2e

    .line 1030
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->getName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'s source file is not ready!!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 1040
    :cond_2e
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2f
    move/from16 v0, p2

    if-ge v9, v0, :cond_136

    .line 1042
    new-instance v4, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v4, dstFile:Ljava/io/File;
    const/4 v7, 0x0

    .line 1046
    .local v7, from:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1050
    .local v11, to:Ljava/io/FileOutputStream;
    :try_start_77
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_125
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7c} :catch_15f

    .line 1052
    .end local v7           #from:Ljava/io/FileInputStream;
    .local v8, from:Ljava/io/FileInputStream;
    :try_start_7c
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_158
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_81} :catch_162

    .line 1054
    .end local v11           #to:Ljava/io/FileOutputStream;
    .local v12, to:Ljava/io/FileOutputStream;
    const/16 v13, 0x2000

    :try_start_83
    new-array v2, v13, [B

    .line 1058
    .local v2, buffer:[B
    :goto_85
    invoke-virtual {v8, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, bytesRead:I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_be

    const/4 v13, 0x0

    invoke-virtual {v12, v2, v13, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_90
    .catchall {:try_start_83 .. :try_end_90} :catchall_15b
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_90} :catch_91

    goto :goto_85

    .line 1062
    .end local v2           #buffer:[B
    .end local v3           #bytesRead:I
    :catch_91
    move-exception v5

    move-object v11, v12

    .end local v12           #to:Ljava/io/FileOutputStream;
    .restart local v11       #to:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 1064
    .end local v8           #from:Ljava/io/FileInputStream;
    .local v5, e:Ljava/lang/Exception;
    .restart local v7       #from:Ljava/io/FileInputStream;
    :goto_94
    :try_start_94
    const-string v13, "File Operation"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error occured while copying file"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_94 .. :try_end_b0} :catchall_125

    .line 1070
    if-eqz v7, :cond_b5

    .line 1072
    :try_start_b2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 1076
    :cond_b5
    if-eqz v11, :cond_ba

    .line 1078
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_ba} :catch_120

    .line 1040
    .end local v5           #e:Ljava/lang/Exception;
    :cond_ba
    :goto_ba
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2f

    .line 1060
    .end local v7           #from:Ljava/io/FileInputStream;
    .end local v11           #to:Ljava/io/FileOutputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #bytesRead:I
    .restart local v8       #from:Ljava/io/FileInputStream;
    .restart local v12       #to:Ljava/io/FileOutputStream;
    :cond_be
    :try_start_be
    const-string v13, "FileCopy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "File ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") is cloned"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catchall {:try_start_be .. :try_end_10c} :catchall_15b
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_10c} :catch_91

    .line 1070
    if-eqz v8, :cond_111

    .line 1072
    :try_start_10e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 1076
    :cond_111
    if-eqz v12, :cond_116

    .line 1078
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_116} :catch_119

    :cond_116
    move-object v11, v12

    .end local v12           #to:Ljava/io/FileOutputStream;
    .restart local v11       #to:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 1086
    .end local v8           #from:Ljava/io/FileInputStream;
    .restart local v7       #from:Ljava/io/FileInputStream;
    goto :goto_ba

    .line 1082
    .end local v7           #from:Ljava/io/FileInputStream;
    .end local v11           #to:Ljava/io/FileOutputStream;
    .restart local v8       #from:Ljava/io/FileInputStream;
    .restart local v12       #to:Ljava/io/FileOutputStream;
    :catch_119
    move-exception v6

    .line 1084
    .local v6, ex:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v11, v12

    .end local v12           #to:Ljava/io/FileOutputStream;
    .restart local v11       #to:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 1088
    .end local v8           #from:Ljava/io/FileInputStream;
    .restart local v7       #from:Ljava/io/FileInputStream;
    goto :goto_ba

    .line 1082
    .end local v2           #buffer:[B
    .end local v3           #bytesRead:I
    .end local v6           #ex:Ljava/io/IOException;
    .restart local v5       #e:Ljava/lang/Exception;
    :catch_120
    move-exception v6

    .line 1084
    .restart local v6       #ex:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ba

    .line 1068
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #ex:Ljava/io/IOException;
    :catchall_125
    move-exception v13

    .line 1070
    :goto_126
    if-eqz v7, :cond_12b

    .line 1072
    :try_start_128
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 1076
    :cond_12b
    if-eqz v11, :cond_130

    .line 1078
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_130} :catch_131

    .line 1086
    :cond_130
    :goto_130
    throw v13

    .line 1082
    :catch_131
    move-exception v6

    .line 1084
    .restart local v6       #ex:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_130

    .line 1094
    .end local v4           #dstFile:Ljava/io/File;
    .end local v6           #ex:Ljava/io/IOException;
    .end local v7           #from:Ljava/io/FileInputStream;
    .end local v11           #to:Ljava/io/FileOutputStream;
    :cond_136
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->getName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " copy is done!!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->showToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1068
    .restart local v4       #dstFile:Ljava/io/File;
    .restart local v8       #from:Ljava/io/FileInputStream;
    .restart local v11       #to:Ljava/io/FileOutputStream;
    :catchall_158
    move-exception v13

    move-object v7, v8

    .end local v8           #from:Ljava/io/FileInputStream;
    .restart local v7       #from:Ljava/io/FileInputStream;
    goto :goto_126

    .end local v7           #from:Ljava/io/FileInputStream;
    .end local v11           #to:Ljava/io/FileOutputStream;
    .restart local v8       #from:Ljava/io/FileInputStream;
    .restart local v12       #to:Ljava/io/FileOutputStream;
    :catchall_15b
    move-exception v13

    move-object v11, v12

    .end local v12           #to:Ljava/io/FileOutputStream;
    .restart local v11       #to:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #from:Ljava/io/FileInputStream;
    .restart local v7       #from:Ljava/io/FileInputStream;
    goto :goto_126

    .line 1062
    :catch_15f
    move-exception v5

    goto/16 :goto_94

    .end local v7           #from:Ljava/io/FileInputStream;
    .restart local v8       #from:Ljava/io/FileInputStream;
    :catch_162
    move-exception v5

    move-object v7, v8

    .end local v8           #from:Ljava/io/FileInputStream;
    .restart local v7       #from:Ljava/io/FileInputStream;
    goto/16 :goto_94
.end method

.method private getName(I)Ljava/lang/String;
    .registers 3
    .parameter "fileType"

    .prologue
    .line 1202
    packed-switch p1, :pswitch_data_12

    .line 1214
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1204
    :pswitch_5
    const-string v0, "Photo"

    goto :goto_4

    .line 1206
    :pswitch_8
    const-string v0, "Voice Memo"

    goto :goto_4

    .line 1208
    :pswitch_b
    const-string v0, "MP3"

    goto :goto_4

    .line 1210
    :pswitch_e
    const-string v0, "Video"

    goto :goto_4

    .line 1202
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private getSrcFile(I)Ljava/io/File;
    .registers 14
    .parameter "fileType"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1106
    const/4 v2, 0x0

    .line 1110
    .local v2, folder:Ljava/io/File;
    const-string v5, "FileCopy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting first path ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    packed-switch p1, :pswitch_data_150

    .line 1128
    :goto_26
    if-eqz v2, :cond_9a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 1130
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_34
    if-ge v3, v4, :cond_9a

    aget-object v1, v0, v3

    .line 1132
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 1134
    if-ne p1, v8, :cond_6d

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 1194
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4c
    :goto_4c
    return-object v1

    .line 1116
    :pswitch_4d
    new-instance v2, Ljava/io/File;

    .end local v2           #folder:Ljava/io/File;
    sget-object v5, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSrcImagePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #folder:Ljava/io/File;
    goto :goto_26

    .line 1118
    :pswitch_55
    new-instance v2, Ljava/io/File;

    .end local v2           #folder:Ljava/io/File;
    sget-object v5, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSrcAmrPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #folder:Ljava/io/File;
    goto :goto_26

    .line 1120
    :pswitch_5d
    new-instance v2, Ljava/io/File;

    .end local v2           #folder:Ljava/io/File;
    sget-object v5, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSrcMp3Path:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #folder:Ljava/io/File;
    goto :goto_26

    .line 1122
    :pswitch_65
    new-instance v2, Ljava/io/File;

    .end local v2           #folder:Ljava/io/File;
    sget-object v5, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #folder:Ljava/io/File;
    goto :goto_26

    .line 1136
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_6d
    if-ne p1, v9, :cond_7b

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".amr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 1138
    :cond_7b
    if-ne p1, v10, :cond_89

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mp3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 1140
    :cond_89
    if-ne p1, v11, :cond_97

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 1130
    :cond_97
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 1150
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_9a
    const-string v5, "FileCopy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting second path ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    packed-switch p1, :pswitch_data_15c

    .line 1168
    :goto_bb
    if-eqz v2, :cond_12e

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_12e

    .line 1170
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .restart local v0       #arr$:[Ljava/io/File;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_c9
    if-ge v3, v4, :cond_12e

    aget-object v1, v0, v3

    .line 1172
    .restart local v1       #f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 1174
    if-ne p1, v8, :cond_e1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 1176
    :cond_e1
    if-ne p1, v9, :cond_ef

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".amr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 1178
    :cond_ef
    if-ne p1, v10, :cond_fd

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mp3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 1180
    :cond_fd
    if-ne p1, v11, :cond_10b

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 1170
    :cond_10b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c9

    .line 1158
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :pswitch_10e
    new-instance v2, Ljava/io/File;

    .end local v2           #folder:Ljava/io/File;
    sget-object v5, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSecondSrcImagePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #folder:Ljava/io/File;
    goto :goto_bb

    .line 1160
    :pswitch_116
    new-instance v2, Ljava/io/File;

    .end local v2           #folder:Ljava/io/File;
    sget-object v5, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSecondSrcAmrPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #folder:Ljava/io/File;
    goto :goto_bb

    .line 1162
    :pswitch_11e
    new-instance v2, Ljava/io/File;

    .end local v2           #folder:Ljava/io/File;
    sget-object v5, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSecondSrcMp3Path:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #folder:Ljava/io/File;
    goto :goto_bb

    .line 1164
    :pswitch_126
    new-instance v2, Ljava/io/File;

    .end local v2           #folder:Ljava/io/File;
    sget-object v5, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mSecondSrcVideoPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #folder:Ljava/io/File;
    goto :goto_bb

    .line 1190
    :cond_12e
    const-string v5, "FileCopy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting file fail ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/4 v1, 0x0

    goto/16 :goto_4c

    .line 1114
    nop

    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_55
        :pswitch_5d
        :pswitch_65
    .end packed-switch

    .line 1156
    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_10e
        :pswitch_116
        :pswitch_11e
        :pswitch_126
    .end packed-switch
.end method

.method private setSystemPath()V
    .registers 2

    .prologue
    .line 934
    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1600()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstImagePath:Ljava/lang/String;

    .line 936
    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1600()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstAmrPath:Ljava/lang/String;

    .line 938
    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1600()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstMp3Path:Ljava/lang/String;

    .line 940
    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1600()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstVideoPath:Ljava/lang/String;

    .line 952
    return-void
.end method

.method private setUserPath()V
    .registers 2

    .prologue
    .line 910
    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1500()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstImagePath:Ljava/lang/String;

    .line 912
    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1500()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstAmrPath:Ljava/lang/String;

    .line 914
    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1500()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstMp3Path:Ljava/lang/String;

    .line 916
    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1500()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstVideoPath:Ljava/lang/String;

    .line 928
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .parameter "content"

    .prologue
    .line 958
    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1700()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread$1;

    invoke-direct {v1, p0, p1}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread$1;-><init>(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 968
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->photoPrefix:Ljava/lang/String;

    iget v1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->photo:I

    const/4 v2, 0x1

    sget-object v3, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstImagePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->copyFile(Ljava/lang/String;IILjava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mp3Prefix:Ljava/lang/String;

    iget v1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mp3:I

    const/4 v2, 0x3

    sget-object v3, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstMp3Path:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->copyFile(Ljava/lang/String;IILjava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->videoPrefix:Ljava/lang/String;

    iget v1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->video:I

    const/4 v2, 0x4

    sget-object v3, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstVideoPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->copyFile(Ljava/lang/String;IILjava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->voicePrefix:Ljava/lang/String;

    iget v1, p0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->voicememo:I

    const/4 v2, 0x2

    sget-object v3, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->mDstAmrPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->copyFile(Ljava/lang/String;IILjava/lang/String;)V

    .line 1000
    invoke-static {}, Lcom/android/samsungtest/FileCopy/FileCopy;->access$1700()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread$2;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread$2;-><init>(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1010
    return-void
.end method
