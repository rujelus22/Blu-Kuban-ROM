.class Lcom/google/common/collect/bv;
.super Lcom/google/common/collect/y;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/common/collect/y;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/common/collect/bv;->a:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Lcom/google/common/collect/bv;->b:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/common/collect/bv;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/common/collect/bv;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
