.class final Lcom/google/net/async/r;
.super Lcom/google/net/async/b;
.source "SourceFile"


# instance fields
.field b:Z


# direct methods
.method constructor <init>(JJLcom/google/net/async/c;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1145
    invoke-direct/range {p0 .. p6}, Lcom/google/net/async/b;-><init>(JJLcom/google/net/async/c;Ljava/lang/Object;)V

    .line 1141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/net/async/r;->b:Z

    .line 1146
    return-void
.end method
