.class public final Lcom/google/zxing/common/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Vector;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/Vector;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/zxing/common/g;->a:[B

    .line 37
    iput-object p2, p0, Lcom/google/zxing/common/g;->b:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/google/zxing/common/g;->c:Ljava/util/Vector;

    .line 39
    iput-object p4, p0, Lcom/google/zxing/common/g;->d:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/zxing/common/g;->a:[B

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/zxing/common/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/zxing/common/g;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/zxing/common/g;->d:Ljava/lang/String;

    return-object v0
.end method
