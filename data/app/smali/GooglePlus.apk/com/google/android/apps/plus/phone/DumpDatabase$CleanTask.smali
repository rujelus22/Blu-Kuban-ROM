.class Lcom/google/android/apps/plus/phone/DumpDatabase$CleanTask;
.super Landroid/os/AsyncTask;
.source "DumpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/DumpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CleanTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/DumpDatabase;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$CleanTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 181
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/DumpDatabase$CleanTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 14
    .parameter "params"

    .prologue
    .line 184
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$CleanTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$100(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 185
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v3

    .line 186
    .local v3, index:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "es"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, dbName:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$CleanTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$100(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 190
    .local v2, inFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_86

    .line 191
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 197
    .local v4, originalSize:J
    :goto_41
    :try_start_41
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$CleanTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$100(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v0, v8}, Lcom/google/android/apps/plus/content/EsProvider;->cleanupData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_89

    .line 199
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$CleanTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$100(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 200
    .local v6, outFile:Ljava/io/File;
    const-string v7, "DumpDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Clean complete; orig size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", copy size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$CleanTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$000(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 205
    const/4 v7, 0x0

    return-object v7

    .line 193
    .end local v4           #originalSize:J
    .end local v6           #outFile:Ljava/io/File;
    :cond_86
    const-wide/16 v4, 0x0

    .restart local v4       #originalSize:J
    goto :goto_41

    .line 199
    :catchall_89
    move-exception v7

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$CleanTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$100(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 200
    .restart local v6       #outFile:Ljava/io/File;
    const-string v8, "DumpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clean complete; orig size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", copy size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    throw v7
.end method
