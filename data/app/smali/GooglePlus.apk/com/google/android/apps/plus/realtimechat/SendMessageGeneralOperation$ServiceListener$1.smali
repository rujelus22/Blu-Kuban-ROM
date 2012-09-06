.class Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener$1;
.super Ljava/lang/Object;
.source "SendMessageGeneralOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;->onImageThumbnailUploaded(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;Lcom/google/android/apps/plus/service/ServiceResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener$1;->this$1:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener$1;->this$1:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    #getter for: Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->access$300(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 70
    return-void
.end method
