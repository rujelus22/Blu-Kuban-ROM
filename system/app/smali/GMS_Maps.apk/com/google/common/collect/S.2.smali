.class final Lcom/google/common/collect/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/D;


# instance fields
.field final synthetic a:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/common/collect/S;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/common/collect/S;->a:Ljava/util/Collection;

    if-ne p1, v0, :cond_6

    const-string p1, "(this Collection)"

    :cond_6
    return-object p1
.end method
