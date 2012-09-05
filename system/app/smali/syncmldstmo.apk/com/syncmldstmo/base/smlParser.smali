.class public Lcom/syncmldstmo/base/smlParser;
.super Lcom/syncmldstmo/base/smlWbxDecoder;
.source "smlParser.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field public _charset:I

.field public _codePage:I

.field public _puid:I

.field public _stringtable:Ljava/lang/String;

.field public _userdata:Ljava/lang/Object;

.field public _version:I

.field public m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;


# direct methods
.method public constructor <init>(Lcom/syncmldstmo/base/smlHandleCmd_H;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/syncmldstmo/base/smlWbxDecoder;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->init()V

    .line 31
    iput-object p1, p0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    .line 32
    return-void
.end method

.method public static _smldataStDeleteCtcap(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 2958
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_CTCAP;

    .line 2960
    .local v0, pCtCap:Lcom/syncmldstmo/base/sml$SML_CTCAP;
    if-nez v0, :cond_7

    .line 2970
    :goto_6
    return-void

    .line 2963
    :cond_7
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_CTCAP;->pCtType:Ljava/lang/String;

    .line 2964
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_CTCAP;->pVerCT:Ljava/lang/String;

    .line 2966
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_CTCAP;->pListProperty:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_14

    .line 2967
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_CTCAP;->pListProperty:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeletePropertyList(Ljava/lang/Object;)V

    .line 2969
    :cond_14
    const/4 v0, 0x0

    .line 2970
    goto :goto_6
.end method

.method public static _smldataStDeleteCtcapList(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 2974
    move-object v1, p0

    check-cast v1, Lcom/syncmldstmo/base/smlList;

    .line 2975
    .local v1, header:Lcom/syncmldstmo/base/smlList;
    move-object v0, v1

    .line 2978
    .local v0, curr:Lcom/syncmldstmo/base/smlList;
    :goto_4
    if-nez v0, :cond_8

    .line 2986
    const/4 v1, 0x0

    .line 2987
    return-void

    .line 2980
    :cond_8
    move-object v2, v0

    .line 2981
    .local v2, tmp:Lcom/syncmldstmo/base/smlList;
    iget-object v0, v0, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    .line 2983
    iget-object v3, v2, Lcom/syncmldstmo/base/smlList;->m_item:Ljava/lang/Object;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtcap(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static _smldataStDeleteCtinfo(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 2768
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    .line 2770
    .local v0, pCtInfo:Lcom/syncmldstmo/base/sml$SML_CT_INFO;
    if-nez v0, :cond_7

    .line 2776
    :goto_6
    return-void

    .line 2773
    :cond_7
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_CT_INFO;->pCtType:Ljava/lang/String;

    .line 2774
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_CT_INFO;->pVerCT:Ljava/lang/String;

    .line 2775
    const/4 v0, 0x0

    .line 2776
    goto :goto_6
.end method

.method public static _smldataStDeleteCtinfoList(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 2780
    move-object v1, p0

    check-cast v1, Lcom/syncmldstmo/base/smlList;

    .line 2781
    .local v1, header:Lcom/syncmldstmo/base/smlList;
    move-object v0, v1

    .line 2784
    .local v0, curr:Lcom/syncmldstmo/base/smlList;
    :goto_4
    if-nez v0, :cond_8

    .line 2792
    const/4 v1, 0x0

    .line 2793
    return-void

    .line 2786
    :cond_8
    move-object v2, v0

    .line 2787
    .local v2, tmp:Lcom/syncmldstmo/base/smlList;
    iget-object v0, v0, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    .line 2789
    iget-object v3, v2, Lcom/syncmldstmo/base/smlList;->m_item:Ljava/lang/Object;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtinfo(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static _smldataStDeleteDatastore(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 2797
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;

    .line 2799
    .local v0, pDataStore:Lcom/syncmldstmo/base/sml$SML_DATASTORE;
    if-nez v0, :cond_7

    .line 2833
    :goto_6
    return-void

    .line 2802
    :cond_7
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pSourceRef:Ljava/lang/String;

    .line 2803
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pDisplayName:Ljava/lang/String;

    .line 2805
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pRxPref:Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    if-eqz v1, :cond_14

    .line 2806
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pRxPref:Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtinfo(Ljava/lang/Object;)V

    .line 2808
    :cond_14
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListRx:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_1d

    .line 2809
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListRx:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtinfoList(Ljava/lang/Object;)V

    .line 2811
    :cond_1d
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pTxPref:Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    if-eqz v1, :cond_26

    .line 2812
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pTxPref:Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtinfo(Ljava/lang/Object;)V

    .line 2814
    :cond_26
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListTx:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_2f

    .line 2815
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListTx:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtinfoList(Ljava/lang/Object;)V

    .line 2817
    :cond_2f
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListCTCap:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_38

    .line 2818
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListCTCap:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtinfoList(Ljava/lang/Object;)V

    .line 2820
    :cond_38
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pDsMem:Lcom/syncmldstmo/base/sml$SML_DSMEM;

    if-eqz v1, :cond_41

    .line 2821
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pDsMem:Lcom/syncmldstmo/base/sml$SML_DSMEM;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDsmem(Ljava/lang/Object;)V

    .line 2823
    :cond_41
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pSyncCap:Lcom/syncmldstmo/base/sml$SML_SYNCCAP;

    if-eqz v1, :cond_4a

    .line 2824
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pSyncCap:Lcom/syncmldstmo/base/sml$SML_SYNCCAP;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteSynccap(Ljava/lang/Object;)V

    .line 2826
    :cond_4a
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListFilterRx:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_53

    .line 2827
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListFilterRx:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtinfoList(Ljava/lang/Object;)V

    .line 2829
    :cond_53
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListFilterCap:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_5c

    .line 2830
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListFilterCap:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteFiltercapList(Ljava/lang/Object;)V

    .line 2832
    :cond_5c
    const/4 v0, 0x0

    .line 2833
    goto :goto_6
.end method

.method public static _smldataStDeleteDatastoreList(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 2837
    move-object v1, p0

    check-cast v1, Lcom/syncmldstmo/base/smlList;

    .line 2838
    .local v1, header:Lcom/syncmldstmo/base/smlList;
    move-object v0, v1

    .line 2841
    .local v0, curr:Lcom/syncmldstmo/base/smlList;
    :goto_4
    if-nez v0, :cond_8

    .line 2849
    const/4 v1, 0x0

    .line 2850
    return-void

    .line 2843
    :cond_8
    move-object v2, v0

    .line 2844
    .local v2, tmp:Lcom/syncmldstmo/base/smlList;
    iget-object v0, v0, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    .line 2846
    iget-object v3, v2, Lcom/syncmldstmo/base/smlList;->m_item:Ljava/lang/Object;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDatastore(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static _smldataStDeleteDevinf(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 2854
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;

    .line 2856
    .local v0, devinf:Lcom/syncmldstmo/base/sml$SML_DEVINF;
    if-nez v0, :cond_7

    .line 2876
    :goto_6
    return-void

    .line 2859
    :cond_7
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pVerDTD:Ljava/lang/String;

    .line 2860
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pMan:Ljava/lang/String;

    .line 2861
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pMod:Ljava/lang/String;

    .line 2862
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pOEM:Ljava/lang/String;

    .line 2863
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pFwV:Ljava/lang/String;

    .line 2864
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pSwV:Ljava/lang/String;

    .line 2865
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pHwV:Ljava/lang/String;

    .line 2866
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pDevID:Ljava/lang/String;

    .line 2867
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pDevTyp:Ljava/lang/String;

    .line 2869
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pListDataStore:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_22

    .line 2870
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pListDataStore:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDatastoreList(Ljava/lang/Object;)V

    .line 2872
    :cond_22
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pListExt:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_2b

    .line 2873
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pListExt:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteExtList(Ljava/lang/Object;)V

    .line 2875
    :cond_2b
    const/4 v0, 0x0

    .line 2876
    goto :goto_6
.end method

.method public static _smldataStDeleteDsmem(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 2756
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_DSMEM;

    .line 2758
    .local v0, pDsMem:Lcom/syncmldstmo/base/sml$SML_DSMEM;
    if-nez v0, :cond_7

    .line 2764
    :goto_6
    return-void

    .line 2761
    :cond_7
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DSMEM;->pMaxMem:Ljava/lang/String;

    .line 2762
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_DSMEM;->pMaxID:Ljava/lang/String;

    .line 2763
    const/4 v0, 0x0

    .line 2764
    goto :goto_6
.end method

.method public static _smldataStDeleteElelist(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 2431
    move-object v1, p0

    check-cast v1, Lcom/syncmldstmo/base/smlList;

    .line 2434
    .local v1, h:Lcom/syncmldstmo/base/smlList;
    move-object v0, v1

    .line 2435
    .local v0, curr:Lcom/syncmldstmo/base/smlList;
    :goto_4
    if-nez v0, :cond_7

    .line 2443
    return-void

    .line 2437
    :cond_7
    move-object v2, v0

    .line 2438
    .local v2, tmp:Lcom/syncmldstmo/base/smlList;
    iget-object v0, v0, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    .line 2440
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/syncmldstmo/base/smlList;->m_item:Ljava/lang/Object;

    goto :goto_4
.end method

.method public static _smldataStDeleteExt(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 2675
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_EXT;

    .line 2677
    .local v0, pExt:Lcom/syncmldstmo/base/sml$SML_EXT;
    if-nez v0, :cond_6

    .line 2686
    :goto_5
    return-void

    .line 2680
    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_EXT;->pXnam:Ljava/lang/String;

    .line 2682
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_EXT;->pListXVal:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_12

    .line 2683
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_EXT;->pListXVal:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteElelist(Ljava/lang/Object;)V

    .line 2685
    :cond_12
    const/4 v0, 0x0

    .line 2686
    goto :goto_5
.end method

.method public static _smldataStDeleteExtList(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 2690
    move-object v1, p0

    check-cast v1, Lcom/syncmldstmo/base/smlList;

    .line 2691
    .local v1, header:Lcom/syncmldstmo/base/smlList;
    move-object v0, v1

    .line 2694
    .local v0, curr:Lcom/syncmldstmo/base/smlList;
    :goto_4
    if-nez v0, :cond_8

    .line 2702
    const/4 v1, 0x0

    .line 2703
    return-void

    .line 2696
    :cond_8
    move-object v2, v0

    .line 2697
    .local v2, tmp:Lcom/syncmldstmo/base/smlList;
    iget-object v0, v0, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    .line 2699
    iget-object v3, v2, Lcom/syncmldstmo/base/smlList;->m_item:Ljava/lang/Object;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteExt(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static _smldataStDeleteField(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 2610
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_FIELD;

    .line 2612
    .local v0, pField:Lcom/syncmldstmo/base/sml$SML_FIELD;
    if-nez v0, :cond_6

    .line 2617
    :cond_5
    :goto_5
    return-void

    .line 2615
    :cond_6
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FIELD;->itemlist:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_5

    .line 2616
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FIELD;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteItemlist(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public static _smldataStDeleteFilter(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 2621
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_FILTER;

    .line 2623
    .local v0, filter:Lcom/syncmldstmo/base/sml$SML_FILTER;
    if-eqz v0, :cond_24

    .line 2625
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FILTER;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_e

    .line 2627
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FILTER;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteMeta(Ljava/lang/Object;)V

    .line 2629
    :cond_e
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FILTER;->field:Lcom/syncmldstmo/base/sml$SML_FIELD;

    if-eqz v1, :cond_17

    .line 2631
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FILTER;->field:Lcom/syncmldstmo/base/sml$SML_FIELD;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteField(Ljava/lang/Object;)V

    .line 2633
    :cond_17
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FILTER;->filterType:Ljava/lang/String;

    .line 2634
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FILTER;->record:Lcom/syncmldstmo/base/sml$SML_RECORD;

    if-eqz v1, :cond_23

    .line 2636
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FILTER;->record:Lcom/syncmldstmo/base/sml$SML_RECORD;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteRecord(Ljava/lang/Object;)V

    .line 2638
    :cond_23
    const/4 v0, 0x0

    .line 2640
    :cond_24
    return-void
.end method

.method public static _smldataStDeleteFiltercap(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 2707
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;

    .line 2709
    .local v0, pFilterCap:Lcom/syncmldstmo/base/sml$SML_FILTERCAP;
    if-nez v0, :cond_7

    .line 2722
    :goto_6
    return-void

    .line 2712
    :cond_7
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;->pCtType:Ljava/lang/String;

    .line 2713
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;->pVerCT:Ljava/lang/String;

    .line 2715
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;->pListFilterKeyword:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_14

    .line 2716
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;->pListFilterKeyword:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteElelist(Ljava/lang/Object;)V

    .line 2718
    :cond_14
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;->pListPropName:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_1d

    .line 2719
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;->pListPropName:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteElelist(Ljava/lang/Object;)V

    .line 2721
    :cond_1d
    const/4 v0, 0x0

    .line 2722
    goto :goto_6
.end method

.method public static _smldataStDeleteFiltercapList(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 2726
    move-object v1, p0

    check-cast v1, Lcom/syncmldstmo/base/smlList;

    .line 2727
    .local v1, header:Lcom/syncmldstmo/base/smlList;
    move-object v0, v1

    .line 2730
    .local v0, curr:Lcom/syncmldstmo/base/smlList;
    :goto_4
    if-nez v0, :cond_8

    .line 2738
    const/4 v1, 0x0

    .line 2739
    return-void

    .line 2732
    :cond_8
    move-object v2, v0

    .line 2733
    .local v2, tmp:Lcom/syncmldstmo/base/smlList;
    iget-object v0, v0, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    .line 2735
    iget-object v3, v2, Lcom/syncmldstmo/base/smlList;->m_item:Ljava/lang/Object;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteFiltercap(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static _smldataStDeleteItem(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 2337
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_ITEM;

    .line 2339
    .local v0, item:Lcom/syncmldstmo/base/sml$SML_ITEM;
    if-nez v0, :cond_6

    .line 2369
    :goto_5
    return-void

    .line 2344
    :cond_6
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    if-eqz v1, :cond_f

    .line 2346
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeletePcdata(Ljava/lang/Object;)V

    .line 2349
    :cond_f
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    .line 2350
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    if-eqz v1, :cond_1b

    .line 2352
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteTarget(Ljava/lang/Object;)V

    .line 2355
    :cond_1b
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-eqz v1, :cond_24

    .line 2357
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteMeta(Ljava/lang/Object;)V

    .line 2359
    :cond_24
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->targetparent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;

    if-eqz v1, :cond_2d

    .line 2361
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->targetparent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteTargetparent(Ljava/lang/Object;)V

    .line 2363
    :cond_2d
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->sourceparent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;

    if-eqz v1, :cond_36

    .line 2365
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_ITEM;->sourceparent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteSourceParent(Ljava/lang/Object;)V

    .line 2368
    :cond_36
    const/4 v0, 0x0

    .line 2369
    goto :goto_5
.end method

.method public static _smldataStDeleteItemlist(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 2253
    move-object v1, p0

    check-cast v1, Lcom/syncmldstmo/base/smlList;

    .line 2254
    .local v1, header:Lcom/syncmldstmo/base/smlList;
    move-object v0, v1

    .line 2257
    .local v0, curr:Lcom/syncmldstmo/base/smlList;
    :goto_4
    if-nez v0, :cond_8

    .line 2266
    const/4 v1, 0x0

    .line 2267
    return-void

    .line 2259
    :cond_8
    move-object v2, v0

    .line 2260
    .local v2, tmp:Lcom/syncmldstmo/base/smlList;
    iget-object v0, v0, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    .line 2262
    iget-object v3, v2, Lcom/syncmldstmo/base/smlList;->m_item:Ljava/lang/Object;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteItem(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static _smldataStDeleteMeta(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 2198
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_META;

    .line 2199
    .local v0, meta:Lcom/syncmldstmo/base/sml$SML_META;
    if-nez v0, :cond_7

    .line 2222
    :goto_6
    return-void

    .line 2203
    :cond_7
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_META;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    if-eqz v1, :cond_10

    .line 2205
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_META;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteMetinfAnchor(Ljava/lang/Object;)V

    .line 2207
    :cond_10
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_META;->mem:Lcom/syncmldstmo/base/sml$SML_METINF_MEM;

    if-eqz v1, :cond_19

    .line 2209
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_META;->mem:Lcom/syncmldstmo/base/sml$SML_METINF_MEM;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteMetinfMem(Ljava/lang/Object;)V

    .line 2212
    :cond_19
    iput-object v3, v0, Lcom/syncmldstmo/base/sml$SML_META;->emi:Ljava/lang/String;

    .line 2213
    iput-object v3, v0, Lcom/syncmldstmo/base/sml$SML_META;->format:Ljava/lang/String;

    .line 2214
    iput-object v3, v0, Lcom/syncmldstmo/base/sml$SML_META;->mark:Ljava/lang/String;

    .line 2215
    const/4 v1, 0x0

    iput v1, v0, Lcom/syncmldstmo/base/sml$SML_META;->maxmsgsize:I

    .line 2216
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/syncmldstmo/base/sml$SML_META;->maxobjsize:J

    .line 2217
    iput-object v3, v0, Lcom/syncmldstmo/base/sml$SML_META;->nextnonce:Ljava/lang/String;

    .line 2218
    iput-object v3, v0, Lcom/syncmldstmo/base/sml$SML_META;->size:Ljava/lang/String;

    .line 2219
    iput-object v3, v0, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    .line 2220
    iput-object v3, v0, Lcom/syncmldstmo/base/sml$SML_META;->version:Ljava/lang/String;

    .line 2221
    const/4 v0, 0x0

    .line 2222
    goto :goto_6
.end method

.method public static _smldataStDeleteMetinfAnchor(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 2226
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    .line 2227
    .local v0, anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;
    if-nez v0, :cond_7

    .line 2235
    :goto_6
    return-void

    .line 2232
    :cond_7
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->last:Ljava/lang/String;

    .line 2233
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->next:Ljava/lang/String;

    .line 2234
    const/4 v0, 0x0

    .line 2235
    goto :goto_6
.end method

.method public static _smldataStDeleteMetinfMem(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"

    .prologue
    const-wide/16 v1, 0x0

    .line 2239
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;

    .line 2240
    .local v0, mem:Lcom/syncmldstmo/base/sml$SML_METINF_MEM;
    if-nez v0, :cond_8

    .line 2249
    :goto_7
    return-void

    .line 2245
    :cond_8
    iput-wide v1, v0, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->free:J

    .line 2246
    iput-wide v1, v0, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->freeid:J

    .line 2247
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->shared:Ljava/lang/String;

    .line 2248
    const/4 v0, 0x0

    .line 2249
    goto :goto_7
.end method

.method public static _smldataStDeletePcdata(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 2373
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_PCDATA;

    .line 2375
    .local v0, pcdata:Lcom/syncmldstmo/base/sml$SML_PCDATA;
    if-nez v0, :cond_6

    .line 2390
    :goto_5
    return-void

    .line 2380
    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    .line 2381
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    if-eqz v1, :cond_12

    .line 2383
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteMetinfAnchor(Ljava/lang/Object;)V

    .line 2385
    :cond_12
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->pProperty:Lcom/syncmldstmo/base/sml$SML_PROPERTY;

    if-eqz v1, :cond_1b

    .line 2387
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->pProperty:Lcom/syncmldstmo/base/sml$SML_PROPERTY;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteProperty(Ljava/lang/Object;)V

    .line 2389
    :cond_1b
    const/4 v0, 0x0

    .line 2390
    goto :goto_5
.end method

.method public static _smldataStDeleteProperty(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 2916
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_PROPERTY;

    .line 2918
    .local v0, item:Lcom/syncmldstmo/base/sml$SML_PROPERTY;
    if-nez v0, :cond_7

    .line 2937
    :goto_6
    return-void

    .line 2923
    :cond_7
    iput-object v2, v0, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pPropName:Ljava/lang/String;

    .line 2924
    iput-object v2, v0, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pDataType:Ljava/lang/String;

    .line 2925
    iput-object v2, v0, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pMaxOccur:Ljava/lang/String;

    .line 2926
    iput-object v2, v0, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pMaxSize:Ljava/lang/String;

    .line 2927
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pListValEnum:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_18

    .line 2929
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pListValEnum:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteElelist(Ljava/lang/Object;)V

    .line 2931
    :cond_18
    iput-object v2, v0, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pDisplayName:Ljava/lang/String;

    .line 2932
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pListPropParam:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_23

    .line 2934
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pListPropParam:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeletePropparamList(Ljava/lang/Object;)V

    .line 2936
    :cond_23
    const/4 v0, 0x0

    .line 2937
    goto :goto_6
.end method

.method public static _smldataStDeletePropertyList(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 2941
    move-object v1, p0

    check-cast v1, Lcom/syncmldstmo/base/smlList;

    .line 2942
    .local v1, header:Lcom/syncmldstmo/base/smlList;
    move-object v0, v1

    .line 2945
    .local v0, curr:Lcom/syncmldstmo/base/smlList;
    :goto_4
    if-nez v0, :cond_8

    .line 2953
    const/4 v1, 0x0

    .line 2954
    return-void

    .line 2947
    :cond_8
    move-object v2, v0

    .line 2948
    .local v2, tmp:Lcom/syncmldstmo/base/smlList;
    iget-object v0, v0, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    .line 2950
    iget-object v3, v2, Lcom/syncmldstmo/base/smlList;->m_item:Ljava/lang/Object;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteProperty(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static _smldataStDeletePropparam(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 2880
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_PROPPARAM;

    .line 2882
    .local v0, item:Lcom/syncmldstmo/base/sml$SML_PROPPARAM;
    if-nez v0, :cond_7

    .line 2895
    :goto_6
    return-void

    .line 2887
    :cond_7
    iput-object v2, v0, Lcom/syncmldstmo/base/sml$SML_PROPPARAM;->pParamName:Ljava/lang/String;

    .line 2888
    iput-object v2, v0, Lcom/syncmldstmo/base/sml$SML_PROPPARAM;->pDataType:Ljava/lang/String;

    .line 2889
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_PROPPARAM;->pListValEnum:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_14

    .line 2891
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_PROPPARAM;->pListValEnum:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteElelist(Ljava/lang/Object;)V

    .line 2893
    :cond_14
    iput-object v2, v0, Lcom/syncmldstmo/base/sml$SML_PROPPARAM;->pDisplayName:Ljava/lang/String;

    .line 2894
    const/4 v0, 0x0

    .line 2895
    goto :goto_6
.end method

.method public static _smldataStDeletePropparamList(Ljava/lang/Object;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 2899
    move-object v1, p0

    check-cast v1, Lcom/syncmldstmo/base/smlList;

    .line 2900
    .local v1, header:Lcom/syncmldstmo/base/smlList;
    move-object v0, v1

    .line 2903
    .local v0, curr:Lcom/syncmldstmo/base/smlList;
    :goto_4
    if-nez v0, :cond_8

    .line 2911
    const/4 v1, 0x0

    .line 2912
    return-void

    .line 2905
    :cond_8
    move-object v2, v0

    .line 2906
    .local v2, tmp:Lcom/syncmldstmo/base/smlList;
    iget-object v0, v0, Lcom/syncmldstmo/base/smlList;->m_next:Lcom/syncmldstmo/base/smlList;

    .line 2908
    iget-object v3, v2, Lcom/syncmldstmo/base/smlList;->m_item:Ljava/lang/Object;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeletePropparam(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static _smldataStDeleteRecord(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 2599
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_RECORD;

    .line 2601
    .local v0, pRecord:Lcom/syncmldstmo/base/sml$SML_RECORD;
    if-nez v0, :cond_6

    .line 2606
    :cond_5
    :goto_5
    return-void

    .line 2604
    :cond_6
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_RECORD;->itemlist:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_5

    .line 2605
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_RECORD;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteItemlist(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public static _smldataStDeleteSourceParent(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 2325
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;

    .line 2327
    .local v0, pSourceParent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;
    if-nez v0, :cond_6

    .line 2333
    :goto_5
    return-void

    .line 2331
    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;->pLocURI:Ljava/lang/String;

    .line 2332
    const/4 v0, 0x0

    .line 2333
    goto :goto_5
.end method

.method public static _smldataStDeleteSynccap(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 2743
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_SYNCCAP;

    .line 2745
    .local v0, pSyncCap:Lcom/syncmldstmo/base/sml$SML_SYNCCAP;
    if-nez v0, :cond_6

    .line 2752
    :goto_5
    return-void

    .line 2748
    :cond_6
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCCAP;->pListSyncType:Lcom/syncmldstmo/base/smlList;

    if-eqz v1, :cond_f

    .line 2749
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_SYNCCAP;->pListSyncType:Lcom/syncmldstmo/base/smlList;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteElelist(Ljava/lang/Object;)V

    .line 2751
    :cond_f
    const/4 v0, 0x0

    .line 2752
    goto :goto_5
.end method

.method public static _smldataStDeleteTarget(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 2394
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_TARGET;

    .line 2396
    .local v0, pTarget:Lcom/syncmldstmo/base/sml$SML_TARGET;
    if-nez v0, :cond_7

    .line 2410
    :goto_6
    return-void

    .line 2401
    :cond_7
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    .line 2402
    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocName:Ljava/lang/String;

    .line 2404
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_TARGET;->filter:Lcom/syncmldstmo/base/sml$SML_FILTER;

    if-eqz v1, :cond_14

    .line 2406
    iget-object v1, v0, Lcom/syncmldstmo/base/sml$SML_TARGET;->filter:Lcom/syncmldstmo/base/sml$SML_FILTER;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteFilter(Ljava/lang/Object;)V

    .line 2409
    :cond_14
    const/4 v0, 0x0

    .line 2410
    goto :goto_6
.end method

.method public static _smldataStDeleteTargetparent(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 2314
    move-object v0, p0

    check-cast v0, Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;

    .line 2315
    .local v0, pTargetParent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;
    if-nez v0, :cond_6

    .line 2321
    :goto_5
    return-void

    .line 2319
    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;->pLocURI:Ljava/lang/String;

    .line 2320
    const/4 v0, 0x0

    .line 2321
    goto :goto_5
.end method


# virtual methods
.method public __smlparParseBlankElement(I)I
    .registers 9
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 692
    const/4 v1, 0x0

    .line 697
    .local v1, haveend:Z
    :try_start_3
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I

    move-result v3

    .line 698
    .local v3, tmp:I
    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_c

    .line 700
    const/4 v1, 0x1

    .line 703
    :cond_c
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 704
    .local v2, res:I
    if-eqz v2, :cond_13

    .line 722
    .end local v2           #res:I
    .end local v3           #tmp:I
    :cond_12
    :goto_12
    return v4

    .line 709
    .restart local v2       #res:I
    .restart local v3       #tmp:I
    :cond_13
    if-eqz v1, :cond_1c

    .line 711
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_1e

    move-result v2

    .line 712
    if-nez v2, :cond_12

    .end local v2           #res:I
    .end local v3           #tmp:I
    :cond_1c
    :goto_1c
    move v4, v5

    .line 722
    goto :goto_12

    .line 718
    :catch_1e
    move-exception v0

    .line 720
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public __smlparParseChal()Lcom/syncmldstmo/base/sml$SML_META;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 635
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    .line 636
    .local v0, meta:Lcom/syncmldstmo/base/sml$SML_META;
    const/4 v1, 0x0

    .line 638
    .local v1, res:I
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v1

    .line 639
    if-eqz v1, :cond_10

    .line 655
    :cond_f
    :goto_f
    return-object v2

    .line 644
    :cond_10
    invoke-virtual {v0, p0}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_f

    .line 650
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v1

    .line 651
    if-nez v1, :cond_f

    move-object v2, v0

    .line 655
    goto :goto_f
.end method

.method public __smlparParseCheckElement(I)I
    .registers 4
    .parameter

    .prologue
    .line 741
    .line 742
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v0

    .line 743
    if-eq p1, v0, :cond_f

    .line 745
    const/high16 v0, 0x4

    const-string v1, "smlpar_check_element is SML_ERR_UNKNOWN_ELEMENT"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 746
    const/4 v0, 0x2

    .line 749
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public __smlparParseContent()Ljava/lang/String;
    .registers 7

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, content:Ljava/lang/String;
    const/4 v2, -0x1

    .line 565
    .local v2, id:I
    const/4 v4, 0x0

    .line 569
    .local v4, res:I
    :try_start_3
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecReadBufferByte()I

    move-result v2

    .line 571
    const/4 v5, 0x3

    if-ne v2, v5, :cond_10

    .line 573
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecParseStr_i()Ljava/lang/String;

    move-result-object v0

    :cond_e
    :goto_e
    move-object v5, v0

    .line 600
    :goto_f
    return-object v5

    .line 575
    :cond_10
    const/16 v5, 0x83

    if-ne v2, v5, :cond_19

    .line 577
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecParseStr_t()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 579
    :cond_19
    const/16 v5, 0xc3

    if-ne v2, v5, :cond_22

    .line 581
    invoke-virtual {p0, v2}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecParseExtension(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 585
    :cond_22
    iget-object v5, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->m_in:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlByteBuffer;->position()I

    move-result v3

    .line 586
    .local v3, pos:I
    invoke-virtual {p0, v2}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSkipElement(I)I

    move-result v4

    .line 587
    iget-object v5, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->m_in:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v5, v3}, Lcom/syncmldstmo/base/smlByteBuffer;->setPosition(I)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_31} :catch_35

    .line 589
    if-eqz v4, :cond_e

    .line 591
    const/4 v5, 0x0

    goto :goto_f

    .line 595
    .end local v3           #pos:I
    :catch_35
    move-exception v1

    .line 597
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public __smlparParseCtcap(ILcom/syncmldstmo/base/sml$SML_CTCAP;)Lcom/syncmldstmo/base/sml$SML_CTCAP;
    .registers 10
    .parameter "id"
    .parameter "ctCap"

    .prologue
    const/4 v3, 0x0

    .line 1081
    const/4 v1, 0x0

    .line 1082
    .local v1, o:Lcom/syncmldstmo/base/sml$SML_CTCAP;
    const/4 v2, 0x0

    .line 1084
    .local v2, res:I
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_CTCAP;

    .end local v1           #o:Lcom/syncmldstmo/base/sml$SML_CTCAP;
    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_CTCAP;-><init>()V

    .line 1085
    .restart local v1       #o:Lcom/syncmldstmo/base/sml$SML_CTCAP;
    if-nez v1, :cond_e

    .line 1087
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtcap(Ljava/lang/Object;)V

    .line 1154
    :goto_d
    return-object v3

    .line 1091
    :cond_e
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 1092
    if-eqz v2, :cond_18

    .line 1094
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtcap(Ljava/lang/Object;)V

    goto :goto_d

    .line 1102
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_22

    move-result p1

    .line 1109
    :goto_1c
    if-eqz v2, :cond_2b

    .line 1111
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtcap(Ljava/lang/Object;)V

    goto :goto_d

    .line 1104
    :catch_22
    move-exception v0

    .line 1106
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1c

    .line 1115
    .end local v0           #e:Ljava/io/IOException;
    :cond_2b
    const/4 v4, 0x1

    if-ne p1, v4, :cond_35

    .line 1117
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result p1

    .line 1153
    move-object p2, v1

    move-object v3, p2

    .line 1154
    goto :goto_d

    .line 1122
    :cond_35
    sparse-switch p1, :sswitch_data_78

    .line 1141
    const/high16 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1142
    const/4 v2, 0x2

    .line 1146
    :goto_4d
    if-eqz v2, :cond_18

    .line 1148
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtcap(Ljava/lang/Object;)V

    goto :goto_d

    .line 1125
    :sswitch_53
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/syncmldstmo/base/sml$SML_CTCAP;->pCtType:Ljava/lang/String;

    goto :goto_4d

    .line 1129
    :sswitch_5b
    const/16 v4, 0x24

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/syncmldstmo/base/sml$SML_CTCAP;->pVerCT:Ljava/lang/String;

    goto :goto_4d

    .line 1133
    :sswitch_64
    const/16 v4, 0x33

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/syncmldstmo/base/sml$SML_CTCAP;->bFieldLevel:J

    goto :goto_4d

    .line 1137
    :sswitch_6e
    iget-object v4, v1, Lcom/syncmldstmo/base/sml$SML_CTCAP;->pListProperty:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p0, v4, p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParsePropertyList(Lcom/syncmldstmo/base/smlList;I)Lcom/syncmldstmo/base/smlList;

    move-result-object v4

    iput-object v4, v1, Lcom/syncmldstmo/base/sml$SML_CTCAP;->pListProperty:Lcom/syncmldstmo/base/smlList;

    goto :goto_4d

    .line 1122
    nop

    :sswitch_data_78
    .sparse-switch
        0x6 -> :sswitch_53
        0x24 -> :sswitch_5b
        0x2b -> :sswitch_6e
        0x33 -> :sswitch_64
    .end sparse-switch
.end method

.method public __smlparParseCtcapList(Lcom/syncmldstmo/base/smlList;I)Lcom/syncmldstmo/base/smlList;
    .registers 8
    .parameter "ctcapList"
    .parameter "eleid"

    .prologue
    .line 1159
    move-object v1, p1

    .line 1160
    .local v1, h:Lcom/syncmldstmo/base/smlList;
    const/4 v3, 0x0

    .line 1161
    .local v3, item:Lcom/syncmldstmo/base/sml$SML_CTCAP;
    const/4 v2, -0x1

    .line 1167
    .local v2, id:I
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_a

    move-result v2

    .line 1174
    :goto_7
    if-eq v2, p2, :cond_13

    .line 1191
    .end local p1
    :goto_9
    return-object p1

    .line 1169
    .restart local p1
    :catch_a
    move-exception v0

    .line 1171
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_7

    .line 1179
    .end local v0           #e:Ljava/io/IOException;
    :cond_13
    invoke-virtual {p0, v2, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCtcap(ILcom/syncmldstmo/base/sml$SML_CTCAP;)Lcom/syncmldstmo/base/sml$SML_CTCAP;

    move-result-object v3

    .line 1180
    if-nez v3, :cond_1e

    .line 1182
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtcapList(Ljava/lang/Object;)V

    .line 1183
    const/4 p1, 0x0

    goto :goto_9

    .line 1185
    :cond_1e
    if-nez p1, :cond_26

    .line 1186
    new-instance p1, Lcom/syncmldstmo/base/smlList;

    .end local p1
    invoke-direct {p1, v3}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    .restart local p1
    goto :goto_3

    .line 1188
    :cond_26
    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlList;->sml_list_append(Ljava/lang/Object;)Lcom/syncmldstmo/base/smlList;

    goto :goto_3
.end method

.method public __smlparParseCtinfo(ILcom/syncmldstmo/base/sml$SML_CT_INFO;)Lcom/syncmldstmo/base/sml$SML_CT_INFO;
    .registers 10
    .parameter "id"
    .parameter "ctInfo"

    .prologue
    const/4 v3, 0x0

    .line 1196
    const/4 v1, 0x0

    .line 1197
    .local v1, o:Lcom/syncmldstmo/base/sml$SML_CT_INFO;
    const/4 v2, 0x0

    .line 1199
    .local v2, res:I
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    .end local v1           #o:Lcom/syncmldstmo/base/sml$SML_CT_INFO;
    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_CT_INFO;-><init>()V

    .line 1200
    .restart local v1       #o:Lcom/syncmldstmo/base/sml$SML_CT_INFO;
    if-nez v1, :cond_e

    .line 1202
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtinfo(Ljava/lang/Object;)V

    .line 1260
    :goto_d
    return-object v3

    .line 1206
    :cond_e
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 1207
    if-eqz v2, :cond_18

    .line 1209
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtinfo(Ljava/lang/Object;)V

    goto :goto_d

    .line 1217
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_26

    move-result p1

    .line 1224
    :goto_1c
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2f

    .line 1226
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result p1

    .line 1258
    move-object p2, v1

    move-object v3, p2

    .line 1260
    goto :goto_d

    .line 1219
    :catch_26
    move-exception v0

    .line 1221
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1c

    .line 1235
    .end local v0           #e:Ljava/io/IOException;
    :cond_2f
    sparse-switch p1, :sswitch_data_5e

    .line 1246
    const/high16 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1247
    const/4 v2, 0x2

    .line 1251
    :goto_47
    if-eqz v2, :cond_18

    .line 1253
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtinfo(Ljava/lang/Object;)V

    goto :goto_d

    .line 1238
    :sswitch_4d
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/syncmldstmo/base/sml$SML_CT_INFO;->pCtType:Ljava/lang/String;

    goto :goto_47

    .line 1242
    :sswitch_55
    const/16 v4, 0x24

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/syncmldstmo/base/sml$SML_CT_INFO;->pVerCT:Ljava/lang/String;

    goto :goto_47

    .line 1235
    :sswitch_data_5e
    .sparse-switch
        0x6 -> :sswitch_4d
        0x24 -> :sswitch_55
    .end sparse-switch
.end method

.method public __smlparParseCtinfoList(Lcom/syncmldstmo/base/smlList;I)Lcom/syncmldstmo/base/smlList;
    .registers 8
    .parameter "ctinfoList"
    .parameter "eleid"

    .prologue
    .line 1265
    move-object v1, p1

    .line 1266
    .local v1, h:Lcom/syncmldstmo/base/smlList;
    const/4 v3, 0x0

    .line 1267
    .local v3, item:Lcom/syncmldstmo/base/sml$SML_CT_INFO;
    const/4 v2, 0x0

    .line 1273
    .local v2, id:I
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_a

    move-result v2

    .line 1280
    :goto_7
    if-eq v2, p2, :cond_13

    .line 1297
    .end local p1
    :goto_9
    return-object p1

    .line 1275
    .restart local p1
    :catch_a
    move-exception v0

    .line 1277
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_7

    .line 1285
    .end local v0           #e:Ljava/io/IOException;
    :cond_13
    invoke-virtual {p0, v2, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCtinfo(ILcom/syncmldstmo/base/sml$SML_CT_INFO;)Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    move-result-object v3

    .line 1286
    if-nez v3, :cond_1e

    .line 1288
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteCtinfoList(Ljava/lang/Object;)V

    .line 1289
    const/4 p1, 0x0

    goto :goto_9

    .line 1291
    :cond_1e
    if-nez p1, :cond_26

    .line 1292
    new-instance p1, Lcom/syncmldstmo/base/smlList;

    .end local p1
    invoke-direct {p1, v3}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    .restart local p1
    goto :goto_3

    .line 1294
    :cond_26
    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlList;->sml_list_append(Ljava/lang/Object;)Lcom/syncmldstmo/base/smlList;

    goto :goto_3
.end method

.method public __smlparParseCurrentElement()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    .line 729
    iget-object v0, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->m_in:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlByteBuffer;->position()I

    move-result v0

    .line 730
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->m_in:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v1}, Lcom/syncmldstmo/base/smlByteBuffer;->read()I

    move-result v1

    .line 731
    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    .line 732
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_17
    and-int/lit8 v1, v1, 0x3f

    and-int/lit8 v1, v1, 0x7f

    .line 735
    iget-object v2, p0, Lcom/syncmldstmo/base/smlWbxDecoder;->m_in:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v2, v0}, Lcom/syncmldstmo/base/smlByteBuffer;->setPosition(I)V

    .line 736
    return v1
.end method

.method public __smlparParseDatastore(Lcom/syncmldstmo/base/sml$SML_DATASTORE;)Lcom/syncmldstmo/base/sml$SML_DATASTORE;
    .registers 11
    .parameter "datastore"

    .prologue
    const/4 v5, 0x0

    .line 1541
    move-object v2, p1

    .line 1542
    .local v2, o:Lcom/syncmldstmo/base/sml$SML_DATASTORE;
    const/4 v1, -0x1

    .line 1543
    .local v1, id:I
    const/4 v4, 0x0

    .line 1546
    .local v4, res:I
    if-nez v2, :cond_a

    .line 1548
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDatastore(Ljava/lang/Object;)V

    .line 1648
    :goto_9
    return-object v5

    .line 1552
    :cond_a
    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v4

    .line 1553
    if-eqz v4, :cond_15

    .line 1555
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDatastore(Ljava/lang/Object;)V

    goto :goto_9

    .line 1563
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_23

    move-result v1

    .line 1570
    :goto_19
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2c

    .line 1572
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1646
    move-object p1, v2

    move-object v5, p1

    .line 1648
    goto :goto_9

    .line 1565
    :catch_23
    move-exception v0

    .line 1567
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_19

    .line 1578
    .end local v0           #e:Ljava/io/IOException;
    :cond_2c
    sparse-switch v1, :sswitch_data_c6

    .line 1634
    const/high16 v6, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1635
    const/4 v4, 0x2

    .line 1639
    :goto_44
    if-eqz v4, :cond_15

    .line 1641
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDatastore(Ljava/lang/Object;)V

    goto :goto_9

    .line 1581
    :sswitch_4a
    const/16 v6, 0x1d

    invoke-virtual {p0, v6}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pSourceRef:Ljava/lang/String;

    goto :goto_44

    .line 1585
    :sswitch_53
    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pDisplayName:Ljava/lang/String;

    goto :goto_44

    .line 1589
    :sswitch_5c
    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    .line 1590
    .local v3, pszMaxGUidSize:Ljava/lang/String;
    invoke-static {v3}, Lcom/syncmldstmo/base/smlLib;->atoi(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->nMaxGuidSize:J

    goto :goto_44

    .line 1594
    .end local v3           #pszMaxGUidSize:Ljava/lang/String;
    :sswitch_6a
    iget-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pRxPref:Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    invoke-virtual {p0, v1, v6}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCtinfo(ILcom/syncmldstmo/base/sml$SML_CT_INFO;)Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    move-result-object v6

    iput-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pRxPref:Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    goto :goto_44

    .line 1598
    :sswitch_73
    iget-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListRx:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p0, v6, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCtinfoList(Lcom/syncmldstmo/base/smlList;I)Lcom/syncmldstmo/base/smlList;

    move-result-object v6

    iput-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListRx:Lcom/syncmldstmo/base/smlList;

    goto :goto_44

    .line 1602
    :sswitch_7c
    iget-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pTxPref:Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    invoke-virtual {p0, v1, v6}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCtinfo(ILcom/syncmldstmo/base/sml$SML_CT_INFO;)Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    move-result-object v6

    iput-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pTxPref:Lcom/syncmldstmo/base/sml$SML_CT_INFO;

    goto :goto_44

    .line 1606
    :sswitch_85
    iget-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListTx:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p0, v6, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCtinfoList(Lcom/syncmldstmo/base/smlList;I)Lcom/syncmldstmo/base/smlList;

    move-result-object v6

    iput-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListTx:Lcom/syncmldstmo/base/smlList;

    goto :goto_44

    .line 1610
    :sswitch_8e
    iget-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListCTCap:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p0, v6, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCtcapList(Lcom/syncmldstmo/base/smlList;I)Lcom/syncmldstmo/base/smlList;

    move-result-object v6

    iput-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListCTCap:Lcom/syncmldstmo/base/smlList;

    goto :goto_44

    .line 1614
    :sswitch_97
    iget-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pDsMem:Lcom/syncmldstmo/base/sml$SML_DSMEM;

    invoke-virtual {p0, v6}, Lcom/syncmldstmo/base/smlParser;->__smlparParseDsmem(Lcom/syncmldstmo/base/sml$SML_DSMEM;)Lcom/syncmldstmo/base/sml$SML_DSMEM;

    move-result-object v6

    iput-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pDsMem:Lcom/syncmldstmo/base/sml$SML_DSMEM;

    goto :goto_44

    .line 1618
    :sswitch_a0
    const/16 v6, 0x34

    invoke-virtual {p0, v6}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->bSupportHierachicalSync:J

    goto :goto_44

    .line 1622
    :sswitch_aa
    iget-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pSyncCap:Lcom/syncmldstmo/base/sml$SML_SYNCCAP;

    invoke-virtual {p0, v6}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSynccap(Lcom/syncmldstmo/base/sml$SML_SYNCCAP;)Lcom/syncmldstmo/base/sml$SML_SYNCCAP;

    move-result-object v6

    iput-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pSyncCap:Lcom/syncmldstmo/base/sml$SML_SYNCCAP;

    goto :goto_44

    .line 1626
    :sswitch_b3
    iget-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListFilterRx:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p0, v6, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCtinfoList(Lcom/syncmldstmo/base/smlList;I)Lcom/syncmldstmo/base/smlList;

    move-result-object v6

    iput-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListFilterRx:Lcom/syncmldstmo/base/smlList;

    goto :goto_44

    .line 1630
    :sswitch_bc
    iget-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListFilterCap:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p0, v6, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseFiltercapList(Lcom/syncmldstmo/base/smlList;I)Lcom/syncmldstmo/base/smlList;

    move-result-object v6

    iput-object v6, v2, Lcom/syncmldstmo/base/sml$SML_DATASTORE;->pListFilterCap:Lcom/syncmldstmo/base/smlList;

    goto :goto_44

    .line 1578
    nop

    :sswitch_data_c6
    .sparse-switch
        0x5 -> :sswitch_8e
        0xc -> :sswitch_53
        0xd -> :sswitch_97
        0x12 -> :sswitch_5c
        0x19 -> :sswitch_73
        0x1a -> :sswitch_6a
        0x1d -> :sswitch_4a
        0x1f -> :sswitch_aa
        0x21 -> :sswitch_85
        0x22 -> :sswitch_7c
        0x30 -> :sswitch_b3
        0x31 -> :sswitch_bc
        0x34 -> :sswitch_a0
    .end sparse-switch
.end method

.method public __smlparParseDatastoreList(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;
    .registers 7
    .parameter "pDataStoreList"

    .prologue
    .line 1653
    move-object v1, p1

    .line 1654
    .local v1, h:Lcom/syncmldstmo/base/smlList;
    const/4 v3, 0x0

    .line 1655
    .local v3, item:Lcom/syncmldstmo/base/sml$SML_DATASTORE;
    const/4 v2, 0x0

    .line 1661
    .local v2, id:I
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_b

    move-result v2

    .line 1668
    :goto_7
    const/4 v4, 0x7

    if-eq v2, v4, :cond_14

    .line 1686
    .end local p1
    :goto_a
    return-object p1

    .line 1663
    .restart local p1
    :catch_b
    move-exception v0

    .line 1665
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_7

    .line 1673
    .end local v0           #e:Ljava/io/IOException;
    :cond_14
    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseDatastore(Lcom/syncmldstmo/base/sml$SML_DATASTORE;)Lcom/syncmldstmo/base/sml$SML_DATASTORE;

    move-result-object v3

    .line 1674
    if-nez v3, :cond_1f

    .line 1676
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDatastoreList(Ljava/lang/Object;)V

    .line 1677
    const/4 p1, 0x0

    goto :goto_a

    .line 1680
    :cond_1f
    if-nez p1, :cond_27

    .line 1681
    new-instance p1, Lcom/syncmldstmo/base/smlList;

    .end local p1
    invoke-direct {p1, v3}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    .restart local p1
    goto :goto_3

    .line 1683
    :cond_27
    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlList;->sml_list_append(Ljava/lang/Object;)Lcom/syncmldstmo/base/smlList;

    goto :goto_3
.end method

.method public __smlparParseDsmem(Lcom/syncmldstmo/base/sml$SML_DSMEM;)Lcom/syncmldstmo/base/sml$SML_DSMEM;
    .registers 10
    .parameter "dsMem"

    .prologue
    const/4 v4, 0x0

    .line 1302
    move-object v2, p1

    .line 1303
    .local v2, o:Lcom/syncmldstmo/base/sml$SML_DSMEM;
    const/4 v1, -0x1

    .line 1304
    .local v1, id:I
    const/4 v3, 0x0

    .line 1306
    .local v3, res:I
    if-nez v2, :cond_a

    .line 1308
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDsmem(Ljava/lang/Object;)V

    .line 1365
    :goto_9
    return-object v4

    .line 1312
    :cond_a
    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v3

    .line 1313
    if-eqz v3, :cond_16

    .line 1315
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDsmem(Ljava/lang/Object;)V

    goto :goto_9

    .line 1323
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_24

    move-result v1

    .line 1330
    :goto_1a
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2d

    .line 1332
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1364
    move-object p1, v2

    move-object v4, p1

    .line 1365
    goto :goto_9

    .line 1325
    :catch_24
    move-exception v0

    .line 1327
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1a

    .line 1337
    .end local v0           #e:Ljava/io/IOException;
    :cond_2d
    sparse-switch v1, :sswitch_data_68

    .line 1352
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1353
    const/4 v3, 0x2

    .line 1357
    :goto_45
    if-eqz v3, :cond_16

    .line 1359
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDsmem(Ljava/lang/Object;)V

    goto :goto_9

    .line 1340
    :sswitch_4b
    const/16 v5, 0x1b

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v2, Lcom/syncmldstmo/base/sml$SML_DSMEM;->bSharedMem:J

    goto :goto_45

    .line 1344
    :sswitch_55
    const/16 v5, 0x14

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_DSMEM;->pMaxMem:Ljava/lang/String;

    goto :goto_45

    .line 1348
    :sswitch_5e
    const/16 v5, 0x13

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_DSMEM;->pMaxID:Ljava/lang/String;

    goto :goto_45

    .line 1337
    nop

    :sswitch_data_68
    .sparse-switch
        0x13 -> :sswitch_5e
        0x14 -> :sswitch_55
        0x1b -> :sswitch_4b
    .end sparse-switch
.end method

.method public __smlparParseElelist(I)Lcom/syncmldstmo/base/smlList;
    .registers 7
    .parameter "eleid"

    .prologue
    .line 605
    const/4 v2, -0x1

    .line 607
    .local v2, id:I
    const/4 v0, 0x0

    .line 612
    .local v0, data:Lcom/syncmldstmo/base/smlList;
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_9

    move-result v2

    .line 619
    :goto_6
    if-eq v2, p1, :cond_12

    .line 630
    return-object v0

    .line 614
    :catch_9
    move-exception v1

    .line 616
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_6

    .line 624
    .end local v1           #e:Ljava/io/IOException;
    :cond_12
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, item:Ljava/lang/String;
    if-nez v0, :cond_1e

    .line 626
    new-instance v0, Lcom/syncmldstmo/base/smlList;

    .end local v0           #data:Lcom/syncmldstmo/base/smlList;
    invoke-direct {v0, v3}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    .restart local v0       #data:Lcom/syncmldstmo/base/smlList;
    goto :goto_2

    .line 628
    :cond_1e
    invoke-virtual {v0, v3}, Lcom/syncmldstmo/base/smlList;->sml_list_append(Ljava/lang/Object;)Lcom/syncmldstmo/base/smlList;

    goto :goto_2
.end method

.method public __smlparParseElement(I)Ljava/lang/String;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 661
    const/4 v1, 0x0

    .line 664
    .local v1, res:I
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v1

    .line 665
    if-eqz v1, :cond_a

    move-object v0, v2

    .line 685
    :cond_9
    :goto_9
    return-object v0

    .line 670
    :cond_a
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSkipLiteralElement()I

    move-result v1

    .line 671
    if-eqz v1, :cond_12

    move-object v0, v2

    .line 673
    goto :goto_9

    .line 677
    :cond_12
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseContent()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, data:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v1

    .line 681
    if-eqz v1, :cond_9

    move-object v0, v2

    .line 683
    goto :goto_9
.end method

.method public __smlparParseExt(Lcom/syncmldstmo/base/sml$SML_EXT;)Lcom/syncmldstmo/base/sml$SML_EXT;
    .registers 10
    .parameter "ext"

    .prologue
    const/4 v4, 0x0

    .line 1691
    move-object v2, p1

    .line 1692
    .local v2, o:Lcom/syncmldstmo/base/sml$SML_EXT;
    const/4 v1, -0x1

    .line 1693
    .local v1, id:I
    const/4 v3, 0x0

    .line 1695
    .local v3, res:I
    if-nez v2, :cond_a

    .line 1697
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteExt(Ljava/lang/Object;)V

    .line 1757
    :goto_9
    return-object v4

    .line 1701
    :cond_a
    const/16 v5, 0xe

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v3

    .line 1702
    if-eqz v3, :cond_16

    .line 1704
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteExt(Ljava/lang/Object;)V

    goto :goto_9

    .line 1712
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_20

    move-result v1

    .line 1719
    :goto_1a
    if-eqz v3, :cond_29

    .line 1721
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteExt(Ljava/lang/Object;)V

    goto :goto_9

    .line 1714
    :catch_20
    move-exception v0

    .line 1716
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1a

    .line 1725
    .end local v0           #e:Ljava/io/IOException;
    :cond_29
    const/4 v5, 0x1

    if-ne v1, v5, :cond_33

    .line 1727
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1755
    move-object p1, v2

    move-object v4, p1

    .line 1757
    goto :goto_9

    .line 1732
    :cond_33
    packed-switch v1, :pswitch_data_62

    .line 1743
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1744
    const/4 v3, 0x2

    .line 1748
    :goto_4b
    if-eqz v3, :cond_16

    .line 1750
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteExt(Ljava/lang/Object;)V

    goto :goto_9

    .line 1735
    :pswitch_51
    const/16 v5, 0x26

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_EXT;->pXnam:Ljava/lang/String;

    goto :goto_4b

    .line 1739
    :pswitch_5a
    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElelist(I)Lcom/syncmldstmo/base/smlList;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_EXT;->pListXVal:Lcom/syncmldstmo/base/smlList;

    goto :goto_4b

    .line 1732
    nop

    :pswitch_data_62
    .packed-switch 0x26
        :pswitch_51
        :pswitch_5a
    .end packed-switch
.end method

.method public __smlparParseExtList(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;
    .registers 7
    .parameter "pExtList"

    .prologue
    .line 1762
    move-object v1, p1

    .line 1763
    .local v1, h:Lcom/syncmldstmo/base/smlList;
    const/4 v3, 0x0

    .line 1764
    .local v3, item:Lcom/syncmldstmo/base/sml$SML_EXT;
    const/4 v2, -0x1

    .line 1770
    .local v2, id:I
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_c

    move-result v2

    .line 1777
    :goto_7
    const/16 v4, 0xe

    if-eq v2, v4, :cond_15

    .line 1794
    .end local p1
    :goto_b
    return-object p1

    .line 1772
    .restart local p1
    :catch_c
    move-exception v0

    .line 1774
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_7

    .line 1782
    .end local v0           #e:Ljava/io/IOException;
    :cond_15
    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseExt(Lcom/syncmldstmo/base/sml$SML_EXT;)Lcom/syncmldstmo/base/sml$SML_EXT;

    move-result-object v3

    .line 1783
    if-nez v3, :cond_20

    .line 1785
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteExtList(Ljava/lang/Object;)V

    .line 1786
    const/4 p1, 0x0

    goto :goto_b

    .line 1788
    :cond_20
    if-nez p1, :cond_28

    .line 1789
    new-instance p1, Lcom/syncmldstmo/base/smlList;

    .end local p1
    invoke-direct {p1, v3}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    .restart local p1
    goto :goto_3

    .line 1791
    :cond_28
    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlList;->sml_list_append(Ljava/lang/Object;)Lcom/syncmldstmo/base/smlList;

    goto :goto_3
.end method

.method public __smlparParseFiltercap(Lcom/syncmldstmo/base/sml$SML_FILTERCAP;)Lcom/syncmldstmo/base/sml$SML_FILTERCAP;
    .registers 10
    .parameter "filterCap"

    .prologue
    const/4 v4, 0x0

    .line 1429
    const/4 v2, 0x0

    .line 1430
    .local v2, o:Lcom/syncmldstmo/base/sml$SML_FILTERCAP;
    const/4 v1, -0x1

    .line 1431
    .local v1, id:I
    const/4 v3, 0x0

    .line 1433
    .local v3, res:I
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;

    .end local v2           #o:Lcom/syncmldstmo/base/sml$SML_FILTERCAP;
    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;-><init>()V

    .line 1434
    .restart local v2       #o:Lcom/syncmldstmo/base/sml$SML_FILTERCAP;
    if-nez v2, :cond_f

    .line 1436
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteFiltercap(Ljava/lang/Object;)V

    .line 1498
    :goto_e
    return-object v4

    .line 1440
    :cond_f
    const/16 v5, 0x31

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v3

    .line 1441
    if-eqz v3, :cond_1b

    .line 1443
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteFiltercap(Ljava/lang/Object;)V

    goto :goto_e

    .line 1451
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_29

    move-result v1

    .line 1458
    :goto_1f
    const/4 v5, 0x1

    if-ne v1, v5, :cond_32

    .line 1460
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1496
    move-object p1, v2

    move-object v4, p1

    .line 1498
    goto :goto_e

    .line 1453
    :catch_29
    move-exception v0

    .line 1455
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1f

    .line 1465
    .end local v0           #e:Ljava/io/IOException;
    :cond_32
    sparse-switch v1, :sswitch_data_70

    .line 1484
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1485
    const/4 v3, 0x2

    .line 1489
    :goto_4a
    if-eqz v3, :cond_1b

    .line 1491
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteFiltercap(Ljava/lang/Object;)V

    goto :goto_e

    .line 1468
    :sswitch_50
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;->pCtType:Ljava/lang/String;

    goto :goto_4a

    .line 1472
    :sswitch_58
    const/16 v5, 0x24

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;->pVerCT:Ljava/lang/String;

    goto :goto_4a

    .line 1476
    :sswitch_61
    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElelist(I)Lcom/syncmldstmo/base/smlList;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;->pListFilterKeyword:Lcom/syncmldstmo/base/smlList;

    goto :goto_4a

    .line 1480
    :sswitch_68
    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElelist(I)Lcom/syncmldstmo/base/smlList;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_FILTERCAP;->pListPropName:Lcom/syncmldstmo/base/smlList;

    goto :goto_4a

    .line 1465
    nop

    :sswitch_data_70
    .sparse-switch
        0x6 -> :sswitch_50
        0x18 -> :sswitch_68
        0x24 -> :sswitch_58
        0x32 -> :sswitch_61
    .end sparse-switch
.end method

.method public __smlparParseFiltercapList(Lcom/syncmldstmo/base/smlList;I)Lcom/syncmldstmo/base/smlList;
    .registers 8
    .parameter "filterCapList"
    .parameter "eleid"

    .prologue
    .line 1503
    move-object v1, p1

    .line 1504
    .local v1, h:Lcom/syncmldstmo/base/smlList;
    const/4 v3, 0x0

    .line 1505
    .local v3, item:Lcom/syncmldstmo/base/sml$SML_FILTERCAP;
    const/4 v2, -0x1

    .line 1511
    .local v2, id:I
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_a

    move-result v2

    .line 1518
    :goto_7
    if-eq v2, p2, :cond_13

    .line 1536
    .end local p1
    :goto_9
    return-object p1

    .line 1513
    .restart local p1
    :catch_a
    move-exception v0

    .line 1515
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_7

    .line 1523
    .end local v0           #e:Ljava/io/IOException;
    :cond_13
    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseFiltercap(Lcom/syncmldstmo/base/sml$SML_FILTERCAP;)Lcom/syncmldstmo/base/sml$SML_FILTERCAP;

    move-result-object v3

    .line 1524
    if-nez v3, :cond_1e

    .line 1526
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteFiltercapList(Ljava/lang/Object;)V

    .line 1527
    const/4 p1, 0x0

    goto :goto_9

    .line 1530
    :cond_1e
    if-nez p1, :cond_26

    .line 1531
    new-instance p1, Lcom/syncmldstmo/base/smlList;

    .end local p1
    invoke-direct {p1, v3}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    .restart local p1
    goto :goto_3

    .line 1533
    :cond_26
    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlList;->sml_list_append(Ljava/lang/Object;)Lcom/syncmldstmo/base/smlList;

    goto :goto_3
.end method

.method public __smlparParseItemlist(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;
    .registers 7
    .parameter "itemlist"

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, id:I
    const/4 v3, 0x0

    .line 294
    .local v3, res:I
    :goto_2
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_ITEM;

    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_ITEM;-><init>()V

    .line 297
    .local v2, item:Lcom/syncmldstmo/base/sml$SML_ITEM;
    :try_start_7
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_10

    move-result v1

    .line 304
    :goto_b
    const/16 v4, 0x14

    if-eq v1, v4, :cond_19

    .line 319
    .end local p1
    :goto_f
    return-object p1

    .line 299
    .restart local p1
    :catch_10
    move-exception v0

    .line 301
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_b

    .line 309
    .end local v0           #e:Ljava/io/IOException;
    :cond_19
    invoke-virtual {v2, p0}, Lcom/syncmldstmo/base/sml$SML_ITEM;->__smlparParseItem(Lcom/syncmldstmo/base/smlParser;)I

    move-result v3

    .line 310
    if-eqz v3, :cond_21

    .line 312
    const/4 p1, 0x0

    goto :goto_f

    .line 314
    :cond_21
    if-nez p1, :cond_29

    .line 315
    new-instance p1, Lcom/syncmldstmo/base/smlList;

    .end local p1
    invoke-direct {p1, v2}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    .restart local p1
    goto :goto_2

    .line 317
    :cond_29
    invoke-virtual {p1, v2}, Lcom/syncmldstmo/base/smlList;->sml_list_append(Ljava/lang/Object;)Lcom/syncmldstmo/base/smlList;

    goto :goto_2
.end method

.method public __smlparParseMapitemlist(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;
    .registers 7
    .parameter "itemlist"

    .prologue
    .line 325
    const/4 v1, -0x1

    .line 326
    .local v1, id:I
    const/4 v3, 0x0

    .line 330
    .local v3, res:I
    :goto_2
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_MAPITEM;

    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_MAPITEM;-><init>()V

    .line 333
    .local v2, item:Lcom/syncmldstmo/base/sml$SML_MAPITEM;
    :try_start_7
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_10

    move-result v1

    .line 340
    :goto_b
    const/16 v4, 0x19

    if-eq v1, v4, :cond_19

    .line 358
    :cond_f
    return-object p1

    .line 335
    :catch_10
    move-exception v0

    .line 337
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_b

    .line 345
    .end local v0           #e:Ljava/io/IOException;
    :cond_19
    invoke-virtual {v2, p0}, Lcom/syncmldstmo/base/sml$SML_MAPITEM;->__smlparParseMapitem(Lcom/syncmldstmo/base/smlParser;)I

    move-result v3

    .line 346
    if-nez v3, :cond_f

    .line 353
    if-nez p1, :cond_27

    .line 354
    new-instance p1, Lcom/syncmldstmo/base/smlList;

    .end local p1
    invoke-direct {p1, v2}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    .restart local p1
    goto :goto_2

    .line 356
    :cond_27
    invoke-virtual {p1, p1}, Lcom/syncmldstmo/base/smlList;->sml_list_append(Ljava/lang/Object;)Lcom/syncmldstmo/base/smlList;

    goto :goto_2
.end method

.method public __smlparParseProperty(Lcom/syncmldstmo/base/sml$SML_PROPERTY;)Lcom/syncmldstmo/base/sml$SML_PROPERTY;
    .registers 10
    .parameter "property"

    .prologue
    const/4 v4, 0x0

    .line 954
    const/4 v2, 0x0

    .line 955
    .local v2, o:Lcom/syncmldstmo/base/sml$SML_PROPERTY;
    const/4 v1, -0x1

    .line 956
    .local v1, id:I
    const/4 v3, 0x0

    .line 958
    .local v3, res:I
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_PROPERTY;

    .end local v2           #o:Lcom/syncmldstmo/base/sml$SML_PROPERTY;
    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_PROPERTY;-><init>()V

    .line 959
    .restart local v2       #o:Lcom/syncmldstmo/base/sml$SML_PROPERTY;
    if-nez v2, :cond_f

    .line 961
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteProperty(Ljava/lang/Object;)V

    .line 1039
    :goto_e
    return-object v4

    .line 965
    :cond_f
    const/16 v5, 0x2b

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v3

    .line 966
    if-eqz v3, :cond_1b

    .line 968
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteProperty(Ljava/lang/Object;)V

    goto :goto_e

    .line 976
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_29

    move-result v1

    .line 983
    :goto_1f
    const/4 v5, 0x1

    if-ne v1, v5, :cond_32

    .line 985
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1037
    move-object p1, v2

    move-object v4, p1

    .line 1039
    goto :goto_e

    .line 978
    :catch_29
    move-exception v0

    .line 980
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1f

    .line 990
    .end local v0           #e:Ljava/io/IOException;
    :cond_32
    sparse-switch v1, :sswitch_data_98

    .line 1025
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1026
    const/4 v3, 0x2

    .line 1030
    :goto_4a
    if-eqz v3, :cond_1b

    .line 1032
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteProperty(Ljava/lang/Object;)V

    goto :goto_e

    .line 993
    :sswitch_50
    const/16 v5, 0x18

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pPropName:Ljava/lang/String;

    goto :goto_4a

    .line 997
    :sswitch_59
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pDataType:Ljava/lang/String;

    goto :goto_4a

    .line 1001
    :sswitch_62
    const/16 v5, 0x2d

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pMaxOccur:Ljava/lang/String;

    goto :goto_4a

    .line 1005
    :sswitch_6b
    const/16 v5, 0x1c

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pMaxSize:Ljava/lang/String;

    goto :goto_4a

    .line 1009
    :sswitch_74
    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v2, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->bNoTruncate:J

    goto :goto_4a

    .line 1013
    :sswitch_7e
    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElelist(I)Lcom/syncmldstmo/base/smlList;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pListValEnum:Lcom/syncmldstmo/base/smlList;

    goto :goto_4a

    .line 1017
    :sswitch_85
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pDisplayName:Ljava/lang/String;

    goto :goto_4a

    .line 1021
    :sswitch_8e
    iget-object v5, v2, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pListPropParam:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p0, v5, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParsePropparamList(Lcom/syncmldstmo/base/smlList;I)Lcom/syncmldstmo/base/smlList;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_PROPERTY;->pListPropParam:Lcom/syncmldstmo/base/smlList;

    goto :goto_4a

    .line 990
    nop

    :sswitch_data_98
    .sparse-switch
        0x8 -> :sswitch_59
        0xc -> :sswitch_85
        0x18 -> :sswitch_50
        0x1c -> :sswitch_6b
        0x23 -> :sswitch_7e
        0x2c -> :sswitch_8e
        0x2d -> :sswitch_62
        0x2e -> :sswitch_74
    .end sparse-switch
.end method

.method public __smlparParsePropertyList(Lcom/syncmldstmo/base/smlList;I)Lcom/syncmldstmo/base/smlList;
    .registers 8
    .parameter "propertyList"
    .parameter "eleid"

    .prologue
    .line 1044
    move-object v1, p1

    .line 1045
    .local v1, h:Lcom/syncmldstmo/base/smlList;
    const/4 v3, 0x0

    .line 1046
    .local v3, item:Lcom/syncmldstmo/base/sml$SML_PROPERTY;
    const/4 v2, -0x1

    .line 1052
    .local v2, id:I
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_a

    move-result v2

    .line 1059
    :goto_7
    if-eq v2, p2, :cond_13

    .line 1076
    .end local p1
    :goto_9
    return-object p1

    .line 1054
    .restart local p1
    :catch_a
    move-exception v0

    .line 1056
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_7

    .line 1064
    .end local v0           #e:Ljava/io/IOException;
    :cond_13
    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseProperty(Lcom/syncmldstmo/base/sml$SML_PROPERTY;)Lcom/syncmldstmo/base/sml$SML_PROPERTY;

    move-result-object v3

    .line 1065
    if-nez v3, :cond_1e

    .line 1067
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeletePropertyList(Ljava/lang/Object;)V

    .line 1068
    const/4 p1, 0x0

    goto :goto_9

    .line 1070
    :cond_1e
    if-nez p1, :cond_26

    .line 1071
    new-instance p1, Lcom/syncmldstmo/base/smlList;

    .end local p1
    invoke-direct {p1, v3}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    .restart local p1
    goto :goto_3

    .line 1073
    :cond_26
    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlList;->sml_list_append(Ljava/lang/Object;)Lcom/syncmldstmo/base/smlList;

    goto :goto_3
.end method

.method public __smlparParsePropparam(Lcom/syncmldstmo/base/sml$SML_PROPPARAM;)Lcom/syncmldstmo/base/sml$SML_PROPPARAM;
    .registers 10
    .parameter "PropParam"

    .prologue
    const/4 v4, 0x0

    .line 836
    const/4 v2, 0x0

    .line 837
    .local v2, o:Lcom/syncmldstmo/base/sml$SML_PROPPARAM;
    const/4 v1, -0x1

    .line 838
    .local v1, id:I
    const/4 v3, 0x0

    .line 840
    .local v3, res:I
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_PROPPARAM;

    .end local v2           #o:Lcom/syncmldstmo/base/sml$SML_PROPPARAM;
    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_PROPPARAM;-><init>()V

    .line 841
    .restart local v2       #o:Lcom/syncmldstmo/base/sml$SML_PROPPARAM;
    if-nez v2, :cond_f

    .line 843
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeletePropparam(Ljava/lang/Object;)V

    .line 911
    :goto_e
    return-object v4

    .line 847
    :cond_f
    const/16 v5, 0x2c

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v3

    .line 848
    if-eqz v3, :cond_1b

    .line 850
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeletePropparam(Ljava/lang/Object;)V

    goto :goto_e

    .line 858
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_25

    move-result v1

    .line 865
    :goto_1f
    if-eqz v3, :cond_2e

    .line 867
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeletePropparam(Ljava/lang/Object;)V

    goto :goto_e

    .line 860
    :catch_25
    move-exception v0

    .line 862
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1f

    .line 871
    .end local v0           #e:Ljava/io/IOException;
    :cond_2e
    const/4 v5, 0x1

    if-ne v1, v5, :cond_38

    .line 873
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 909
    move-object p1, v2

    move-object v4, p1

    .line 911
    goto :goto_e

    .line 878
    :cond_38
    sparse-switch v1, :sswitch_data_78

    .line 897
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 898
    const/4 v3, 0x2

    .line 902
    :goto_50
    if-eqz v3, :cond_1b

    .line 904
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeletePropparam(Ljava/lang/Object;)V

    goto :goto_e

    .line 881
    :sswitch_56
    const/16 v5, 0x17

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_PROPPARAM;->pParamName:Ljava/lang/String;

    goto :goto_50

    .line 885
    :sswitch_5f
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_PROPPARAM;->pDataType:Ljava/lang/String;

    goto :goto_50

    .line 889
    :sswitch_68
    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElelist(I)Lcom/syncmldstmo/base/smlList;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_PROPPARAM;->pListValEnum:Lcom/syncmldstmo/base/smlList;

    goto :goto_50

    .line 893
    :sswitch_6f
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_PROPPARAM;->pDisplayName:Ljava/lang/String;

    goto :goto_50

    .line 878
    :sswitch_data_78
    .sparse-switch
        0x8 -> :sswitch_5f
        0xc -> :sswitch_6f
        0x17 -> :sswitch_56
        0x23 -> :sswitch_68
    .end sparse-switch
.end method

.method public __smlparParsePropparamList(Lcom/syncmldstmo/base/smlList;I)Lcom/syncmldstmo/base/smlList;
    .registers 8
    .parameter "propparamList"
    .parameter "eleid"

    .prologue
    .line 916
    move-object v1, p1

    .line 917
    .local v1, h:Lcom/syncmldstmo/base/smlList;
    const/4 v3, 0x0

    .line 918
    .local v3, item:Lcom/syncmldstmo/base/sml$SML_PROPPARAM;
    const/4 v2, -0x1

    .line 924
    .local v2, id:I
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_a

    move-result v2

    .line 931
    :goto_7
    if-eq v2, p2, :cond_13

    .line 949
    .end local p1
    :goto_9
    return-object p1

    .line 926
    .restart local p1
    :catch_a
    move-exception v0

    .line 928
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_7

    .line 936
    .end local v0           #e:Ljava/io/IOException;
    :cond_13
    invoke-virtual {p0, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParsePropparam(Lcom/syncmldstmo/base/sml$SML_PROPPARAM;)Lcom/syncmldstmo/base/sml$SML_PROPPARAM;

    move-result-object v3

    .line 937
    if-nez v3, :cond_1e

    .line 939
    invoke-static {v1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeletePropparamList(Ljava/lang/Object;)V

    .line 940
    const/4 p1, 0x0

    goto :goto_9

    .line 943
    :cond_1e
    if-nez p1, :cond_26

    .line 944
    new-instance p1, Lcom/syncmldstmo/base/smlList;

    .end local p1
    invoke-direct {p1, v3}, Lcom/syncmldstmo/base/smlList;-><init>(Ljava/lang/Object;)V

    .restart local p1
    goto :goto_3

    .line 946
    :cond_26
    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlList;->sml_list_append(Ljava/lang/Object;)Lcom/syncmldstmo/base/smlList;

    goto :goto_3
.end method

.method public __smlparParseReadElement()I
    .registers 5

    .prologue
    .line 133
    const/4 v1, -0x1

    .line 137
    .local v1, id:I
    :try_start_1
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecReadBufferByte()I

    move-result v2

    .line 138
    .local v2, tmp:I
    and-int/lit8 v3, v2, 0x3f

    and-int/lit8 v1, v3, 0x7f

    .line 141
    and-int/lit16 v3, v2, 0x80

    if-lez v3, :cond_19

    .line 145
    :cond_d
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecReadBufferByte()I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_1b

    move-result v2

    .line 147
    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    .line 148
    const/4 v3, 0x4

    .line 160
    .end local v2           #tmp:I
    :goto_15
    return v3

    .line 150
    .restart local v2       #tmp:I
    :cond_16
    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .end local v2           #tmp:I
    :cond_19
    :goto_19
    move v3, v1

    .line 160
    goto :goto_15

    .line 156
    :catch_1b
    move-exception v0

    .line 158
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public __smlparParseSkipElement(I)I
    .registers 6
    .parameter "id"

    .prologue
    .line 755
    const/4 v1, 0x0

    .line 761
    .local v1, level:I
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I

    move-result v2

    .line 762
    .local v2, tmp:I
    if-nez v2, :cond_18

    .line 765
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecReadBufferByte()I

    .line 766
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecReadBufferByte()I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_1

    .line 803
    .end local v2           #tmp:I
    :catch_e
    move-exception v0

    .line 805
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 807
    .end local v0           #e:Ljava/io/IOException;
    :cond_16
    const/4 v3, 0x0

    return v3

    .line 768
    .restart local v2       #tmp:I
    :cond_18
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    .line 770
    :try_start_1b
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecReadBufferByte()I

    .line 771
    add-int/lit8 v1, v1, -0x1

    .line 772
    if-nez v1, :cond_1

    .line 792
    :goto_22
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I

    move-result v2

    .line 793
    if-nez v2, :cond_16

    .line 798
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecReadBufferByte()I

    .line 799
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecReadBufferByte()I

    goto :goto_22

    .line 777
    :cond_2f
    const/4 v3, 0x3

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x83

    if-eq v2, v3, :cond_3a

    const/16 v3, 0xc3

    if-ne v2, v3, :cond_3e

    .line 779
    :cond_3a
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseContent()Ljava/lang/String;

    goto :goto_1

    .line 783
    :cond_3e
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecReadBufferByte()I
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_41} :catch_e

    .line 784
    add-int/lit8 v1, v1, 0x1

    .line 759
    goto :goto_1
.end method

.method public __smlparParseSkipLiteralElement()I
    .registers 4

    .prologue
    .line 812
    const/4 v1, -0x1

    .line 817
    .local v1, id:I
    :try_start_1
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I

    move-result v1

    .line 819
    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    .line 823
    :cond_8
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecReadBufferByte()I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_11

    move-result v1

    .line 824
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 831
    :cond_f
    :goto_f
    const/4 v2, 0x0

    return v2

    .line 827
    :catch_11
    move-exception v0

    .line 829
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public __smlparParseSouceparent()Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 513
    const/4 v3, 0x0

    .line 514
    .local v3, sourceparent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;
    const/4 v1, -0x1

    .line 515
    .local v1, id:I
    const/4 v2, 0x0

    .line 517
    .local v2, res:I
    const/16 v5, 0x39

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 518
    if-eqz v2, :cond_e

    .line 558
    :goto_d
    return-object v4

    .line 522
    :cond_e
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;

    .end local v3           #sourceparent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;
    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;-><init>()V

    .line 527
    .restart local v3       #sourceparent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;
    :goto_13
    :try_start_13
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_23

    move-result v1

    .line 534
    :goto_17
    if-ne v1, v8, :cond_2c

    .line 536
    invoke-virtual {p0, v8}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 553
    if-eqz v2, :cond_4e

    .line 555
    invoke-static {v3}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteSourceParent(Ljava/lang/Object;)V

    goto :goto_d

    .line 529
    :catch_23
    move-exception v0

    .line 531
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_17

    .line 540
    .end local v0           #e:Ljava/io/IOException;
    :cond_2c
    packed-switch v1, :pswitch_data_50

    .line 547
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 548
    const/4 v2, 0x2

    .line 523
    goto :goto_13

    .line 543
    :pswitch_45
    const/16 v5, 0x17

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;->pLocURI:Ljava/lang/String;

    goto :goto_13

    :cond_4e
    move-object v4, v3

    .line 558
    goto :goto_d

    .line 540
    :pswitch_data_50
    .packed-switch 0x17
        :pswitch_45
    .end packed-switch
.end method

.method public __smlparParseSource()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 425
    const/4 v3, 0x0

    .line 426
    .local v3, source:Ljava/lang/String;
    const/4 v1, -0x1

    .line 429
    .local v1, id:I
    const/16 v5, 0x27

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 430
    .local v2, res:I
    if-eqz v2, :cond_c

    .line 457
    :cond_b
    :goto_b
    return-object v4

    .line 435
    :cond_c
    const/16 v5, 0x17

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    .line 439
    :try_start_12
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I

    move-result v1

    .line 441
    const/16 v5, 0x16

    if-ne v1, v5, :cond_1d

    .line 443
    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSkipElement(I)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_26

    .line 451
    :cond_1d
    :goto_1d
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 452
    if-nez v2, :cond_b

    move-object v4, v3

    .line 457
    goto :goto_b

    .line 446
    :catch_26
    move-exception v0

    .line 448
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public __smlparParseSyncbody()I
    .registers 23

    .prologue
    .line 165
    const/4 v10, -0x1

    .line 166
    .local v10, id:I
    const/4 v14, 0x0

    .line 167
    .local v14, res:I
    const/4 v11, 0x0

    .line 169
    .local v11, isFinal:I
    const/16 v19, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v14

    .line 170
    if-eqz v14, :cond_12

    move/from16 v19, v14

    .line 283
    :goto_11
    return v19

    .line 179
    :cond_12
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_36

    move-result v10

    .line 186
    :goto_16
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_3f

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v10

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdEndSyncml(Ljava/lang/Object;I)V

    .line 283
    const/16 v19, 0x0

    goto :goto_11

    .line 181
    :catch_36
    move-exception v7

    .line 183
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_16

    .line 192
    .end local v7           #e:Ljava/io/IOException;
    :cond_3f
    sparse-switch v10, :sswitch_data_11a

    .line 270
    const/high16 v19, 0x4

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 271
    const/4 v14, 0x2

    .line 275
    :goto_59
    if-eqz v14, :cond_12

    move/from16 v19, v14

    .line 277
    goto :goto_11

    .line 195
    :sswitch_5e
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_ALERT;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_ALERT;-><init>()V

    .line 196
    .local v3, alert:Lcom/syncmldstmo/base/sml$SML_ALERT;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/syncmldstmo/base/sml$SML_ALERT;->__smlparParseAlert(Lcom/syncmldstmo/base/smlParser;)I

    move-result v14

    .line 197
    goto :goto_59

    .line 200
    .end local v3           #alert:Lcom/syncmldstmo/base/sml$SML_ALERT;
    :sswitch_6a
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_ADD;

    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_ADD;-><init>()V

    .line 201
    .local v2, add:Lcom/syncmldstmo/base/sml$SML_ADD;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/syncmldstmo/base/sml$SML_ADD;->__smlparParseAdd(Lcom/syncmldstmo/base/smlParser;)I

    move-result v14

    .line 202
    goto :goto_59

    .line 205
    .end local v2           #add:Lcom/syncmldstmo/base/sml$SML_ADD;
    :sswitch_76
    new-instance v9, Lcom/syncmldstmo/base/sml$SML_GET;

    invoke-direct {v9}, Lcom/syncmldstmo/base/sml$SML_GET;-><init>()V

    .line 206
    .local v9, get:Lcom/syncmldstmo/base/sml$SML_GET;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/syncmldstmo/base/sml$SML_GET;->__smlparParseGet(Lcom/syncmldstmo/base/smlParser;)I

    move-result v14

    .line 207
    goto :goto_59

    .line 210
    .end local v9           #get:Lcom/syncmldstmo/base/sml$SML_GET;
    :sswitch_82
    new-instance v12, Lcom/syncmldstmo/base/sml$SML_MAP;

    invoke-direct {v12}, Lcom/syncmldstmo/base/sml$SML_MAP;-><init>()V

    .line 211
    .local v12, map:Lcom/syncmldstmo/base/sml$SML_MAP;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/syncmldstmo/base/sml$SML_MAP;->__smlparParseMap(Lcom/syncmldstmo/base/smlParser;)I

    move-result v14

    .line 212
    goto :goto_59

    .line 215
    .end local v12           #map:Lcom/syncmldstmo/base/sml$SML_MAP;
    :sswitch_8e
    new-instance v13, Lcom/syncmldstmo/base/sml$SML_PUT;

    invoke-direct {v13}, Lcom/syncmldstmo/base/sml$SML_PUT;-><init>()V

    .line 216
    .local v13, put:Lcom/syncmldstmo/base/sml$SML_PUT;
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/syncmldstmo/base/sml$SML_PUT;->__smlparParsePut(Lcom/syncmldstmo/base/smlParser;)I

    move-result v14

    .line 217
    goto :goto_59

    .line 220
    .end local v13           #put:Lcom/syncmldstmo/base/sml$SML_PUT;
    :sswitch_9a
    new-instance v15, Lcom/syncmldstmo/base/sml$SML_RESULTS;

    invoke-direct {v15}, Lcom/syncmldstmo/base/sml$SML_RESULTS;-><init>()V

    .line 221
    .local v15, results:Lcom/syncmldstmo/base/sml$SML_RESULTS;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/syncmldstmo/base/sml$SML_RESULTS;->__smlparParseResults(Lcom/syncmldstmo/base/smlParser;)I

    move-result v14

    .line 222
    goto :goto_59

    .line 225
    .end local v15           #results:Lcom/syncmldstmo/base/sml$SML_RESULTS;
    :sswitch_a6
    new-instance v17, Lcom/syncmldstmo/base/sml$SML_STATUS;

    invoke-direct/range {v17 .. v17}, Lcom/syncmldstmo/base/sml$SML_STATUS;-><init>()V

    .line 226
    .local v17, status:Lcom/syncmldstmo/base/sml$SML_STATUS;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/sml$SML_STATUS;->__smlparParseStatus(Lcom/syncmldstmo/base/smlParser;)I

    move-result v14

    .line 227
    goto :goto_59

    .line 230
    .end local v17           #status:Lcom/syncmldstmo/base/sml$SML_STATUS;
    :sswitch_b4
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_ATOMIC;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_ATOMIC;-><init>()V

    .line 231
    .local v4, atomic:Lcom/syncmldstmo/base/sml$SML_ATOMIC;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/syncmldstmo/base/sml$SML_ATOMIC;->__smlparParseAtomic(Lcom/syncmldstmo/base/smlParser;)I

    move-result v14

    .line 232
    goto :goto_59

    .line 235
    .end local v4           #atomic:Lcom/syncmldstmo/base/sml$SML_ATOMIC;
    :sswitch_c0
    new-instance v16, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;

    invoke-direct/range {v16 .. v16}, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;-><init>()V

    .line 236
    .local v16, sequence:Lcom/syncmldstmo/base/sml$SML_SEQUENCE;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->__smlparParseSequence(Lcom/syncmldstmo/base/smlParser;)I

    move-result v14

    .line 237
    goto :goto_59

    .line 240
    .end local v16           #sequence:Lcom/syncmldstmo/base/sml$SML_SEQUENCE;
    :sswitch_ce
    new-instance v18, Lcom/syncmldstmo/base/sml$SML_SYNC;

    invoke-direct/range {v18 .. v18}, Lcom/syncmldstmo/base/sml$SML_SYNC;-><init>()V

    .line 241
    .local v18, sync:Lcom/syncmldstmo/base/sml$SML_SYNC;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/sml$SML_SYNC;->__smlparParseSync(Lcom/syncmldstmo/base/smlParser;)I

    move-result v14

    .line 242
    goto/16 :goto_59

    .line 245
    .end local v18           #sync:Lcom/syncmldstmo/base/sml$SML_SYNC;
    :sswitch_dd
    new-instance v6, Lcom/syncmldstmo/base/sml$SML_DELETE;

    invoke-direct {v6}, Lcom/syncmldstmo/base/sml$SML_DELETE;-><init>()V

    .line 246
    .local v6, delete:Lcom/syncmldstmo/base/sml$SML_DELETE;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/syncmldstmo/base/sml$SML_DELETE;->__smlparParseDelete(Lcom/syncmldstmo/base/smlParser;)I

    move-result v14

    .line 247
    goto/16 :goto_59

    .line 250
    .end local v6           #delete:Lcom/syncmldstmo/base/sml$SML_DELETE;
    :sswitch_ea
    new-instance v5, Lcom/syncmldstmo/base/sml$SML_COPY;

    invoke-direct {v5}, Lcom/syncmldstmo/base/sml$SML_COPY;-><init>()V

    .line 251
    .local v5, copy:Lcom/syncmldstmo/base/sml$SML_COPY;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/syncmldstmo/base/sml$SML_COPY;->__smlparParseCopy(Lcom/syncmldstmo/base/smlParser;)I

    move-result v14

    .line 252
    goto/16 :goto_59

    .line 255
    .end local v5           #copy:Lcom/syncmldstmo/base/sml$SML_COPY;
    :sswitch_f7
    new-instance v8, Lcom/syncmldstmo/base/sml$SML_EXEC;

    invoke-direct {v8}, Lcom/syncmldstmo/base/sml$SML_EXEC;-><init>()V

    .line 256
    .local v8, exec:Lcom/syncmldstmo/base/sml$SML_EXEC;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/syncmldstmo/base/sml$SML_EXEC;->__smlparParseExec(Lcom/syncmldstmo/base/smlParser;)I

    move-result v14

    .line 257
    goto/16 :goto_59

    .line 260
    .end local v8           #exec:Lcom/syncmldstmo/base/sml$SML_EXEC;
    :sswitch_104
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v11

    .line 261
    goto/16 :goto_59

    .line 264
    :sswitch_10c
    invoke-virtual/range {p0 .. p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v10

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v10

    .line 266
    move-object/from16 v0, p0

    iput v10, v0, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto/16 :goto_59

    .line 192
    :sswitch_data_11a
    .sparse-switch
        0x0 -> :sswitch_10c
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_5e
        0x8 -> :sswitch_b4
        0xd -> :sswitch_ea
        0x10 -> :sswitch_dd
        0x11 -> :sswitch_f7
        0x12 -> :sswitch_104
        0x13 -> :sswitch_76
        0x18 -> :sswitch_82
        0x1f -> :sswitch_8e
        0x22 -> :sswitch_9a
        0x24 -> :sswitch_c0
        0x29 -> :sswitch_a6
        0x2a -> :sswitch_ce
    .end sparse-switch
.end method

.method public __smlparParseSynccap(Lcom/syncmldstmo/base/sml$SML_SYNCCAP;)Lcom/syncmldstmo/base/sml$SML_SYNCCAP;
    .registers 10
    .parameter "syncCap"

    .prologue
    const/4 v4, 0x0

    .line 1370
    move-object v2, p1

    .line 1371
    .local v2, o:Lcom/syncmldstmo/base/sml$SML_SYNCCAP;
    const/4 v1, -0x1

    .line 1372
    .local v1, id:I
    const/4 v3, 0x0

    .line 1374
    .local v3, res:I
    if-nez v2, :cond_a

    .line 1376
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteSynccap(Ljava/lang/Object;)V

    .line 1424
    :goto_9
    return-object v4

    .line 1380
    :cond_a
    const/16 v5, 0x1f

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v3

    .line 1381
    if-eqz v3, :cond_16

    .line 1383
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteSynccap(Ljava/lang/Object;)V

    goto :goto_9

    .line 1391
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_24

    move-result v1

    .line 1398
    :goto_1a
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2d

    .line 1400
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1423
    move-object p1, v2

    move-object v4, p1

    .line 1424
    goto :goto_9

    .line 1393
    :catch_24
    move-exception v0

    .line 1395
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1a

    .line 1405
    .end local v0           #e:Ljava/io/IOException;
    :cond_2d
    packed-switch v1, :pswitch_data_52

    .line 1412
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1413
    const/4 v3, 0x2

    .line 1417
    :goto_45
    if-eqz v3, :cond_16

    .line 1419
    invoke-static {v2}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteSynccap(Ljava/lang/Object;)V

    goto :goto_9

    .line 1408
    :pswitch_4b
    invoke-virtual {p0, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElelist(I)Lcom/syncmldstmo/base/smlList;

    move-result-object v5

    iput-object v5, v2, Lcom/syncmldstmo/base/sml$SML_SYNCCAP;->pListSyncType:Lcom/syncmldstmo/base/smlList;

    goto :goto_45

    .line 1405
    :pswitch_data_52
    .packed-switch 0x20
        :pswitch_4b
    .end packed-switch
.end method

.method public __smlparParseSyncml()I
    .registers 8

    .prologue
    const/high16 v6, 0x4

    .line 72
    const/4 v2, -0x1

    .line 73
    .local v2, id:I
    const/4 v3, 0x0

    .line 75
    .local v3, res:I
    const/16 v4, 0x2d

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v3

    .line 76
    if-eqz v3, :cond_13

    .line 78
    const-string v4, "not SML_ERR_OK"

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v4, v3

    .line 127
    :goto_12
    return v4

    .line 86
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_1c

    move-result v2

    .line 94
    const/4 v4, 0x1

    if-ne v2, v4, :cond_26

    .line 127
    const/4 v4, 0x0

    goto :goto_12

    .line 88
    :catch_1c
    move-exception v0

    .line 90
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    move v4, v3

    .line 91
    goto :goto_12

    .line 99
    .end local v0           #e:Ljava/io/IOException;
    :cond_26
    sparse-switch v2, :sswitch_data_58

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 117
    const/4 v3, 0x2

    .line 121
    :goto_3c
    if-eqz v3, :cond_13

    move v4, v3

    .line 123
    goto :goto_12

    .line 102
    :sswitch_40
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;-><init>()V

    .line 103
    .local v1, header:Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;
    invoke-virtual {v1, p0}, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->__smlparParseSyncheader(Lcom/syncmldstmo/base/smlParser;)I

    move-result v3

    .line 104
    goto :goto_3c

    .line 107
    .end local v1           #header:Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;
    :sswitch_4a
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSyncbody()I

    move-result v3

    .line 108
    goto :goto_3c

    .line 111
    :sswitch_4f
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v2

    .line 112
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v2

    .line 113
    goto :goto_3c

    .line 99
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_4f
        0x2b -> :sswitch_4a
        0x2c -> :sswitch_40
    .end sparse-switch
.end method

.method public __smlparParseTarget()Lcom/syncmldstmo/base/sml$SML_TARGET;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 363
    const/4 v3, 0x0

    .line 364
    .local v3, target:Lcom/syncmldstmo/base/sml$SML_TARGET;
    const/4 v1, -0x1

    .line 365
    .local v1, id:I
    const/4 v2, 0x0

    .line 367
    .local v2, res:I
    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 369
    if-eqz v2, :cond_e

    .line 420
    :goto_d
    return-object v4

    .line 374
    :cond_e
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_TARGET;

    .end local v3           #target:Lcom/syncmldstmo/base/sml$SML_TARGET;
    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_TARGET;-><init>()V

    .line 380
    .restart local v3       #target:Lcom/syncmldstmo/base/sml$SML_TARGET;
    :goto_13
    :sswitch_13
    :try_start_13
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_23

    move-result v1

    .line 387
    :goto_17
    if-ne v1, v8, :cond_2c

    .line 389
    invoke-virtual {p0, v8}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 415
    if-eqz v2, :cond_57

    .line 417
    invoke-static {v3}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteTarget(Ljava/lang/Object;)V

    goto :goto_d

    .line 382
    :catch_23
    move-exception v0

    .line 384
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_17

    .line 393
    .end local v0           #e:Ljava/io/IOException;
    :cond_2c
    sparse-switch v1, :sswitch_data_5a

    .line 409
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 410
    const/4 v2, 0x2

    .line 376
    goto :goto_13

    .line 396
    :sswitch_45
    const/16 v5, 0x17

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    goto :goto_13

    .line 400
    :sswitch_4e
    const/16 v5, 0x16

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocName:Ljava/lang/String;

    goto :goto_13

    :cond_57
    move-object v4, v3

    .line 420
    goto :goto_d

    .line 393
    nop

    :sswitch_data_5a
    .sparse-switch
        0x16 -> :sswitch_4e
        0x17 -> :sswitch_45
        0x36 -> :sswitch_13
    .end sparse-switch
.end method

.method public __smlparParseTargetparent()Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 462
    const/4 v3, 0x0

    .line 463
    .local v3, targetparent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;
    const/4 v1, -0x1

    .line 464
    .local v1, id:I
    const/4 v2, 0x0

    .line 466
    .local v2, res:I
    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 467
    if-eqz v2, :cond_e

    .line 508
    :goto_d
    return-object v4

    .line 472
    :cond_e
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;

    .end local v3           #targetparent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;
    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;-><init>()V

    .line 477
    .restart local v3       #targetparent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;
    :goto_13
    :try_start_13
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_23

    move-result v1

    .line 484
    :goto_17
    if-ne v1, v8, :cond_2c

    .line 486
    invoke-virtual {p0, v8}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 503
    if-eqz v2, :cond_4e

    .line 505
    invoke-static {v3}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteTargetparent(Ljava/lang/Object;)V

    goto :goto_d

    .line 479
    :catch_23
    move-exception v0

    .line 481
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_17

    .line 490
    .end local v0           #e:Ljava/io/IOException;
    :cond_2c
    packed-switch v1, :pswitch_data_50

    .line 497
    const/high16 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 498
    const/4 v2, 0x2

    .line 473
    goto :goto_13

    .line 493
    :pswitch_45
    const/16 v5, 0x17

    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;->pLocURI:Ljava/lang/String;

    goto :goto_13

    :cond_4e
    move-object v4, v3

    .line 508
    goto :goto_d

    .line 490
    :pswitch_data_50
    .packed-switch 0x17
        :pswitch_45
    .end packed-switch
.end method

.method public _smlparParse(Lcom/syncmldstmo/base/smlByteBuffer;)I
    .registers 7
    .parameter "wbuf"

    .prologue
    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, result:I
    const/4 v1, -0x1

    .line 47
    .local v1, id:I
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecInit(Lcom/syncmldstmo/base/smlByteBuffer;)V

    .line 48
    invoke-virtual {p0, p0}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecParseStartdoc(Lcom/syncmldstmo/base/smlParser;)V

    .line 52
    :try_start_8
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_19

    move-result v1

    .line 59
    :goto_c
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_22

    .line 61
    const/high16 v3, 0x4

    const-string v4, "not SML_WBXML_TAG_SyncML"

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 62
    const/4 v3, 0x2

    .line 67
    :goto_18
    return v3

    .line 54
    :catch_19
    move-exception v0

    .line 56
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_c

    .line 65
    .end local v0           #e:Ljava/io/IOException;
    :cond_22
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSyncml()I

    move-result v2

    move v3, v2

    .line 67
    goto :goto_18
.end method

.method public _smlparParseDevinfForDS(Lcom/syncmldstmo/base/sml$SML_DEVINF;)I
    .registers 9
    .parameter "devinf"

    .prologue
    .line 1800
    move-object v2, p1

    .line 1801
    .local v2, o:Lcom/syncmldstmo/base/sml$SML_DEVINF;
    const/4 v1, -0x1

    .line 1802
    .local v1, id:I
    const/4 v3, 0x0

    .line 1805
    .local v3, res:I
    if-nez v2, :cond_b

    .line 1807
    const/4 v3, 0x3

    .line 1808
    invoke-static {p1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDevinf(Ljava/lang/Object;)V

    move v4, v3

    .line 1922
    :goto_a
    return v4

    .line 1813
    :cond_b
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v3

    .line 1814
    if-eqz v3, :cond_18

    .line 1816
    invoke-static {p1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDevinf(Ljava/lang/Object;)V

    move v4, v3

    .line 1817
    goto :goto_a

    .line 1820
    :cond_18
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSkipLiteralElement()I

    move-result v3

    .line 1821
    if-eqz v3, :cond_23

    .line 1823
    invoke-static {p1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDevinf(Ljava/lang/Object;)V

    move v4, v3

    .line 1824
    goto :goto_a

    .line 1831
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_35

    move-result v1

    .line 1838
    :goto_27
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3e

    .line 1840
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1917
    if-eqz v2, :cond_33

    .line 1919
    invoke-static {v2}, Lcom/syncmldstmo/base/smlHandleCmd;->smlHandleDevinfCommand(Lcom/syncmldstmo/base/sml$SML_DEVINF;)V

    .line 1922
    :cond_33
    const/4 v4, 0x0

    goto :goto_a

    .line 1833
    :catch_35
    move-exception v0

    .line 1835
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_27

    .line 1846
    .end local v0           #e:Ljava/io/IOException;
    :cond_3e
    sparse-switch v1, :sswitch_data_e0

    .line 1905
    const/high16 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1906
    const/4 v3, 0x2

    .line 1910
    :goto_56
    if-eqz v3, :cond_23

    .line 1912
    invoke-static {p1}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDevinf(Ljava/lang/Object;)V

    move v4, v3

    .line 1913
    goto :goto_a

    .line 1849
    :sswitch_5d
    const/16 v4, 0x25

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pVerDTD:Ljava/lang/String;

    goto :goto_56

    .line 1853
    :sswitch_66
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pMan:Ljava/lang/String;

    goto :goto_56

    .line 1857
    :sswitch_6f
    const/16 v4, 0x15

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pMod:Ljava/lang/String;

    goto :goto_56

    .line 1861
    :sswitch_78
    const/16 v4, 0x16

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pOEM:Ljava/lang/String;

    goto :goto_56

    .line 1865
    :sswitch_81
    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pFwV:Ljava/lang/String;

    goto :goto_56

    .line 1869
    :sswitch_8a
    const/16 v4, 0x1e

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pSwV:Ljava/lang/String;

    goto :goto_56

    .line 1873
    :sswitch_93
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pHwV:Ljava/lang/String;

    goto :goto_56

    .line 1877
    :sswitch_9c
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pDevID:Ljava/lang/String;

    goto :goto_56

    .line 1881
    :sswitch_a5
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pDevTyp:Ljava/lang/String;

    goto :goto_56

    .line 1885
    :sswitch_ae
    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->bUTC:J

    goto :goto_56

    .line 1889
    :sswitch_b8
    const/16 v4, 0x2a

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->bSupportLargeObjects:J

    goto :goto_56

    .line 1893
    :sswitch_c2
    const/16 v4, 0x29

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->bSupportNumberOfChanges:J

    goto :goto_56

    .line 1897
    :sswitch_cc
    iget-object v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pListDataStore:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseDatastoreList(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v4

    iput-object v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pListDataStore:Lcom/syncmldstmo/base/smlList;

    goto :goto_56

    .line 1901
    :sswitch_d5
    iget-object v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pListExt:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseExtList(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v4

    iput-object v4, v2, Lcom/syncmldstmo/base/sml$SML_DEVINF;->pListExt:Lcom/syncmldstmo/base/smlList;

    goto/16 :goto_56

    .line 1846
    nop

    :sswitch_data_e0
    .sparse-switch
        0x7 -> :sswitch_cc
        0x9 -> :sswitch_9c
        0xb -> :sswitch_a5
        0xe -> :sswitch_d5
        0xf -> :sswitch_81
        0x10 -> :sswitch_93
        0x11 -> :sswitch_66
        0x15 -> :sswitch_6f
        0x16 -> :sswitch_78
        0x1e -> :sswitch_8a
        0x25 -> :sswitch_5d
        0x28 -> :sswitch_ae
        0x29 -> :sswitch_c2
        0x2a -> :sswitch_b8
    .end sparse-switch
.end method

.method public _smlparParseInit(Ljava/lang/Object;)V
    .registers 3
    .parameter "userdata"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlParser;->init()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    .line 39
    iput-object p1, p0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/syncmldstmo/base/smlParser;->_version:I

    .line 21
    iput v0, p0, Lcom/syncmldstmo/base/smlParser;->_puid:I

    .line 22
    iput v0, p0, Lcom/syncmldstmo/base/smlParser;->_charset:I

    .line 23
    iput-object v1, p0, Lcom/syncmldstmo/base/smlParser;->_stringtable:Ljava/lang/String;

    .line 24
    iput v0, p0, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    .line 25
    iput-object v1, p0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    .line 26
    return-void
.end method
