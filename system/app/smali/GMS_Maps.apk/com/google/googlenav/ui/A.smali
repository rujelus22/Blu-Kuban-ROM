.class public Lcom/google/googlenav/ui/a;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/g;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/g;)V
    .registers 2
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/googlenav/ui/a;->a:Lcom/google/googlenav/ui/g;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 6
    .parameter

    .prologue
    .line 23
    instance-of v0, p1, Lcom/google/googlenav/ui/view/a;

    if-nez v0, :cond_6

    .line 25
    const/4 v0, 0x0

    .line 29
    :goto_5
    return v0

    .line 28
    :cond_6
    check-cast p1, Lcom/google/googlenav/ui/view/a;

    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/a;->a:Lcom/google/googlenav/ui/g;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method
