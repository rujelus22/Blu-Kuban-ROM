.class Lcom/google/googlenav/ui/wizard/hH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaG/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hG;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hG;)V
    .registers 2
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hH;->a:Lcom/google/googlenav/ui/wizard/hG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 472
    if-nez p1, :cond_14

    .line 473
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hH;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hG;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const/16 v1, 0x3e6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 478
    :goto_13
    return-void

    .line 475
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hH;->a:Lcom/google/googlenav/ui/wizard/hG;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hG;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const/16 v1, 0x122

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    goto :goto_13
.end method
