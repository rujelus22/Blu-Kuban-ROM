.class Lcom/google/googlenav/ui/view/dialog/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/co;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/co;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cr;->a:Lcom/google/googlenav/ui/view/dialog/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()V
    .registers 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cr;->a:Lcom/google/googlenav/ui/view/dialog/co;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/co;->a(Lcom/google/googlenav/ui/view/dialog/co;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 154
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cr;->a:Lcom/google/googlenav/ui/view/dialog/co;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/co;->a(Lcom/google/googlenav/ui/view/dialog/co;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cr;->a:Lcom/google/googlenav/ui/view/dialog/co;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/co;->b(Lcom/google/googlenav/ui/view/dialog/co;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/cr;->a:Lcom/google/googlenav/ui/view/dialog/co;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/dialog/co;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ja;->g()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/dialog/co;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/bw;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 157
    :cond_23
    return-void
.end method
