.class Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;
.super Ljava/lang/Object;
.source "SendMessageGeneralOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->uploadPhoto(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

.field final synthetic val$albumLabel:Ljava/lang/String;

.field final synthetic val$albumTitle:Ljava/lang/String;

.field final synthetic val$imageUri:Ljava/lang/String;

.field final synthetic val$streamIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$imageUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$albumTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$albumLabel:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$streamIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 248
    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iget-object v1, v1, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$imageUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    .line 250
    .local v0, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iget-object v1, v1, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iget-object v2, v2, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$albumTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$albumLabel:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$streamIds:Ljava/util/List;

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/service/EsService;->uploadImageThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/api/MediaRef;)Ljava/lang/Integer;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRequestId:Ljava/lang/Integer;
    invoke-static {v7, v1}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->access$002(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 252
    return-void
.end method
