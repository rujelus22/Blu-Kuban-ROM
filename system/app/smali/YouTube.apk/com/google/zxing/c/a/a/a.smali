.class final Lcom/google/zxing/c/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Lcom/google/zxing/c/a/b;

.field private final c:Lcom/google/zxing/c/a/b;

.field private final d:Lcom/google/zxing/c/a/c;


# direct methods
.method constructor <init>(Lcom/google/zxing/c/a/b;Lcom/google/zxing/c/a/b;Lcom/google/zxing/c/a/c;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/zxing/c/a/a/a;->b:Lcom/google/zxing/c/a/b;

    .line 44
    iput-object p2, p0, Lcom/google/zxing/c/a/a/a;->c:Lcom/google/zxing/c/a/b;

    .line 45
    iput-object p3, p0, Lcom/google/zxing/c/a/a/a;->d:Lcom/google/zxing/c/a/c;

    .line 46
    iput-boolean p4, p0, Lcom/google/zxing/c/a/a/a;->a:Z

    .line 47
    return-void
.end method


# virtual methods
.method final a()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/zxing/c/a/a/a;->a:Z

    return v0
.end method

.method final b()Lcom/google/zxing/c/a/b;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a;->b:Lcom/google/zxing/c/a/b;

    return-object v0
.end method

.method final c()Lcom/google/zxing/c/a/b;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a;->c:Lcom/google/zxing/c/a/b;

    return-object v0
.end method

.method final d()Lcom/google/zxing/c/a/c;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a;->d:Lcom/google/zxing/c/a/c;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a;->c:Lcom/google/zxing/c/a/b;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
