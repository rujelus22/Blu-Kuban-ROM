.class final Lcom/google/zxing/c/a/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/c/a/a/a/o;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/c/a/a/a/o;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p2, p0, Lcom/google/zxing/c/a/a/a/l;->b:Z

    .line 44
    iput-object p1, p0, Lcom/google/zxing/c/a/a/a/l;->a:Lcom/google/zxing/c/a/a/a/o;

    .line 45
    return-void
.end method

.method constructor <init>(Z)V
    .registers 4
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/c/a/a/a/l;-><init>(Lcom/google/zxing/c/a/a/a/o;Z)V

    .line 40
    return-void
.end method


# virtual methods
.method final a()Lcom/google/zxing/c/a/a/a/o;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/l;->a:Lcom/google/zxing/c/a/a/a/o;

    return-object v0
.end method

.method final b()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/zxing/c/a/a/a/l;->b:Z

    return v0
.end method
