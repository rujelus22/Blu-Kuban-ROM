.class final Lcom/google/common/collect/cp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/collect/ju;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 69
    const-class v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    const-string v1, "countMap"

    invoke-static {v0, v1}, Lcom/google/common/collect/jt;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ju;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/cp;->a:Lcom/google/common/collect/ju;

    return-void
.end method
