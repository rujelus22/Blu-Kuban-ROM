.class Lcom/google/googlenav/friend/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aY;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/googlenav/friend/t;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/t;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/googlenav/friend/v;->b:Lcom/google/googlenav/friend/t;

    iput-object p2, p0, Lcom/google/googlenav/friend/v;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aW;)V
    .registers 5
    .parameter

    .prologue
    .line 258
    const/4 v0, 0x1

    .line 259
    iget-object v1, p0, Lcom/google/googlenav/friend/v;->b:Lcom/google/googlenav/friend/t;

    invoke-static {v1}, Lcom/google/googlenav/friend/t;->a(Lcom/google/googlenav/friend/t;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/friend/v;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 260
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 252
    const/4 v0, 0x1

    .line 253
    iget-object v1, p0, Lcom/google/googlenav/friend/v;->b:Lcom/google/googlenav/friend/t;

    invoke-static {v1}, Lcom/google/googlenav/friend/t;->a(Lcom/google/googlenav/friend/t;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/friend/v;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 254
    return-void
.end method

.method public b(Lcom/google/googlenav/aW;)V
    .registers 5
    .parameter

    .prologue
    .line 264
    const/4 v0, 0x1

    .line 265
    iget-object v1, p0, Lcom/google/googlenav/friend/v;->b:Lcom/google/googlenav/friend/t;

    invoke-static {v1}, Lcom/google/googlenav/friend/t;->a(Lcom/google/googlenav/friend/t;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/friend/v;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 266
    return-void
.end method
