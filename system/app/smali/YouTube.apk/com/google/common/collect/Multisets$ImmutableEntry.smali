.class final Lcom/google/common/collect/Multisets$ImmutableEntry;
.super Lcom/google/common/collect/iv;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final count:I

.field final element:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/google/common/collect/iv;-><init>()V

    .line 300
    iput-object p1, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    .line 301
    iput p2, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->count:I

    .line 302
    if-ltz p2, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 303
    return-void

    .line 302
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 312
    iget v0, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->count:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    return-object v0
.end method
