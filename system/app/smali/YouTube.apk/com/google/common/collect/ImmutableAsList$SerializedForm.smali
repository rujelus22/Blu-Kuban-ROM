.class Lcom/google/common/collect/ImmutableAsList$SerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final collection:Lcom/google/common/collect/ImmutableCollection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/common/collect/ImmutableAsList$SerializedForm;->collection:Lcom/google/common/collect/ImmutableCollection;

    .line 54
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/common/collect/ImmutableAsList$SerializedForm;->collection:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
