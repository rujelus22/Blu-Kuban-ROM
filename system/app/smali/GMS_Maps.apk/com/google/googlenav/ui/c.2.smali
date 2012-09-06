.class Lcom/google/googlenav/ui/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;ZI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3534
    iput-object p1, p0, Lcom/google/googlenav/ui/C;->c:Lcom/google/googlenav/ui/v;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/C;->a:Z

    iput p3, p0, Lcom/google/googlenav/ui/C;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/google/googlenav/ui/C;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->a()V

    .line 3538
    if-eqz p2, :cond_18

    .line 3539
    invoke-static {p2}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 3540
    iget-boolean v1, p0, Lcom/google/googlenav/ui/C;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->e(Z)V

    .line 3541
    iget-object v1, p0, Lcom/google/googlenav/ui/C;->c:Lcom/google/googlenav/ui/v;

    iget v2, p0, Lcom/google/googlenav/ui/C;->b:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ai;I)V

    .line 3547
    :goto_17
    return-void

    .line 3545
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/C;->c:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x3f3

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    goto :goto_17
.end method
