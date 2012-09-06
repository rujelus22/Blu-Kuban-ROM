.class final Lcom/google/common/collect/jr;
.super Lcom/google/common/collect/iv;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field final b:I

.field final c:J


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/jr;)V
    .registers 8
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/common/collect/iv;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/common/collect/jr;->a:Ljava/lang/Object;

    .line 43
    iput p2, p0, Lcom/google/common/collect/jr;->b:I

    .line 44
    int-to-long v2, p2

    if-nez p3, :cond_10

    const-wide/16 v0, 0x0

    :goto_c
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/jr;->c:J

    .line 45
    return-void

    .line 44
    :cond_10
    iget-wide v0, p3, Lcom/google/common/collect/jr;->c:J

    goto :goto_c
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/google/common/collect/jr;->b:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/common/collect/jr;->a:Ljava/lang/Object;

    return-object v0
.end method
