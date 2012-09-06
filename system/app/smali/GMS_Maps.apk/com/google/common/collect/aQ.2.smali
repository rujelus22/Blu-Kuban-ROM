.class Lcom/google/common/collect/aQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/aS;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1662
    iput-object p1, p0, Lcom/google/common/collect/aQ;->a:Ljava/lang/Object;

    .line 1663
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/au;)Lcom/google/common/collect/aS;
    .registers 2
    .parameter

    .prologue
    .line 1672
    return-object p0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 1677
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 1

    .prologue
    .line 1686
    return-void
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 1689
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/google/common/collect/aQ;->a:Ljava/lang/Object;

    return-object v0
.end method
