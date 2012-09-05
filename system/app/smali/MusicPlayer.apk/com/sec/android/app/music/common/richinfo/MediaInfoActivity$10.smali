.class Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$10;
.super Landroid/os/Handler;
.source "MediaInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$10;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 343
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "RESPONSE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, ums:Ljava/lang/String;
    const-string v2, "FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 345
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasShop:Z

    .line 347
    :cond_15
    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 348
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasShop:Z

    .line 349
    const-string v2, "OUTPUT="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sShopUrl:Ljava/lang/String;

    .line 355
    :cond_2e
    sget-boolean v2, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasShop:Z

    if-eqz v2, :cond_37

    .line 357
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$10;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->parsingRichInfoData()V
    invoke-static {v2}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$800(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    .line 359
    :cond_37
    return-void
.end method
