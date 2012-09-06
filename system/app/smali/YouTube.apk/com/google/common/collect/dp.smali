.class final Lcom/google/common/collect/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/collect/ju;

.field static final b:Lcom/google/common/collect/ju;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 309
    const-class v0, Lcom/google/common/collect/ImmutableMultimap;

    const-string v1, "map"

    invoke-static {v0, v1}, Lcom/google/common/collect/jt;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ju;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/dp;->a:Lcom/google/common/collect/ju;

    .line 312
    const-class v0, Lcom/google/common/collect/ImmutableMultimap;

    const-string v1, "size"

    invoke-static {v0, v1}, Lcom/google/common/collect/jt;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/ju;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/dp;->b:Lcom/google/common/collect/ju;

    return-void
.end method
