.class final Lcom/google/common/base/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/common/base/ac;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 179
    new-instance v0, Lcom/google/common/base/ad;

    invoke-direct {v0, p0}, Lcom/google/common/base/ad;-><init>(Lcom/google/common/base/ac;)V

    return-object v0
.end method
