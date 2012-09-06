.class Lcom/google/googlenav/ui/wizard/gR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/O;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gO;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/gO;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gR;->a:Lcom/google/googlenav/ui/wizard/gO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/gO;Lcom/google/googlenav/ui/wizard/gP;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gR;-><init>(Lcom/google/googlenav/ui/wizard/gO;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gR;->a:Lcom/google/googlenav/ui/wizard/gO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gO;->c(Lcom/google/googlenav/ui/wizard/gO;)Lcom/google/googlenav/ui/wizard/gS;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gS;->a()V

    .line 162
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gR;->a:Lcom/google/googlenav/ui/wizard/gO;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/gO;->a(Lcom/google/googlenav/ui/wizard/gO;Ljava/util/Collection;)V

    .line 156
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gR;->a:Lcom/google/googlenav/ui/wizard/gO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gO;->c(Lcom/google/googlenav/ui/wizard/gO;)Lcom/google/googlenav/ui/wizard/gS;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/wizard/gS;->a(Ljava/util/Collection;)V

    .line 157
    return-void
.end method
