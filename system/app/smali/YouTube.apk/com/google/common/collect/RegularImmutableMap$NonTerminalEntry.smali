.class final Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;
.super Lcom/google/common/collect/ImmutableEntry;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/jn;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field final next:Lcom/google/common/collect/jn;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/jn;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;->next:Lcom/google/common/collect/jn;

    .line 118
    return-void
.end method


# virtual methods
.method public final next()Lcom/google/common/collect/jn;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;->next:Lcom/google/common/collect/jn;

    return-object v0
.end method
