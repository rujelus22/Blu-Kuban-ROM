.class public Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;
.super Ljava/lang/Object;
.source "AxT9Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KLinguistic"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;)V
    .registers 2
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;->this$0:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public BuildHangul(Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;[SS)S
    .registers 5
    .parameter "pHangul"
    .parameter "pMultitapSequence"
    .parameter "wTotalSymbs"

    .prologue
    .line 782
    invoke-static {p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KBuildHangul(Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;[SS)S

    move-result v0

    return v0
.end method

.method public Init()S
    .registers 2

    .prologue
    .line 778
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KSysInit()S

    move-result v0

    return v0
.end method
