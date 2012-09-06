.class final Lcom/google/common/collect/bo;
.super Lcom/google/common/collect/cZ;
.source "SourceFile"


# instance fields
.field private final transient a:Lcom/google/common/collect/br;


# direct methods
.method constructor <init>([Ljava/lang/Object;Lcom/google/common/collect/br;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/cZ;-><init>([Ljava/lang/Object;II)V

    .line 38
    iput-object p2, p0, Lcom/google/common/collect/bo;->a:Lcom/google/common/collect/br;

    .line 39
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/common/collect/bo;->a:Lcom/google/common/collect/br;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/br;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
