.class public Lcom/google/googlenav/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method private constructor <init>(ZZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/google/googlenav/O;->a:Z

    .line 41
    iput-boolean p2, p0, Lcom/google/googlenav/O;->c:Z

    .line 42
    iput-boolean p3, p0, Lcom/google/googlenav/O;->b:Z

    .line 43
    return-void
.end method

.method synthetic constructor <init>(ZZZLcom/google/googlenav/N;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/O;-><init>(ZZZ)V

    return-void
.end method
