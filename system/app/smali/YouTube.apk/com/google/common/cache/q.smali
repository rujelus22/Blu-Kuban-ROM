.class final Lcom/google/common/cache/q;
.super Lcom/google/common/cache/s;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .registers 2
    .parameter

    .prologue
    .line 4456
    iput-object p1, p0, Lcom/google/common/cache/q;->a:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0, p1}, Lcom/google/common/cache/s;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 4456
    invoke-virtual {p0}, Lcom/google/common/cache/q;->a()Lcom/google/common/cache/at;

    move-result-object v0

    return-object v0
.end method
