.class public Lcom/sprint/w/installer/SDCardStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SDCardStateReceiver.java"


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    const-class v0, Lcom/sprint/w/installer/SDCardStateReceiver;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/SDCardStateReceiver;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 18
    iget-object v6, p0, Lcom/sprint/w/installer/SDCardStateReceiver;->log:Lcom/sprint/id/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lcom/sprint/w/installer/DownloadService;->getDownloadingPacks(Landroid/content/Context;)[Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v5

    .line 21
    .local v5, sps_download:[Lcom/sprint/w/installer/psi/ServicePack;
    move-object v0, v5

    .local v0, arr$:[Lcom/sprint/w/installer/psi/ServicePack;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_23
    if-ge v1, v2, :cond_7b

    aget-object v4, v0, v1

    .line 22
    .local v4, sp:Lcom/sprint/w/installer/psi/ServicePack;
    new-instance v3, Lcom/sprint/w/installer/PackInfo;

    invoke-direct {v3}, Lcom/sprint/w/installer/PackInfo;-><init>()V

    .line 23
    .local v3, pi:Lcom/sprint/w/installer/PackInfo;
    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 24
    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_78

    .line 25
    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 26
    iget-object v6, p0, Lcom/sprint/w/installer/SDCardStateReceiver;->log:Lcom/sprint/id/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is interrupted by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Download will start again using internal storage."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 21
    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 36
    .end local v3           #pi:Lcom/sprint/w/installer/PackInfo;
    .end local v4           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_7b
    return-void
.end method
