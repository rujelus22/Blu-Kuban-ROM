.class Lcom/sec/android/app/music/common/util/DrmServicePopup$6;
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
    .line 360
    iput-object p1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$6;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.lgt.intent.action.OPEN_WAPURL"

    const-string v2, "wapurl://wapstore.musicon.co.kr/musicon/wap.info.ChargeInfo.web"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 366
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/music/common/util/DrmServicePopup$6;->this$0:Lcom/sec/android/app/music/common/util/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/common/util/DrmServicePopup;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/util/DrmServicePopup;->access$200(Lcom/sec/android/app/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 367
    return-void
.end method
