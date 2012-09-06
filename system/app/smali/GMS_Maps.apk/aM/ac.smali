.class final LaM/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/aG;


# instance fields
.field final synthetic a:LaM/X;

.field private final b:Lcom/google/googlenav/ui/friend/C;


# direct methods
.method public constructor <init>(LaM/X;Lcom/google/googlenav/ui/friend/C;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1793
    iput-object p1, p0, LaM/ac;->a:LaM/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1794
    iput-object p2, p0, LaM/ac;->b:Lcom/google/googlenav/ui/friend/C;

    .line 1795
    return-void
.end method

.method static synthetic a(LaM/ac;)Lcom/google/googlenav/ui/friend/C;
    .registers 2
    .parameter

    .prologue
    .line 1785
    iget-object v0, p0, LaM/ac;->b:Lcom/google/googlenav/ui/friend/C;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 1799
    const/4 v0, 0x1

    .line 1800
    iget-object v1, p0, LaM/ac;->a:LaM/X;

    invoke-static {v1}, LaM/X;->e(LaM/X;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, LaM/ad;

    invoke-direct {v2, p0}, LaM/ad;-><init>(LaM/ac;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 1815
    return-void
.end method
