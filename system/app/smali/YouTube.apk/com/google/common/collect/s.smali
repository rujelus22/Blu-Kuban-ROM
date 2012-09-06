.class final Lcom/google/common/collect/s;
.super Lcom/google/common/collect/io;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .registers 2
    .parameter

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/io;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/hu;
    .registers 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/AbstractMultimap;

    return-object v0
.end method
