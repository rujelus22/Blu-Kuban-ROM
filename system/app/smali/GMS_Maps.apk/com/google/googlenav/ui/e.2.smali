.class Lcom/google/googlenav/ui/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;ZILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3726
    iput-object p1, p0, Lcom/google/googlenav/ui/E;->d:Lcom/google/googlenav/ui/v;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/E;->a:Z

    iput p3, p0, Lcom/google/googlenav/ui/E;->b:I

    iput-object p4, p0, Lcom/google/googlenav/ui/E;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3729
    iget-object v0, p0, Lcom/google/googlenav/ui/E;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->a()V

    .line 3730
    if-eqz p2, :cond_1a

    .line 3731
    invoke-static {p2}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 3732
    iget-boolean v1, p0, Lcom/google/googlenav/ui/E;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->e(Z)V

    .line 3733
    iget-object v1, p0, Lcom/google/googlenav/ui/E;->d:Lcom/google/googlenav/ui/v;

    iget v2, p0, Lcom/google/googlenav/ui/E;->b:I

    iget-object v3, p0, Lcom/google/googlenav/ui/E;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ai;ILjava/lang/String;)V

    .line 3737
    :goto_19
    return-void

    .line 3735
    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/E;->d:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x3f3

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    goto :goto_19
.end method
