.class Lcom/cooliris/media/CropImage$2$1$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cooliris/media/CropImage$2$1;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage$2$1;)V
    .registers 2
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/cooliris/media/CropImage$2$1$1;->this$1:Lcom/cooliris/media/CropImage$2$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage$2$1$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/cooliris/media/CropImage$2$1$1;->this$1:Lcom/cooliris/media/CropImage$2$1;

    iget-object v0, v0, Lcom/cooliris/media/CropImage$2$1;->this$0:Lcom/cooliris/media/CropImage$2;

    iget-object v0, v0, Lcom/cooliris/media/CropImage$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cooliris/media/CropImage$2$1$1;->this$1:Lcom/cooliris/media/CropImage$2$1;

    iget-object v1, v1, Lcom/cooliris/media/CropImage$2$1;->this$0:Lcom/cooliris/media/CropImage$2;

    iget-object v1, v1, Lcom/cooliris/media/CropImage$2;->val$contentUri:Ljava/lang/String;

    sget-object v2, Lcom/cooliris/media/LocalDataSource;->DOWNLOAD_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cooliris/media/UriTexture;->writeHttpDataInDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
