.class public final Lcom/google/zxing/c/l;
.super Lcom/google/zxing/c/n;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/c/n;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/zxing/c/n;-><init>()V

    .line 37
    new-instance v0, Lcom/google/zxing/c/e;

    invoke-direct {v0}, Lcom/google/zxing/c/e;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/l;->a:Lcom/google/zxing/c/n;

    return-void
.end method

.method private static a(Lcom/google/zxing/h;)Lcom/google/zxing/h;
    .registers 6
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1f

    .line 69
    new-instance v1, Lcom/google/zxing/h;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/h;->b()[Lcom/google/zxing/j;

    move-result-object v3

    sget-object v4, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;)V

    return-object v1

    .line 71
    :cond_1f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected final a(Lcom/google/zxing/common/a;[ILjava/lang/StringBuffer;)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/zxing/c/l;->a:Lcom/google/zxing/c/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/zxing/c/n;->a(Lcom/google/zxing/common/a;[ILjava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public final a(ILcom/google/zxing/common/a;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/zxing/c/l;->a:Lcom/google/zxing/c/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/zxing/c/n;->a(ILcom/google/zxing/common/a;Ljava/util/Hashtable;)Lcom/google/zxing/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/c/l;->a(Lcom/google/zxing/h;)Lcom/google/zxing/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILcom/google/zxing/common/a;[ILjava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/zxing/c/l;->a:Lcom/google/zxing/c/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/zxing/c/n;->a(ILcom/google/zxing/common/a;[ILjava/util/Hashtable;)Lcom/google/zxing/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/c/l;->a(Lcom/google/zxing/h;)Lcom/google/zxing/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/zxing/c;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/zxing/c/l;->a:Lcom/google/zxing/c/n;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/c/n;->a(Lcom/google/zxing/c;Ljava/util/Hashtable;)Lcom/google/zxing/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/c/l;->a(Lcom/google/zxing/h;)Lcom/google/zxing/h;

    move-result-object v0

    return-object v0
.end method

.method final b()Lcom/google/zxing/a;
    .registers 2

    .prologue
    .line 58
    sget-object v0, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;

    return-object v0
.end method
