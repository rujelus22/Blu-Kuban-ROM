.class Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;
.super Ljava/lang/Object;
.source "UnzipProgressHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 26

    .prologue
    .line 166
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zipType:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$2(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    move-result-object v20

    sget-object v21, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->Encryption:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_81

    .line 167
    new-instance v18, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v21, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->absPath:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$3(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v21, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->password:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$4(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 168
    .local v18, zdis:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v22, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->charSet:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$5(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    #setter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zis:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    invoke-static/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$6(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;)V

    .line 175
    .end local v18           #zdis:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;
    :cond_58
    :goto_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zis:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$7(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v19

    .local v19, ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    if-nez v19, :cond_de

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zis:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$7(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->close()V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->sendEmptyMessage(I)Z

    .line 262
    .end local v19           #ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :goto_80
    return-void

    .line 171
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    new-instance v21, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v23, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->absPath:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$3(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v23, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->charSet:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$5(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    #setter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zis:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    invoke-static/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$6(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_aa} :catch_ab

    goto :goto_58

    .line 245
    :catch_ab
    move-exception v6

    .line 246
    .local v6, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->isCancel:Z
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$17(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Z

    move-result v20

    if-eqz v20, :cond_2ed

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v21, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;
    invoke-static/range {v21 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$1(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lcom/infraware/filemanager/file/FileBaseActivity;

    move-result-object v21

    const v22, 0x7f0800a2

    invoke-virtual/range {v21 .. v22}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    #setter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->errorMsg:Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$16(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Ljava/lang/String;)V

    .line 260
    :goto_d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->sendEmptyMessage(I)Z

    goto :goto_80

    .line 176
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v19       #ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_de
    :try_start_de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->curIndex:I
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$8(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    #setter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->curIndex:I
    invoke-static/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$9(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$10(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v21, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->curIndex:I
    invoke-static/range {v21 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$8(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setProgress(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v21

    #setter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->fileNameToUnzip:Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$11(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v21, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->fileNameToUnzip:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$12(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/infraware/common/util/FileUtils;->convertFileNameToValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    #setter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->fileNameToUnzip:Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$11(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$10(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v21, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->fileNameToUnzip:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$12(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v22, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetDir:Ljava/io/File;
    invoke-static/range {v22 .. v22}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$13(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/io/File;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v23, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->fileNameToUnzip:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$12(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #setter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetFile:Ljava/io/File;
    invoke-static/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$14(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Ljava/io/File;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetFile:Ljava/io/File;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$15(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_17b

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_58

    .line 188
    :cond_17b
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v20

    if-eqz v20, :cond_190

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetDir:Ljava/io/File;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$13(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdir()Z

    goto/16 :goto_58

    .line 192
    :cond_190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetFile:Ljava/io/File;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$15(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    if-eqz v20, :cond_1c5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetFile:Ljava/io/File;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$15(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_1c5

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetFile:Ljava/io/File;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$15(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_1c5} :catch_ab

    .line 195
    :cond_1c5
    const/4 v9, 0x0

    .line 196
    .local v9, freeBlock:I
    const/4 v4, 0x0

    .line 198
    .local v4, blockSize:I
    :try_start_1c7
    new-instance v15, Landroid/os/StatFs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetFile:Ljava/io/File;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$15(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 199
    .local v15, sf:Landroid/os/StatFs;
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    .line 200
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1e3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c7 .. :try_end_1e3} :catch_227
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1e3} :catch_ab

    move-result v4

    .line 206
    :try_start_1e4
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v16

    .line 207
    .local v16, size:J
    const-wide/32 v20, 0x500000

    cmp-long v20, v16, v20

    if-lez v20, :cond_24f

    const-wide/32 v20, 0x280000

    add-long v20, v20, v16

    :goto_1f4
    int-to-long v0, v4

    move-wide/from16 v22, v0

    div-long v12, v20, v22

    .line 208
    .local v12, minFree:J
    int-to-long v0, v9

    move-wide/from16 v20, v0

    cmp-long v20, v20, v12

    if-gez v20, :cond_256

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v21, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;
    invoke-static/range {v21 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$1(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lcom/infraware/filemanager/file/FileBaseActivity;

    move-result-object v21

    const v22, 0x7f0800bd

    invoke-virtual/range {v21 .. v22}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    #setter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->errorMsg:Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$16(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_80

    .line 201
    .end local v12           #minFree:J
    .end local v15           #sf:Landroid/os/StatFs;
    .end local v16           #size:J
    :catch_227
    move-exception v6

    .line 202
    .local v6, e:Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v21, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;
    invoke-static/range {v21 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$1(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lcom/infraware/filemanager/file/FileBaseActivity;

    move-result-object v21

    const v22, 0x7f0800bd

    invoke-virtual/range {v21 .. v22}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    #setter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->errorMsg:Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$16(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_80

    .line 207
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    .restart local v15       #sf:Landroid/os/StatFs;
    .restart local v16       #size:J
    :cond_24f
    const-wide/16 v20, 0x2

    div-long v20, v16, v20
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_253} :catch_ab

    add-long v20, v20, v16

    goto :goto_1f4

    .line 215
    .restart local v12       #minFree:J
    :cond_256
    const/4 v7, 0x0

    .line 217
    .local v7, fos:Ljava/io/FileOutputStream;
    const/high16 v20, 0x1

    :try_start_259
    move/from16 v0, v20

    new-array v5, v0, [B

    .line 218
    .local v5, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zis:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$7(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->read([B)I

    move-result v10

    .line 220
    .local v10, len:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_285

    .line 221
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetFile:Ljava/io/File;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$15(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .local v8, fos:Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 224
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :cond_285
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v5, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->isCancel:Z
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$17(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Z

    move-result v20

    if-eqz v20, :cond_2a5

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zis:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$7(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->close()V

    .line 227
    :cond_2a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zis:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$7(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->read([B)I

    move-result v10

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_285

    .line 229
    new-instance v11, Lcom/infraware/filemanager/media/MediaItem;

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Lcom/infraware/filemanager/media/MediaItem;-><init>(Ljava/lang/String;)V

    .line 230
    .local v11, mediaItem:Lcom/infraware/filemanager/media/MediaItem;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v11, Lcom/infraware/filemanager/media/MediaItem;->dbAction:I

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetFile:Ljava/io/File;
    invoke-static/range {v20 .. v20}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$15(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/infraware/filemanager/media/MediaItem;->targetPath:Ljava/lang/String;

    .line 233
    invoke-static {v11}, Lcom/infraware/filemanager/file/FileBaseActivity;->onAddMedia(Lcom/infraware/filemanager/media/MediaItem;)V
    :try_end_2df
    .catchall {:try_start_259 .. :try_end_2df} :catchall_2e6

    .line 236
    if-eqz v7, :cond_58

    .line 237
    :try_start_2e1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_58

    .line 235
    .end local v5           #buffer:[B
    .end local v10           #len:I
    .end local v11           #mediaItem:Lcom/infraware/filemanager/media/MediaItem;
    :catchall_2e6
    move-exception v20

    .line 236
    if-eqz v7, :cond_2ec

    .line 237
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 239
    :cond_2ec
    throw v20
    :try_end_2ed
    .catch Ljava/lang/Exception; {:try_start_2e1 .. :try_end_2ed} :catch_ab

    .line 254
    .end local v4           #blockSize:I
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #freeBlock:I
    .end local v12           #minFree:J
    .end local v15           #sf:Landroid/os/StatFs;
    .end local v16           #size:J
    .end local v19           #ze:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .local v6, e:Ljava/lang/Exception;
    :cond_2ed
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 255
    .local v14, msg:Ljava/lang/String;
    if-eqz v14, :cond_319

    const-string v20, "data error"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_319

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v21, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;
    invoke-static/range {v21 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$1(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lcom/infraware/filemanager/file/FileBaseActivity;

    move-result-object v21

    const v22, 0x7f0800c3

    invoke-virtual/range {v21 .. v22}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    #setter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->errorMsg:Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$16(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Ljava/lang/String;)V

    goto/16 :goto_d2

    .line 258
    :cond_319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    move-object/from16 v21, v0

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;
    invoke-static/range {v21 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$1(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lcom/infraware/filemanager/file/FileBaseActivity;

    move-result-object v21

    const v22, 0x7f0800c5

    invoke-virtual/range {v21 .. v22}, Lcom/infraware/filemanager/file/FileBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    #setter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->errorMsg:Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$16(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Ljava/lang/String;)V

    goto/16 :goto_d2
.end method
