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

.field final synthetic val$mediaRef:Lcom/google/android/apps/plus/api/MediaRef;

.field final synthetic val$streamIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$albumTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$albumLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$streamIds:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$mediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 257
    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iget-object v1, v1, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$albumTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$albumLabel:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$streamIds:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;->val$mediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->uploadImageThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/api/MediaRef;)Ljava/lang/Integer;

    move-result-object v0

    #setter for: Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRequestId:Ljava/lang/Integer;
    invoke-static {v6, v0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->access$002(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 259
    return-void
.end method
