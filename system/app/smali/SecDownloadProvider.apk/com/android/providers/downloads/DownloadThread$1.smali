.class Lcom/android/providers/downloads/DownloadThread$1;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadThread;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/DownloadThread;)V
    .registers 2
    .parameter

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadThread$1;->this$0:Lcom/android/providers/downloads/DownloadThread;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .registers 5
    .parameter "meteredIfaces"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread$1;->this$0:Lcom/android/providers/downloads/DownloadThread;

    #getter for: Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadThread;->access$300(Lcom/android/providers/downloads/DownloadThread;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "DownloadManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread$1;->this$0:Lcom/android/providers/downloads/DownloadThread;

    const/4 v1, 0x1

    #setter for: Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z
    invoke-static {v0, v1}, Lcom/android/providers/downloads/DownloadThread;->access$502(Lcom/android/providers/downloads/DownloadThread;Z)Z

    .line 994
    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 6
    .parameter "uid"
    .parameter "uidRules"

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread$1;->this$0:Lcom/android/providers/downloads/DownloadThread;

    #getter for: Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadThread;->access$300(Lcom/android/providers/downloads/DownloadThread;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "DownloadManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread$1;->this$0:Lcom/android/providers/downloads/DownloadThread;

    #getter for: Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadThread;->access$400(Lcom/android/providers/downloads/DownloadThread;)Lcom/android/providers/downloads/DownloadInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    if-ne p1, v0, :cond_1d

    .line 984
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread$1;->this$0:Lcom/android/providers/downloads/DownloadThread;

    const/4 v1, 0x1

    #setter for: Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z
    invoke-static {v0, v1}, Lcom/android/providers/downloads/DownloadThread;->access$502(Lcom/android/providers/downloads/DownloadThread;Z)Z

    .line 986
    :cond_1d
    return-void
.end method
