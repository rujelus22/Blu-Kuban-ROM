.class Lcom/google/googlenav/ui/view/dialog/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/af;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bh;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bh;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bl;->a:Lcom/google/googlenav/ui/view/dialog/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ck;)V
    .registers 4
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bl;->a:Lcom/google/googlenav/ui/view/dialog/bh;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bh;->b(Lcom/google/googlenav/ui/view/dialog/bh;)Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ck;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    .line 127
    return-void
.end method
