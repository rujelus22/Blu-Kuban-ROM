.class public Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;
.super Ljava/lang/Object;
.source "AxT9Core.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;,
        Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;,
        Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;,
        Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final ERROR:Z

.field public mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

.field public mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

.field public mKLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;

.field public mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->DEBUG:Z

    .line 27
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->ERROR:Z

    .line 30
    new-instance v0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;-><init>(Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    .line 31
    new-instance v0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;-><init>(Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    .line 32
    new-instance v0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;-><init>(Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;

    .line 33
    new-instance v0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;-><init>(Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    .line 790
    return-void
.end method
