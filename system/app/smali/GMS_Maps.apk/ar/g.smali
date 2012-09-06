.class LaR/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ai;

.field final synthetic b:LaR/a;

.field final synthetic c:LaR/e;


# direct methods
.method constructor <init>(LaR/e;Lcom/google/googlenav/ai;LaR/a;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, LaR/g;->c:LaR/e;

    iput-object p2, p0, LaR/g;->a:Lcom/google/googlenav/ai;

    iput-object p3, p0, LaR/g;->b:LaR/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, LaR/g;->c:LaR/e;

    iget-object v1, p0, LaR/g;->a:Lcom/google/googlenav/ai;

    iget-object v2, p0, LaR/g;->b:LaR/a;

    invoke-static {v0, p2, v1, v2}, LaR/e;->a(LaR/e;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ai;LaR/a;)V

    .line 54
    return-void
.end method
