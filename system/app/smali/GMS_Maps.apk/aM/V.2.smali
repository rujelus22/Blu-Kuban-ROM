.class LaM/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/friend/p;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/t;

.field final synthetic b:LaM/S;


# direct methods
.method constructor <init>(LaM/S;Lcom/google/googlenav/friend/t;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, LaM/V;->b:LaM/S;

    iput-object p2, p0, LaM/V;->a:Lcom/google/googlenav/friend/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(I)V
    .registers 5
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, LaM/V;->a:Lcom/google/googlenav/friend/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/googlenav/friend/t;->a(IILjava/lang/Object;)Z

    .line 232
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LaM/V;->b(I)V

    .line 182
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 207
    invoke-direct {p0, p1}, LaM/V;->b(I)V

    .line 208
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 202
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, LaM/V;->b(I)V

    .line 203
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 176
    const/16 v0, 0x258

    invoke-direct {p0, v0}, LaM/V;->b(I)V

    .line 177
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 191
    const/16 v0, 0x156

    invoke-direct {p0, v0}, LaM/V;->b(I)V

    .line 192
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 171
    const/16 v0, 0x83b

    invoke-direct {p0, v0}, LaM/V;->b(I)V

    .line 172
    return-void
.end method

.method public f()V
    .registers 4

    .prologue
    .line 196
    iget-object v0, p0, LaM/V;->b:LaM/S;

    invoke-static {v0}, LaM/S;->b(LaM/S;)Lcom/google/googlenav/L;

    move-result-object v0

    iget-object v1, p0, LaM/V;->b:LaM/S;

    invoke-static {v1}, LaM/S;->a(LaM/S;)LaM/X;

    move-result-object v1

    invoke-virtual {v1}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/aK;->I()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/L;->a(Ljava/lang/String;Lcom/google/googlenav/android/R;)V

    .line 198
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 186
    const/16 v0, 0x13a

    invoke-direct {p0, v0}, LaM/V;->b(I)V

    .line 187
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, LaM/V;->b:LaM/S;

    invoke-static {v0}, LaM/S;->a(LaM/S;)LaM/X;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/X;->a(B)V

    .line 213
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, LaM/V;->b:LaM/S;

    invoke-static {v0}, LaM/S;->a(LaM/S;)LaM/X;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LaM/X;->a(B)V

    .line 218
    return-void
.end method

.method public j()V
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, LaM/V;->b:LaM/S;

    invoke-static {v0}, LaM/S;->a(LaM/S;)LaM/X;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/X;->a(B)V

    .line 228
    return-void
.end method

.method public k()V
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, LaM/V;->b:LaM/S;

    invoke-static {v0}, LaM/S;->a(LaM/S;)LaM/X;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LaM/X;->a(B)V

    .line 223
    return-void
.end method
