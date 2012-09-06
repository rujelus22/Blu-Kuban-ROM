.class Lcom/google/googlenav/ui/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bd;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/ak;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/ak;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/googlenav/ui/al;->a:Lcom/google/googlenav/ui/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 154
    if-ne p1, v3, :cond_19

    .line 157
    iget-object v0, p0, Lcom/google/googlenav/ui/al;->a:Lcom/google/googlenav/ui/ak;

    iget-object v0, v0, Lcom/google/googlenav/ui/ak;->a:Lcom/google/googlenav/ui/ah;

    invoke-static {v0}, Lcom/google/googlenav/ui/ah;->b(Lcom/google/googlenav/ui/ah;)V

    .line 158
    const-string v0, "IS_COMING_FROM_SETTINGS_PAGE"

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/be;)V

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/ui/al;->a:Lcom/google/googlenav/ui/ak;

    iget-object v0, v0, Lcom/google/googlenav/ui/ak;->a:Lcom/google/googlenav/ui/ah;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/ah;->a(Lcom/google/googlenav/ui/ah;Z)Z

    .line 163
    :goto_18
    return-void

    .line 161
    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/al;->a:Lcom/google/googlenav/ui/ak;

    iget-object v0, v0, Lcom/google/googlenav/ui/ak;->a:Lcom/google/googlenav/ui/ah;

    invoke-static {v0}, Lcom/google/googlenav/ui/ah;->c(Lcom/google/googlenav/ui/ah;)V

    goto :goto_18
.end method
