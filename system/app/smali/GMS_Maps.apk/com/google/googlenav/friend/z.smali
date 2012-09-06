.class Lcom/google/googlenav/friend/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/aE;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/friend/t;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/t;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/google/googlenav/friend/z;->b:Lcom/google/googlenav/friend/t;

    iput-object p2, p0, Lcom/google/googlenav/friend/z;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/googlenav/friend/z;->b:Lcom/google/googlenav/friend/t;

    invoke-static {v0}, Lcom/google/googlenav/friend/t;->d(Lcom/google/googlenav/friend/t;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/16 v1, 0x17d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/friend/z;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public b()V
    .registers 6

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/googlenav/friend/z;->b:Lcom/google/googlenav/friend/t;

    invoke-static {v0}, Lcom/google/googlenav/friend/t;->d(Lcom/google/googlenav/friend/t;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/16 v1, 0x179

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/friend/z;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 452
    return-void
.end method
