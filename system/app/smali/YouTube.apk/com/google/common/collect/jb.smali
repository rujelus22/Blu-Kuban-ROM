.class final Lcom/google/common/collect/jb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/v;


# instance fields
.field final synthetic a:Lcom/google/common/collect/ja;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ja;)V
    .registers 2
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/common/collect/jb;->a:Lcom/google/common/collect/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 391
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ir;

    move-result-object v0

    return-object v0
.end method
