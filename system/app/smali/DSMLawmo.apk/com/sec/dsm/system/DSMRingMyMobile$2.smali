.class Lcom/sec/dsm/system/DSMRingMyMobile$2;
.super Ljava/lang/Object;
.source "DSMRingMyMobile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/dsm/system/DSMRingMyMobile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/dsm/system/DSMRingMyMobile;


# direct methods
.method constructor <init>(Lcom/sec/dsm/system/DSMRingMyMobile;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/sec/dsm/system/DSMRingMyMobile$2;->this$0:Lcom/sec/dsm/system/DSMRingMyMobile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 359
    :try_start_0
    new-instance v1, Lcom/sec/dsm/system/DSMManager;

    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile$2;->this$0:Lcom/sec/dsm/system/DSMRingMyMobile;

    #getter for: Lcom/sec/dsm/system/DSMRingMyMobile;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->access$000(Lcom/sec/dsm/system/DSMRingMyMobile;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/dsm/system/DSMManager;-><init>(Landroid/content/Context;)V

    .line 360
    .local v1, im:Lcom/sec/dsm/system/DSMManager;
    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMManager;->removeDSMRing()V

    .line 361
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile$2;->this$0:Lcom/sec/dsm/system/DSMRingMyMobile;

    invoke-virtual {v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->setOriginalVolume()V

    .line 362
    invoke-static {}, Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;->release()V

    .line 363
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile$2;->this$0:Lcom/sec/dsm/system/DSMRingMyMobile;

    invoke-virtual {v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->reenableLock()V

    .line 364
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile$2;->this$0:Lcom/sec/dsm/system/DSMRingMyMobile;

    #getter for: Lcom/sec/dsm/system/DSMRingMyMobile;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->access$000(Lcom/sec/dsm/system/DSMRingMyMobile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/dsm/system/DSMRingMyMobile$WakeLock;->goToSleepLCD(Landroid/content/Context;)V

    .line 365
    iget-object v2, p0, Lcom/sec/dsm/system/DSMRingMyMobile$2;->this$0:Lcom/sec/dsm/system/DSMRingMyMobile;

    invoke-virtual {v2}, Lcom/sec/dsm/system/DSMRingMyMobile;->finish()V
    :try_end_29
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_0 .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2f

    .line 371
    .end local v1           #im:Lcom/sec/dsm/system/DSMManager;
    :goto_29
    return-void

    .line 366
    :catch_2a
    move-exception v0

    .line 367
    .local v0, e:Lcom/sec/dsm/system/DSMException;
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMException;->printStackTrace()V

    goto :goto_29

    .line 368
    .end local v0           #e:Lcom/sec/dsm/system/DSMException;
    :catch_2f
    move-exception v0

    .line 369
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method
