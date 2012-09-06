.class Lcom/google/googlenav/ui/friend/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/L;


# instance fields
.field private final a:Lcom/google/googlenav/ui/g;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/g;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/googlenav/ui/friend/B;->a:Lcom/google/googlenav/ui/g;

    .line 73
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/friend/aK;)V
    .registers 6
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/B;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x14a

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 79
    return-void
.end method
