.class public Lcom/google/googlenav/friend/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/L;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/t;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/t;)V
    .registers 2
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/google/googlenav/friend/D;->a:Lcom/google/googlenav/friend/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/friend/aK;)V
    .registers 4
    .parameter

    .prologue
    .line 692
    if-eqz p1, :cond_8

    .line 694
    iget-object v0, p0, Lcom/google/googlenav/friend/D;->a:Lcom/google/googlenav/friend/t;

    invoke-static {v0, p1}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/t;Lcom/google/googlenav/friend/aK;)V

    .line 700
    :goto_7
    return-void

    .line 697
    :cond_8
    invoke-static {}, Lcom/google/googlenav/friend/af;->c()V

    .line 698
    iget-object v0, p0, Lcom/google/googlenav/friend/D;->a:Lcom/google/googlenav/friend/t;

    invoke-static {v0}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/t;)LaM/X;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LaM/X;->a(B)V

    goto :goto_7
.end method
