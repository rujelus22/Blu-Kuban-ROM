.class Lcom/google/googlenav/ui/wizard/gM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/gS;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gJ;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/gJ;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gM;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/gJ;Lcom/google/googlenav/ui/wizard/gK;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gM;-><init>(Lcom/google/googlenav/ui/wizard/gJ;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gM;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gJ;->a(Lcom/google/googlenav/ui/wizard/gJ;)Lcom/google/googlenav/ui/wizard/gT;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 176
    invoke-static {}, Lcom/google/googlenav/friend/Y;->k()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x3ca

    .line 178
    :goto_10
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gM;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gJ;->a(Lcom/google/googlenav/ui/wizard/gJ;)Lcom/google/googlenav/ui/wizard/gT;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/gT;->b(I)V

    .line 180
    :cond_19
    return-void

    .line 176
    :cond_1a
    const/16 v0, 0x197

    goto :goto_10
.end method

.method public a(Ljava/util/Collection;)V
    .registers 5
    .parameter

    .prologue
    .line 161
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gM;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gJ;->c(Lcom/google/googlenav/ui/wizard/gJ;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 163
    invoke-static {}, Lcom/google/googlenav/ui/wizard/gJ;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    :cond_13
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 167
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gM;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gJ;->a(Lcom/google/googlenav/ui/wizard/gJ;)Lcom/google/googlenav/ui/wizard/gT;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 168
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gM;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gJ;->a(Lcom/google/googlenav/ui/wizard/gJ;)Lcom/google/googlenav/ui/wizard/gT;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gM;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/gJ;->d(Lcom/google/googlenav/ui/wizard/gJ;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/gT;->a(Ljava/util/List;Ljava/util/List;)V

    .line 169
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gM;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gJ;->a(Lcom/google/googlenav/ui/wizard/gJ;)Lcom/google/googlenav/ui/wizard/gT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gT;->l()V

    .line 171
    :cond_39
    return-void
.end method
