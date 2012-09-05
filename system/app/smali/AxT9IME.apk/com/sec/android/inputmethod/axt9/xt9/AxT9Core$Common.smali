.class public Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;
.super Ljava/lang/Object;
.source "AxT9Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Common"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;->this$0:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ClearAllSymbs()S
    .registers 2

    .prologue
    .line 103
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9ClearAllSymbs()S

    move-result v0

    return v0
.end method

.method public ClearOneSymb()S
    .registers 2

    .prologue
    .line 99
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9ClearOneSymb()S

    move-result v0

    return v0
.end method

.method public DeleteSymbs(BB)S
    .registers 4
    .parameter "bIndex"
    .parameter "bCount"

    .prologue
    .line 107
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9DeleteSymbs(BB)S

    move-result v0

    return v0
.end method

.method public ExplicitSymb(SBB)S
    .registers 5
    .parameter "sSymb"
    .parameter "eShiftState"
    .parameter "bCurrIndexInList"

    .prologue
    .line 113
    invoke-static {p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AddExplicitSymb(SBB)S

    move-result v0

    return v0
.end method

.method public GetStateBits()I
    .registers 2

    .prologue
    .line 235
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9GetStateBits()I

    move-result v0

    return v0
.end method

.method public WordSymbInit(Z)S
    .registers 3
    .parameter "reset"

    .prologue
    .line 95
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    int-to-byte v0, v0

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9WordSymbInit(B)S

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method
