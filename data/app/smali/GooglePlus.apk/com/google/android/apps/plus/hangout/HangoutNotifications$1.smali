.class final Lcom/google/android/apps/plus/hangout/HangoutNotifications$1;
.super Ljava/lang/Object;
.source "HangoutNotifications.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutNotifications;->registerHangoutSounds(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutNotifications$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 50
    const-string v0, "ExternalStorageUtils"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 51
    const-string v0, "ExternalStorageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan complete; uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutNotifications$1;->val$context:Landroid/content/Context;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutNotifications;->hasDingtone(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutNotifications;->access$000(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutNotifications$1;->val$context:Landroid/content/Context;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutNotifications;->setDingtone(Landroid/content/Context;Landroid/net/Uri;)V
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutNotifications;->access$100(Landroid/content/Context;Landroid/net/Uri;)V

    .line 58
    :cond_2e
    return-void
.end method
