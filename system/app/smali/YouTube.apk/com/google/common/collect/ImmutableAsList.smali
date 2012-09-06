.class final Lcom/google/common/collect/ImmutableAsList;
.super Lcom/google/common/collect/RegularImmutableList;
.source "SourceFile"


# instance fields
.field private final transient collection:Lcom/google/common/collect/ImmutableCollection;


# direct methods
.method constructor <init>([Ljava/lang/Object;Lcom/google/common/collect/ImmutableCollection;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 38
    iput-object p2, p0, Lcom/google/common/collect/ImmutableAsList;->collection:Lcom/google/common/collect/ImmutableCollection;

    .line 39
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 63
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/common/collect/ImmutableAsList;->collection:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 67
    new-instance v0, Lcom/google/common/collect/ImmutableAsList$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableAsList;->collection:Lcom/google/common/collect/ImmutableCollection;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableAsList$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableCollection;)V

    return-object v0
.end method
