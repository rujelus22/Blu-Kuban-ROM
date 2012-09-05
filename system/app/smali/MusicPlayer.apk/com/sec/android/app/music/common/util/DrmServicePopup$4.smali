.class Lcom/sec/android/app/music/common/util/DrmServicePopup$4;
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
    .line 316
    iput-object p1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$4;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 319
    invoke-static {}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCancelListener:onClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$4;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    iget-object v2, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup;->drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->setDrmPopupShown(Z)V

    .line 324
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$4;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    invoke-virtual {v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->dismiss()V

    .line 327
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$4;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupRedirectUrl:Landroid/net/Uri;

    if-eqz v2, :cond_6d

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, browserIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$4;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->popupRedirectUrl:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 330
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$4;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$200(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 332
    invoke-static {}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "In Service specific error, launch Browser with url"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :try_start_64
    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$4;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$200(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_64 .. :try_end_6d} :catch_6e

    .line 343
    .end local v0           #browserIntent:Landroid/content/Intent;
    :cond_6d
    :goto_6d
    return-void

    .line 335
    .restart local v0       #browserIntent:Landroid/content/Intent;
    :catch_6e
    move-exception v1

    .line 336
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "could not find a suitable activity for launching error url"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method
