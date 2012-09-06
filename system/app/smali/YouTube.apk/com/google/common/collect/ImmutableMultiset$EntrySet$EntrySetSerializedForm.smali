.class Lcom/google/common/collect/ImmutableMultiset$EntrySet$EntrySetSerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final multiset:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .registers 2
    .parameter

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$EntrySetSerializedForm;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    .line 447
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$EntrySetSerializedForm;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
