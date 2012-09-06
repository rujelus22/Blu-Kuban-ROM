.class final Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;
.super Ljava/lang/Object;
.source "MusicConnector.java"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/api/MusicConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "_ResultDispatcher"
.end annotation


# instance fields
.field private callback:Ljava/lang/Object;

.field private methodId:I

.field final synthetic this$0:Lcom/google/android/music/athome/api/MusicConnector;


# direct methods
.method public constructor <init>(Lcom/google/android/music/athome/api/MusicConnector;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter "methId"
    .parameter "cbObj"

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->this$0:Lcom/google/android/music/athome/api/MusicConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1634
    iput p2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->methodId:I

    .line 1635
    iput-object p3, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    .line 1636
    return-void
.end method


# virtual methods
.method public appendSongs([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1758
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1760
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomeModificationResult;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeModificationResult;

    .line 1761
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnAppendSongs;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnAppendSongs;->onAppendSongs(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1762
    return-void
.end method

.method public getPlayState([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1814
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1816
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomePlayState;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomePlayState;

    .line 1817
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomePlayState;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;->onGetPlayState(Lcom/google/android/music/athome/api/AtHomePlayState;)V

    .line 1818
    return-void
.end method

.method public getQueue([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1751
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1753
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;

    .line 1754
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomePlayQueueContent;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnGetQueue;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnGetQueue;->onGetQueue(Lcom/google/android/music/athome/api/AtHomePlayQueueContent;)V

    .line 1755
    return-void
.end method

.method public getRepeatMode([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 1828
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1830
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 1831
    .local v1, rv:I
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnGetRepeatMode;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnGetRepeatMode;->onGetRepeatMode(I)V

    .line 1832
    return-void
.end method

.method public getSessionInfo([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1744
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1746
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    .line 1747
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;->onGetSessionInfo(Lcom/google/android/music/athome/api/AtHomeSessionInfo;)V

    .line 1748
    return-void
.end method

.method public getSessionVariable([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 1835
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1837
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 1838
    .local v1, rv:Landroid/support/place/rpc/RpcData;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionVariable;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionVariable;->onGetSessionVariable(Landroid/support/place/rpc/RpcData;)V

    .line 1839
    return-void
.end method

.method public insertAndPositionSongs([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1842
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1844
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomeModificationResult;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeModificationResult;

    .line 1845
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnInsertAndPositionSongs;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnInsertAndPositionSongs;->onInsertAndPositionSongs(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1846
    return-void
.end method

.method public insertSongs([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1772
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1774
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomeModificationResult;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeModificationResult;

    .line 1775
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnInsertSongs;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnInsertSongs;->onInsertSongs(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1776
    return-void
.end method

.method public isShuffling([B)V
    .registers 5
    .parameter "result"

    .prologue
    .line 1821
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1823
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1824
    .local v1, rv:Z
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnIsShuffling;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnIsShuffling;->onIsShuffling(Z)V

    .line 1825
    return-void
.end method

.method public moveSong([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1786
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1788
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomeModificationResult;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeModificationResult;

    .line 1789
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnMoveSong;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnMoveSong;->onMoveSong(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1790
    return-void
.end method

.method public newSession([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1737
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1739
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    .line 1740
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnNewSession;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnNewSession;->onNewSession(Lcom/google/android/music/athome/api/AtHomeSessionInfo;)V

    .line 1741
    return-void
.end method

.method public onResult([B)V
    .registers 3
    .parameter "result"

    .prologue
    .line 1639
    iget v0, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->methodId:I

    sparse-switch v0, :sswitch_data_4a

    .line 1727
    :goto_5
    return-void

    .line 1643
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->versionCheck([B)V

    goto :goto_5

    .line 1648
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->newSession([B)V

    goto :goto_5

    .line 1653
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->getSessionInfo([B)V

    goto :goto_5

    .line 1658
    :sswitch_12
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->getQueue([B)V

    goto :goto_5

    .line 1663
    :sswitch_16
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->appendSongs([B)V

    goto :goto_5

    .line 1668
    :sswitch_1a
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->prependSongs([B)V

    goto :goto_5

    .line 1673
    :sswitch_1e
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->insertSongs([B)V

    goto :goto_5

    .line 1678
    :sswitch_22
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->updateSongs([B)V

    goto :goto_5

    .line 1683
    :sswitch_26
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->moveSong([B)V

    goto :goto_5

    .line 1688
    :sswitch_2a
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->removeSong([B)V

    goto :goto_5

    .line 1693
    :sswitch_2e
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->removeAllSongs([B)V

    goto :goto_5

    .line 1698
    :sswitch_32
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->removeSongsInRange([B)V

    goto :goto_5

    .line 1703
    :sswitch_36
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->getPlayState([B)V

    goto :goto_5

    .line 1708
    :sswitch_3a
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->isShuffling([B)V

    goto :goto_5

    .line 1713
    :sswitch_3e
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->getRepeatMode([B)V

    goto :goto_5

    .line 1718
    :sswitch_42
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->getSessionVariable([B)V

    goto :goto_5

    .line 1723
    :sswitch_46
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->insertAndPositionSongs([B)V

    goto :goto_5

    .line 1639
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_a
        0x3 -> :sswitch_e
        0x4 -> :sswitch_12
        0x5 -> :sswitch_16
        0x7 -> :sswitch_1a
        0x9 -> :sswitch_1e
        0xb -> :sswitch_22
        0xd -> :sswitch_26
        0xf -> :sswitch_2a
        0x11 -> :sswitch_2e
        0x13 -> :sswitch_32
        0x17 -> :sswitch_36
        0x21 -> :sswitch_3a
        0x24 -> :sswitch_3e
        0x28 -> :sswitch_42
        0x2c -> :sswitch_46
    .end sparse-switch
.end method

.method public prependSongs([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1765
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1767
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomeModificationResult;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeModificationResult;

    .line 1768
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnPrependSongs;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnPrependSongs;->onPrependSongs(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1769
    return-void
.end method

.method public removeAllSongs([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1800
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1802
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomeModificationResult;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeModificationResult;

    .line 1803
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnRemoveAllSongs;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnRemoveAllSongs;->onRemoveAllSongs(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1804
    return-void
.end method

.method public removeSong([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1793
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1795
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomeModificationResult;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeModificationResult;

    .line 1796
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSong;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSong;->onRemoveSong(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1797
    return-void
.end method

.method public removeSongsInRange([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1807
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1809
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomeModificationResult;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeModificationResult;

    .line 1810
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSongsInRange;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSongsInRange;->onRemoveSongsInRange(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1811
    return-void
.end method

.method public updateSongs([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1779
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1781
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomeModificationResult;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeModificationResult;

    .line 1782
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnUpdateSongs;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnUpdateSongs;->onUpdateSongs(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    .line 1783
    return-void
.end method

.method public versionCheck([B)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1730
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 1732
    .local v0, resultData:Landroid/support/place/rpc/RpcData;
    const-string v2, "_result"

    sget-object v3, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeVersionCheck;

    .line 1733
    .local v1, rv:Lcom/google/android/music/athome/api/AtHomeVersionCheck;
    iget-object v2, p0, Lcom/google/android/music/athome/api/MusicConnector$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/athome/api/MusicConnector$OnVersionCheck;

    invoke-interface {v2, v1}, Lcom/google/android/music/athome/api/MusicConnector$OnVersionCheck;->onVersionCheck(Lcom/google/android/music/athome/api/AtHomeVersionCheck;)V

    .line 1734
    return-void
.end method
