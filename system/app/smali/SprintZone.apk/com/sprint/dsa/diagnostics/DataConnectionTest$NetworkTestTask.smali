.class Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;
.super Landroid/os/AsyncTask;
.source "DataConnectionTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/diagnostics/DataConnectionTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkTestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)V
    .registers 2
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    .line 441
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 12
    .parameter "params"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 449
    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    #getter for: Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I
    invoke-static {v5}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->access$0(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)I

    move-result v5

    if-eq v5, v9, :cond_14

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    #getter for: Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I
    invoke-static {v5}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->access$0(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)I

    move-result v5

    if-ne v5, v8, :cond_53

    .line 451
    :cond_14
    :try_start_14
    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    #getter for: Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->access$1(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 452
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    #getter for: Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I
    invoke-static {v5}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->access$0(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)I

    move-result v5

    if-ne v5, v8, :cond_3d

    .line 453
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_4a

    .line 464
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_2e
    :goto_2e
    const/4 v1, 0x0

    .line 465
    .local v1, i:I
    const/4 v3, 0x0

    .local v3, isAvailable:Z
    move v2, v1

    .line 467
    .end local v1           #i:I
    .local v2, i:I
    :goto_31
    const/16 v5, 0xf

    if-ge v2, v5, :cond_37

    if-eqz v3, :cond_65

    :cond_37
    move v1, v2

    .line 477
    .end local v2           #i:I
    .restart local v1       #i:I
    :goto_38
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 454
    .end local v1           #i:I
    .end local v3           #isAvailable:Z
    .restart local v4       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_3d
    :try_start_3d
    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    #getter for: Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I
    invoke-static {v5}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->access$0(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)I

    move-result v5

    if-ne v5, v9, :cond_2e

    .line 455
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_49} :catch_4a

    goto :goto_2e

    .line 457
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :catch_4a
    move-exception v0

    .line 458
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SprintZone_Diagnostics"

    const-string v6, "Unable to attempt to enable/disable wifi"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 460
    .end local v0           #e:Ljava/lang/Exception;
    :cond_53
    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    #getter for: Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mState:I
    invoke-static {v5}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->access$0(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)I

    move-result v5

    if-ne v5, v7, :cond_2e

    .line 461
    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    #getter for: Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->access$1(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/sprint/dsa/dss/DsaDiag;->setAirplaneMode(Landroid/content/Context;Z)V

    goto :goto_2e

    .line 469
    .restart local v2       #i:I
    .restart local v3       #isAvailable:Z
    :cond_65
    const-wide/16 v5, 0x3e8

    :try_start_67
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 470
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_6d} :catch_87

    const/4 v6, 0x0

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    :try_start_70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->publishProgress([Ljava/lang/Object;)V

    .line 471
    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    #getter for: Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I
    invoke-static {v6}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->access$2(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)I

    move-result v6

    #calls: Lcom/sprint/dsa/diagnostics/DataConnectionTest;->isNetworkAvailable(I)Z
    invoke-static {v5, v6}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->access$3(Lcom/sprint/dsa/diagnostics/DataConnectionTest;I)Z
    :try_end_84
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_84} :catch_8a

    move-result v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_31

    .line 472
    :catch_87
    move-exception v0

    move v1, v2

    .line 473
    .end local v2           #i:I
    .local v0, e:Ljava/lang/InterruptedException;
    .restart local v1       #i:I
    :goto_89
    goto :goto_38

    .line 472
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_8a
    move-exception v0

    goto :goto_89
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 489
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 490
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    #calls: Lcom/sprint/dsa/diagnostics/DataConnectionTest;->runTest()V
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->access$4(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)V

    .line 497
    :goto_b
    return-void

    .line 493
    :cond_c
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    const/4 v1, 0x0

    #setter for: Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestIsInProgress:Z
    invoke-static {v0, v1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->access$5(Lcom/sprint/dsa/diagnostics/DataConnectionTest;Z)V

    .line 494
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->this$0:Lcom/sprint/dsa/diagnostics/DataConnectionTest;

    #getter for: Lcom/sprint/dsa/diagnostics/DataConnectionTest;->mTestNetworkType:I
    invoke-static {v1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->access$2(Lcom/sprint/dsa/diagnostics/DataConnectionTest;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest;->startTest(I)V

    goto :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 3
    .parameter "progress"

    .prologue
    .line 482
    if-eqz p1, :cond_5

    array-length v0, p1

    if-lez v0, :cond_5

    .line 484
    :cond_5
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/DataConnectionTest$NetworkTestTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
