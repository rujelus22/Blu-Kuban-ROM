.class Lcom/google/googlenav/ui/wizard/fI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aT;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fH;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fH;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fI;->a:Lcom/google/googlenav/ui/wizard/fH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aS;)V
    .registers 4
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1}, Lcom/google/googlenav/aS;->i()I

    move-result v1

    if-lez v1, :cond_c

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aS;->a(I)Lcom/google/googlenav/aU;

    move-result-object v0

    .line 125
    :cond_c
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fI;->a:Lcom/google/googlenav/ui/wizard/fH;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/fH;->a(Lcom/google/googlenav/ui/wizard/fH;)Lcom/google/googlenav/ui/wizard/fJ;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/fJ;->a(Lcom/google/googlenav/aU;)V

    .line 126
    return-void
.end method
