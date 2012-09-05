.class Lcom/google/android/picasasync/PicasaStore$4;
.super Landroid/os/AsyncTask;
.source "PicasaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/PicasaStore;

.field final synthetic val$args:Ljava/lang/Object;

.field final synthetic val$func:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;

.field final synthetic val$pipe:[Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/PicasaStore;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaStore$4;->this$0:Lcom/google/android/picasasync/PicasaStore;

    iput-object p2, p0, Lcom/google/android/picasasync/PicasaStore$4;->val$func:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;

    iput-object p3, p0, Lcom/google/android/picasasync/PicasaStore$4;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/google/android/picasasync/PicasaStore$4;->val$args:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "params"

    .prologue
    const/4 v3, 0x1

    .line 788
    :try_start_1
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore$4;->val$func:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaStore$4;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaStore$4;->val$args:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_16

    .line 789
    const/4 v0, 0x0

    .line 791
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaStore$4;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    :catchall_16
    move-exception v0

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaStore$4;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method
