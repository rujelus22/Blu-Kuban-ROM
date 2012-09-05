.class final Lcom/google/api/client/util/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/api/client/util/w;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 366
    new-instance v0, Lcom/google/api/client/util/x;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/x;-><init>(Lcom/google/api/client/util/w;)V

    return-object v0
.end method
