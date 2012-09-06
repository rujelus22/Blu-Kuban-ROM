.class Lcom/google/googlenav/ui/wizard/cz;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/cC;

.field final synthetic f:Lcom/google/googlenav/ui/wizard/cw;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cw;LY/c;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/cC;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cz;->f:Lcom/google/googlenav/ui/wizard/cw;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/cz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/cz;->b:Lcom/google/googlenav/ui/wizard/cC;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cz;->b:Lcom/google/googlenav/ui/wizard/cC;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/cC;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cw;->a(Ljava/lang/String;)LT/f;

    move-result-object v0

    .line 211
    const/4 v1, 0x1

    .line 212
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cz;->f:Lcom/google/googlenav/ui/wizard/cw;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/cw;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/cA;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/wizard/cA;-><init>(Lcom/google/googlenav/ui/wizard/cz;LT/f;)V

    invoke-virtual {v2, v3, v1}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 227
    return-void
.end method
