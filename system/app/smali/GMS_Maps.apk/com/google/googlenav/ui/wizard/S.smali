.class Lcom/google/googlenav/ui/wizard/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aT;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ai;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/q;Lcom/google/googlenav/ai;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/s;->b:Lcom/google/googlenav/ui/wizard/q;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/s;->a:Lcom/google/googlenav/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aS;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/s;->b:Lcom/google/googlenav/ui/wizard/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/q;->o()Z

    move-result v0

    if-nez v0, :cond_a

    .line 277
    :cond_9
    :goto_9
    return-void

    .line 256
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/s;->b:Lcom/google/googlenav/ui/wizard/q;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/x;->b:Lcom/google/googlenav/aU;

    .line 257
    invoke-virtual {p1}, Lcom/google/googlenav/aS;->i()I

    move-result v0

    if-lez v0, :cond_70

    .line 258
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/s;->b:Lcom/google/googlenav/ui/wizard/q;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    invoke-virtual {p1, v2}, Lcom/google/googlenav/aS;->a(I)Lcom/google/googlenav/aU;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/x;->b:Lcom/google/googlenav/aU;

    .line 261
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/s;->a:Lcom/google/googlenav/ai;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/s;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/s;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 266
    :cond_3d
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/s;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/s;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 268
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/s;->b:Lcom/google/googlenav/ui/wizard/q;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    new-instance v2, Lcom/google/googlenav/aU;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/s;->b:Lcom/google/googlenav/ui/wizard/q;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/x;->b:Lcom/google/googlenav/aU;

    invoke-virtual {v3}, Lcom/google/googlenav/aU;->c()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/s;->b:Lcom/google/googlenav/ui/wizard/q;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/x;->b:Lcom/google/googlenav/aU;

    invoke-virtual {v4}, Lcom/google/googlenav/aU;->f()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/google/googlenav/aU;-><init>(I[Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v2, v1, Lcom/google/googlenav/ui/wizard/x;->b:Lcom/google/googlenav/aU;

    .line 274
    :cond_70
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/s;->b:Lcom/google/googlenav/ui/wizard/q;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/ui/wizard/q;)Lcom/google/googlenav/ui/wizard/e;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 275
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/s;->b:Lcom/google/googlenav/ui/wizard/q;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/ui/wizard/q;)Lcom/google/googlenav/ui/wizard/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->m()V

    goto :goto_9
.end method
