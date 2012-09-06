.class Lcom/google/common/collect/dC;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/dB;


# direct methods
.method constructor <init>(Lcom/google/common/collect/dB;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/common/collect/dC;->a:Lcom/google/common/collect/dB;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/k;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/common/collect/dC;->a:Lcom/google/common/collect/dB;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/dB;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
