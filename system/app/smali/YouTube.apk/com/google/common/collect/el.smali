.class final Lcom/google/common/collect/el;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/em;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    iput-object p1, p0, Lcom/google/common/collect/el;->a:Ljava/lang/Object;

    .line 1104
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/ee;)Lcom/google/common/collect/em;
    .registers 2
    .parameter

    .prologue
    .line 1112
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/google/common/collect/el;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final n_()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/google/common/collect/el;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
