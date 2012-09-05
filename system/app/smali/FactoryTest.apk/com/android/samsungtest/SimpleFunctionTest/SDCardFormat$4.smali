.class Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$4;
.super Landroid/os/storage/StorageEventListener;
.source "SDCardFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)V
    .registers 2
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "++onStorageStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, interStoragePath:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 462
    const-string v1, "mounted"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string v1, "unmounted"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 463
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->runSDFormatThread()V
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$900(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)V

    .line 466
    :cond_5e
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$4;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "--onStorageStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void
.end method
