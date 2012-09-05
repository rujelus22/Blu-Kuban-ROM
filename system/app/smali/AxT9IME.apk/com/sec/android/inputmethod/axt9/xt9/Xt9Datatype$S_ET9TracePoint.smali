.class public Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9TracePoint"
.end annotation


# instance fields
.field public nX:J

.field public nY:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1550
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1551
    iput-wide p1, p0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;->nX:J

    .line 1552
    iput-wide p3, p0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;->nY:J

    .line 1553
    return-void
.end method
