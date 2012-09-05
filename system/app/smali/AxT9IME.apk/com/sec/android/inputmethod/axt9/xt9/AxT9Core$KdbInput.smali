.class public Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;
.super Ljava/lang/Object;
.source "AxT9Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KdbInput"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;)V
    .registers 2
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->this$0:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetKdbNum([S[S)S
    .registers 4
    .parameter "pwFirstKdbNum"
    .parameter "pwSecondKdbNum"

    .prologue
    .line 850
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetKdbNum([S[S)S

    move-result v0

    return v0
.end method

.method public GetPageNum([S[S)S
    .registers 4
    .parameter "pwFirstPageNum"
    .parameter "pwSecondPageNum"

    .prologue
    .line 858
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v0

    return v0
.end method

.method public GetStateBits()I
    .registers 2

    .prologue
    .line 954
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetStateBits()I

    move-result v0

    return v0
.end method

.method public Init(SSSS)S
    .registers 7
    .parameter "wFirstKdbNum"
    .parameter "wFirstPageNum"
    .parameter "wSecondKdbNum"
    .parameter "wSecondPageNum"

    .prologue
    .line 815
    const/4 v0, 0x0

    .line 817
    .local v0, wStatus:S
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9WordSymbInit(B)S

    move-result v0

    .line 819
    if-eqz v0, :cond_9

    .line 823
    .end local v0           #wStatus:S
    :goto_8
    return v0

    .restart local v0       #wStatus:S
    :cond_9
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_Init(SSSS)S

    move-result v0

    goto :goto_8
.end method

.method public IsAutoAcceptBeforeTrace([Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z
    .registers 5
    .parameter "pPoints"
    .parameter "nPointCount"
    .parameter "pbAddSpace"

    .prologue
    .line 960
    invoke-static {p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_IsAutoAcceptBeforeTrace([Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z

    move-result v0

    return v0
.end method

.method public ProcessKey(SB[S)S
    .registers 5
    .parameter "wKeyIndex"
    .parameter "bCurrIndexInList"
    .parameter "sFunctionKey"

    .prologue
    .line 928
    invoke-static {p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_ProcessKey(SB[S)S

    move-result v0

    return v0
.end method

.method public ProcessTrace([Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;IB)S
    .registers 5
    .parameter "pTracePoints"
    .parameter "nTracePointCount"
    .parameter "bCurrIndexInList"

    .prologue
    .line 966
    invoke-static {p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_ProcessTrace([Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;IB)S

    move-result v0

    return v0
.end method

.method public ReselectWord([SS)S
    .registers 4
    .parameter "psWord"
    .parameter "wWordLen"

    .prologue
    .line 942
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_ReselectWord([SS)S

    move-result v0

    return v0
.end method

.method public SetAmbigMode()S
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 866
    new-array v0, v3, [S

    .line 867
    .local v0, pwFirstPageNum:[S
    new-array v1, v3, [S

    .line 868
    .local v1, pwSecondPageNum:[S
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v2

    .line 869
    .local v2, sStatus:S
    if-eqz v2, :cond_c

    .line 872
    :cond_c
    aget-short v3, v0, v4

    aget-short v4, v1, v4

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_SetAmbigMode(SS)S

    move-result v3

    return v3
.end method

.method public SetKdbNum(SSSS)S
    .registers 10
    .parameter "wFirstKdbNum"
    .parameter "wFirstPageNum"
    .parameter "wSecondKdbNum"
    .parameter "wSecondPageNum"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 838
    new-array v1, v3, [S

    .line 839
    .local v1, wCurrentFirstPage:[S
    new-array v2, v3, [S

    .line 840
    .local v2, wCurrentSecondPage:[S
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->GetPageNum([S[S)S

    .line 842
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_SetKdbNum(SSSS)S

    move-result v0

    .local v0, sStatus:S
    if-nez v0, :cond_16

    .line 844
    aget-short v3, v1, v4

    aget-short v4, v2, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetPageNum(SS)S

    .line 846
    :cond_16
    return v0
.end method

.method public SetKeyboardSize(SS)S
    .registers 4
    .parameter "wLayoutWidth"
    .parameter "wLayoutHeight"

    .prologue
    .line 970
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_SetKeyboardSize(SS)S

    move-result v0

    return v0
.end method

.method public SetMultiTapMode()S
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 877
    new-array v0, v3, [S

    .line 878
    .local v0, pwFirstPageNum:[S
    new-array v1, v3, [S

    .line 879
    .local v1, pwSecondPageNum:[S
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v2

    .line 880
    .local v2, sStatus:S
    if-eqz v2, :cond_c

    .line 883
    :cond_c
    aget-short v3, v0, v4

    aget-short v4, v1, v4

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_SetMultiTapMode(SS)S

    move-result v3

    return v3
.end method

.method public SetPageNum(SS)S
    .registers 4
    .parameter "wFirstPageNum"
    .parameter "wSecondPageNum"

    .prologue
    .line 854
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    move-result v0

    return v0
.end method

.method public SetRegionalCorrection(Z)S
    .registers 3
    .parameter "fSet"

    .prologue
    .line 917
    if-eqz p1, :cond_7

    .line 918
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_SetRegionalMode()S

    move-result v0

    .line 920
    :goto_6
    return v0

    :cond_7
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_SetDiscreteMode()S

    move-result v0

    goto :goto_6
.end method

.method public SetShiftState(B)S
    .registers 4
    .parameter "bShiftState"

    .prologue
    .line 889
    const/4 v1, 0x2

    if-ne v1, p1, :cond_8

    .line 890
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9SetCapsLock()S

    move-result v0

    .line 896
    .local v0, sStatus:S
    :goto_7
    return v0

    .line 891
    .end local v0           #sStatus:S
    :cond_8
    const/4 v1, 0x1

    if-ne v1, p1, :cond_10

    .line 892
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9SetShift()S

    move-result v0

    .restart local v0       #sStatus:S
    goto :goto_7

    .line 894
    .end local v0           #sStatus:S
    :cond_10
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9SetUnShift()S

    move-result v0

    .restart local v0       #sStatus:S
    goto :goto_7
.end method

.method public TimeOut()S
    .registers 2

    .prologue
    .line 862
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_TimeOut()S

    move-result v0

    return v0
.end method

.method public Validate(S)S
    .registers 3
    .parameter "wKdbNum"

    .prologue
    .line 828
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_Validate(S)S

    move-result v0

    .line 829
    .local v0, eStatus:S
    return v0
.end method

.method public getMultiTapSequence([SS[S[B)S
    .registers 6
    .parameter "psMultiTapSequenceBuf"
    .parameter "wBufSize"
    .parameter "pwTotalSymbs"
    .parameter "pbCurrentSelSymb"

    .prologue
    .line 949
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    move-result v0

    return v0
.end method
