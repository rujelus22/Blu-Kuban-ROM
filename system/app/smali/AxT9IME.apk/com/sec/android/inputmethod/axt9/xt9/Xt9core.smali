.class public Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;
.super Ljava/lang/Object;
.source "Xt9core.java"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    :try_start_0
    const-string v1, "JNI"

    const-string v2, "Trying to load libXt9core.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v1, "/system/lib/libXt9core.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_c} :catch_d

    .line 31
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_c
    return-void

    .line 28
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_d
    move-exception v0

    .line 29
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNI"

    const-string v2, "WARNING: Could not load libXt9core.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ET9AWASDBAddEntry([S[SSS)S
.end method

.method public static native ET9AWASDBDeleteEntry([SS)S
.end method

.method public static native ET9AWASDBFindEntry([SS[SS[S)S
.end method

.method public static native ET9AWASDBGetEntry([SS[S[SS[SB)S
.end method

.method public static native ET9AWASDBGetEntryCount([S)S
.end method

.method public static native ET9AWASDBInit([BS)S
.end method

.method public static native ET9AWBreakContext()S
.end method

.method public static native ET9AWCDBInit([BS)S
.end method

.method public static native ET9AWClearAutoAppendInList()S
.end method

.method public static native ET9AWClearDBCompletion()S
.end method

.method public static native ET9AWClearDBPrediction()S
.end method

.method public static native ET9AWClearLDBAutoSubstitution()S
.end method

.method public static native ET9AWClearUDBDelayedReorder()S
.end method

.method public static native ET9AWClearUserDefinedAutoSubstitution()S
.end method

.method public static native ET9AWGetTermPuncts(S[SB[B[Z)S
.end method

.method public static native ET9AWLdbGetLanguage([S[S)S
.end method

.method public static native ET9AWLdbInit()S
.end method

.method public static native ET9AWLdbSetLanguage(SS)S
.end method

.method public static native ET9AWLdbValidate(S)S
.end method

.method public static native ET9AWNoteWordDone([SS)S
.end method

.method public static native ET9AWRUDBInit([BS)S
.end method

.method public static native ET9AWSelLstBuild([B[B)S
.end method

.method public static native ET9AWSelLstGetWord(Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;B)S
.end method

.method public static native ET9AWSelLstPostShift(B[B[B)S
.end method

.method public static native ET9AWSelLstSelWord(B)S
.end method

.method public static native ET9AWSetAutoAppendInList()S
.end method

.method public static native ET9AWSetDBCompletion()S
.end method

.method public static native ET9AWSetDBPrediction()S
.end method

.method public static native ET9AWSetLDBAutoSubstitution()S
.end method

.method public static native ET9AWSetUDBDelayedReorder()S
.end method

.method public static native ET9AWSetUserDefinedAutoSubstitution()S
.end method

.method public static native ET9AWSysInit(ZB)S
.end method

.method public static native ET9AWSysSetSpellCorrectionMode(BZ)S
.end method

.method public static native ET9AWSysSetWordCompletionPoint(S)S
.end method

.method public static native ET9AWSysSetWordStemsPoint(S)S
.end method

.method public static native ET9AWUDBAddWord([SS)S
.end method

.method public static native ET9AWUDBDeleteWord([SS)S
.end method

.method public static native ET9AWUDBFindWord([SS)S
.end method

.method public static native ET9AWUDBGetWord([SS[SB)S
.end method

.method public static native ET9AWUDBGetWordCount([S)S
.end method

.method public static native ET9AddExplicitSymb(SBB)S
.end method

.method public static native ET9ClearAllSymbs()S
.end method

.method public static native ET9ClearOneSymb()S
.end method

.method public static native ET9DeleteSymbs(BB)S
.end method

.method public static native ET9GetCodeVersion([SS[S)S
.end method

.method public static native ET9GetStateBits()I
.end method

.method public static native ET9KBuildHangul(Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;[SS)S
.end method

.method public static native ET9KDB_GetKdbNum([S[S)S
.end method

.method public static native ET9KDB_GetMultiTapSequence([SS[S[B)S
.end method

.method public static native ET9KDB_GetPageNum([S[S)S
.end method

.method public static native ET9KDB_GetStateBits()I
.end method

.method public static native ET9KDB_Init(SSSS)S
.end method

.method public static native ET9KDB_IsAutoAcceptBeforeTrace([Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z
.end method

.method public static native ET9KDB_ProcessKey(SB[S)S
.end method

.method public static native ET9KDB_ProcessTrace([Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;IB)S
.end method

.method public static native ET9KDB_ReselectWord([SS)S
.end method

.method public static native ET9KDB_SetAmbigMode(SS)S
.end method

.method public static native ET9KDB_SetDiscreteMode()S
.end method

.method public static native ET9KDB_SetKdbNum(SSSS)S
.end method

.method public static native ET9KDB_SetKeyboardSize(SS)S
.end method

.method public static native ET9KDB_SetMultiTapMode(SS)S
.end method

.method public static native ET9KDB_SetPageNum(SS)S
.end method

.method public static native ET9KDB_SetRegionalMode()S
.end method

.method public static native ET9KDB_TimeOut()S
.end method

.method public static native ET9KDB_Validate(S)S
.end method

.method public static native ET9KSysInit()S
.end method

.method public static native ET9SetCapsLock()S
.end method

.method public static native ET9SetShift()S
.end method

.method public static native ET9SetUnShift()S
.end method

.method public static native ET9WordSymbInit(B)S
.end method
