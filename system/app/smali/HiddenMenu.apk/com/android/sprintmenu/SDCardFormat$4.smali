.class Lcom/android/sprintmenu/SDCardFormat$4;
.super Landroid/os/storage/StorageEventListener;
.source "SDCardFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/SDCardFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/SDCardFormat;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/SDCardFormat;)V
    .registers 2
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/sprintmenu/SDCardFormat$4;->this$0:Lcom/android/sprintmenu/SDCardFormat;

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
    .line 447
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat$4;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #getter for: Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/SDCardFormat;->access$100(Lcom/android/sprintmenu/SDCardFormat;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "++onStorageStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat$4;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #getter for: Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/SDCardFormat;->access$100(Lcom/android/sprintmenu/SDCardFormat;)Ljava/lang/String;

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

    .line 450
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, interStoragePath:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 453
    const-string v1, "mounted"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string v1, "unmounted"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 455
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat$4;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #calls: Lcom/android/sprintmenu/SDCardFormat;->runSDFormatThread()V
    invoke-static {v1}, Lcom/android/sprintmenu/SDCardFormat;->access$900(Lcom/android/sprintmenu/SDCardFormat;)V

    .line 458
    :cond_5e
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat$4;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #getter for: Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/SDCardFormat;->access$100(Lcom/android/sprintmenu/SDCardFormat;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "--onStorageStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void
.end method
