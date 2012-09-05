.class Lcom/sec/android/app/music/common/util/DrmServicePopup$3;
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
    .line 268
    iput-object p1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 271
    invoke-static {}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlayListener:onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    iget-object v0, v0, Lcom/sec/android/app/music/common/util/DrmServicePopup;->drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->setDrmPopupShown(Z)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupFrom:I
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$300(Lcom/sec/android/app/music/common/util/DrmServicePopup;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_94

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->dismiss()V

    .line 278
    invoke-static {}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter from ListView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$200(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 282
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 283
    const-string v1, "list"

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->list:[J

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 284
    const-string v1, "list_position"

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const-string v1, "tabFrom"

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->tabId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    const-string v1, "keyword"

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->keyWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$200(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 313
    :goto_93
    return-void

    .line 290
    :cond_94
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->popupFrom:I
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$300(Lcom/sec/android/app/music/common/util/DrmServicePopup;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d8

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->dismiss()V

    .line 294
    invoke-static {}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Play on ListView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->tabId:I

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->keyWord:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicUtils;->setListFrom(ILjava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$200(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->list:[J

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->position:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto :goto_93

    .line 302
    :cond_d8
    invoke-static {}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPlayListener.onClick:CorePlayerService.class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->tabId:I

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->keyWord:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicUtils;->setListFrom(ILjava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$200(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->list:[J

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mDrmPopupData:Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;
    invoke-static {v2}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$100(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/music/common/util/DrmServicePopup$DrmPopupData;->position:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->dismiss()V

    goto :goto_93
.end method
