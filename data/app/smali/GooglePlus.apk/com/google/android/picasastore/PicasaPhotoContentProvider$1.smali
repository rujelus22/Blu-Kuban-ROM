.class Lcom/google/android/picasastore/PicasaPhotoContentProvider$1;
.super Landroid/database/ContentObserver;
.source "PicasaPhotoContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasastore/PicasaPhotoContentProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasastore/PicasaPhotoContentProvider;


# direct methods
.method constructor <init>(Lcom/google/android/picasastore/PicasaPhotoContentProvider;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider$1;->this$0:Lcom/google/android/picasastore/PicasaPhotoContentProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider$1;->this$0:Lcom/google/android/picasastore/PicasaPhotoContentProvider;

    #calls: Lcom/google/android/picasastore/PicasaPhotoContentProvider;->onFsIdChanged()V
    invoke-static {v0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->access$000(Lcom/google/android/picasastore/PicasaPhotoContentProvider;)V

    .line 118
    return-void
.end method
