.class public Lcom/syncmldstmo/DSService$smlAccountsUpdatedListener;
.super Ljava/lang/Object;
.source "DSService.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/DSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "smlAccountsUpdatedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/DSService;


# direct methods
.method public constructor <init>(Lcom/syncmldstmo/DSService;)V
    .registers 2
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/syncmldstmo/DSService$smlAccountsUpdatedListener;->this$0:Lcom/syncmldstmo/DSService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 6
    .parameter "accounts"

    .prologue
    .line 793
    monitor-enter p0

    .line 795
    :try_start_1
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-nez v2, :cond_d

    .line 796
    const/4 v2, 0x1

    const-string v3, "onAccountsUpdated!!"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 798
    :cond_d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_5c

    .line 800
    const-string v2, "com.android.tmo_myphonebook"

    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_59

    move-result v2

    if-eqz v2, :cond_4d

    .line 804
    const-wide/16 v2, 0x3e8

    :try_start_1f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_59
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_50

    .line 810
    :goto_22
    :try_start_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 811
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlsetSyncAutomatically()V

    .line 798
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 806
    :catch_50
    move-exception v0

    .line 808
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_22

    .line 814
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :catchall_59
    move-exception v2

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_22 .. :try_end_5b} :catchall_59

    throw v2

    .restart local v1       #i:I
    :cond_5c
    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_59

    .line 815
    return-void
.end method
