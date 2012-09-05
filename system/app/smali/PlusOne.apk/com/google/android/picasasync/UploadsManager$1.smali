.class Lcom/google/android/picasasync/UploadsManager$1;
.super Landroid/database/ContentObserver;
.source "UploadsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/UploadsManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/UploadsManager;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/UploadsManager;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager$1;->this$0:Lcom/google/android/picasasync/UploadsManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 226
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FsId changed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$1;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/picasasync/UploadsManager;->access$100(Lcom/google/android/picasasync/UploadsManager;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/google/android/picasasync/UploadsManager;->getFsId(Landroid/content/Context;)I
    invoke-static {v2}, Lcom/google/android/picasasync/UploadsManager;->access$200(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$1;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #calls: Lcom/google/android/picasasync/UploadsManager;->onFsIdChangedInternal()V
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$300(Lcom/google/android/picasasync/UploadsManager;)V

    .line 228
    return-void
.end method
