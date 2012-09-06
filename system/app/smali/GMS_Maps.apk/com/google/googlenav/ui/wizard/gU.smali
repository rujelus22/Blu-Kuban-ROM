.class Lcom/google/googlenav/ui/wizard/gu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gj;)V
    .registers 2
    .parameter

    .prologue
    .line 812
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gu;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 815
    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gu;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gj;->c(Lcom/google/googlenav/ui/wizard/gj;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 816
    invoke-static {p2}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 817
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->e(Z)V

    .line 818
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gu;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/wizard/gj;->b(Lcom/google/googlenav/ui/wizard/gj;Lcom/google/googlenav/ai;)Lcom/google/googlenav/ai;

    .line 820
    :cond_1b
    return-void
.end method
