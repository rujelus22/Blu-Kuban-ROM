.class Lcom/google/googlenav/ui/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bd;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/ah;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/ah;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/googlenav/ui/ak;->a:Lcom/google/googlenav/ui/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->a:Lcom/google/googlenav/ui/ah;

    invoke-static {v0}, Lcom/google/googlenav/ui/ah;->a(Lcom/google/googlenav/ui/ah;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p1, :cond_16

    .line 151
    :cond_a
    const-string v0, "IS_COMING_FROM_SETTINGS_PAGE"

    const/4 v1, -0x1

    new-instance v2, Lcom/google/googlenav/ui/al;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/al;-><init>(Lcom/google/googlenav/ui/ak;)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/bd;)V

    .line 168
    :goto_15
    return-void

    .line 166
    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->a:Lcom/google/googlenav/ui/ah;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/ah;->a(Lcom/google/googlenav/ui/ah;Z)Z

    goto :goto_15
.end method
