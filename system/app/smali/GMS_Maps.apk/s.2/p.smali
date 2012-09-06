.class public Ls/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ls/q;

.field private final b:I

.field private final c:Z


# direct methods
.method private constructor <init>(Ls/q;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Ls/p;->a:Ls/q;

    .line 74
    iput p2, p0, Ls/p;->b:I

    .line 75
    iput-boolean p3, p0, Ls/p;->c:Z

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Ls/q;IZLs/o;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Ls/p;-><init>(Ls/q;IZ)V

    return-void
.end method


# virtual methods
.method protected a()Ls/q;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Ls/p;->a:Ls/q;

    return-object v0
.end method

.method protected b()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Ls/p;->b:I

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Ls/p;->c:Z

    return v0
.end method
