.class final Lcom/google/zxing/c/a/a/a/o;
.super Lcom/google/zxing/c/a/a/a/q;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Z


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/q;-><init>(I)V

    .line 40
    iput-object p2, p0, Lcom/google/zxing/c/a/a/a/o;->b:Ljava/lang/String;

    .line 41
    iput-boolean v0, p0, Lcom/google/zxing/c/a/a/a/o;->d:Z

    .line 42
    iput v0, p0, Lcom/google/zxing/c/a/a/a/o;->c:I

    .line 43
    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/q;-><init>(I)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/c/a/a/a/o;->d:Z

    .line 48
    iput p3, p0, Lcom/google/zxing/c/a/a/a/o;->c:I

    .line 49
    iput-object p2, p0, Lcom/google/zxing/c/a/a/a/o;->b:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method final b()Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/zxing/c/a/a/a/o;->d:Z

    return v0
.end method

.method final c()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/google/zxing/c/a/a/a/o;->c:I

    return v0
.end method
