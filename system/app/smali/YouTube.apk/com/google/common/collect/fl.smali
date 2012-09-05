.class final Lcom/google/common/collect/fl;
.super Lcom/google/common/collect/fm;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/common/collect/fl;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/fl;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/fm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/common/collect/fl;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/google/common/collect/fl;->b:I

    return v0
.end method
