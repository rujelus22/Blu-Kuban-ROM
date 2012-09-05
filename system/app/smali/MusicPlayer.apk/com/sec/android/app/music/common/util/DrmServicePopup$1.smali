.class Lcom/sec/android/app/music/common/util/DrmServicePopup$1;
.super Ljava/lang/Object;
.source "DrmServicePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/util/DrmServicePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/util/DrmServicePopup;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$1;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 246
    invoke-static {}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBuyListener:onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$1;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    iget-object v1, v1, Lcom/sec/android/app/music/common/util/DrmServicePopup;->drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$1;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getUrlInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$1;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->launchBrowser(Ljava/lang/String;)Z

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$1;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    iget-object v1, v1, Lcom/sec/android/app/music/common/util/DrmServicePopup;->drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->setDrmPopupShown(Z)V

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$1;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->dismiss()V

    .line 253
    return-void
.end method
