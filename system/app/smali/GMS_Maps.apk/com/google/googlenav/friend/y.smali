.class Lcom/google/googlenav/friend/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/e;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/x;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/x;)V
    .registers 2
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/googlenav/friend/y;->a:Lcom/google/googlenav/friend/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 395
    invoke-static {}, Lar/c;->k()Z

    move-result v0

    invoke-static {v0}, LaM/ch;->a(Z)V

    .line 397
    iget-object v0, p0, Lcom/google/googlenav/friend/y;->a:Lcom/google/googlenav/friend/x;

    iget-object v0, v0, Lcom/google/googlenav/friend/x;->a:Lcom/google/googlenav/friend/t;

    invoke-static {v0}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/t;)LaM/X;

    move-result-object v0

    invoke-virtual {v0}, LaM/X;->J()V

    .line 398
    return-void
.end method
