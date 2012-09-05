.class final Lcom/google/net/async/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/async/c;


# instance fields
.field private final synthetic a:Lcom/google/net/async/f;

.field private final synthetic b:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/net/async/f;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/net/async/k;->a:Lcom/google/net/async/f;

    iput-object p2, p0, Lcom/google/net/async/k;->b:Ljava/lang/Exception;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/net/async/b;)V
    .registers 4
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/net/async/k;->a:Lcom/google/net/async/f;

    iget-object v1, p0, Lcom/google/net/async/k;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/google/net/async/f;->a(Ljava/lang/Exception;)V

    .line 271
    return-void
.end method
