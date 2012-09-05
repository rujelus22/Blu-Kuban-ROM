.class final Lcom/google/api/client/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/util/f;->b:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/google/api/client/util/f;->a:Ljava/lang/Class;

    .line 64
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/api/client/util/f;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/client/util/f;->a:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/api/client/util/v;->a(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
