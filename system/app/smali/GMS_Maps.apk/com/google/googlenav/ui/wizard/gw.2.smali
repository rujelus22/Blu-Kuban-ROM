.class Lcom/google/googlenav/ui/wizard/gW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/gA;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/gT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gT;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gW;->b:Lcom/google/googlenav/ui/wizard/gT;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gW;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/friend/aF;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gW;->b:Lcom/google/googlenav/ui/wizard/gT;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gT;->b(Lcom/google/googlenav/ui/wizard/gT;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 172
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gW;->a:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_15
    return-void
.end method
