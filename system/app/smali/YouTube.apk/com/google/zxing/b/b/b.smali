.class final Lcom/google/zxing/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/j;

.field private final b:Lcom/google/zxing/j;

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/google/zxing/j;Lcom/google/zxing/j;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/google/zxing/b/b/b;->a:Lcom/google/zxing/j;

    .line 417
    iput-object p2, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/j;

    .line 418
    iput p3, p0, Lcom/google/zxing/b/b/b;->c:I

    .line 419
    return-void
.end method

.method constructor <init>(Lcom/google/zxing/j;Lcom/google/zxing/j;IB)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/b/b/b;-><init>(Lcom/google/zxing/j;Lcom/google/zxing/j;I)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/zxing/j;
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/zxing/b/b/b;->a:Lcom/google/zxing/j;

    return-object v0
.end method

.method final b()Lcom/google/zxing/j;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/j;

    return-object v0
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 427
    iget v0, p0, Lcom/google/zxing/b/b/b;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/google/zxing/b/b/b;->a:Lcom/google/zxing/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/b/b/b;->b:Lcom/google/zxing/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/b/b/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
