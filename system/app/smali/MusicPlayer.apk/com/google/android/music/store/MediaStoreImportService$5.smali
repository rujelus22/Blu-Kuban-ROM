.class Lcom/google/android/music/store/MediaStoreImportService$5;
.super Ljava/lang/Object;
.source "MediaStoreImportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/store/MediaStoreImportService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/store/MediaStoreImportService;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/google/android/music/store/MediaStoreImportService;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/music/store/MediaStoreImportService$5;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    iput p2, p0, Lcom/google/android/music/store/MediaStoreImportService$5;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService$5;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    iget v1, p0, Lcom/google/android/music/store/MediaStoreImportService$5;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MediaStoreImportService;->stopSelf(I)V

    .line 148
    return-void
.end method
