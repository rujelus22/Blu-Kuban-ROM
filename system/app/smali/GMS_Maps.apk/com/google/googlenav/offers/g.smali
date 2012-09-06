.class Lcom/google/googlenav/offers/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/n;


# instance fields
.field final synthetic a:Lcom/google/googlenav/offers/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/offers/a;)V
    .registers 2
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/google/googlenav/offers/g;->a:Lcom/google/googlenav/offers/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 497
    sget-object v0, Lag/b;->k:Lag/c;

    sget v1, Lag/c;->a:I

    invoke-virtual {v0, v1}, Lag/c;->a(I)V

    .line 499
    iget-object v0, p0, Lcom/google/googlenav/offers/g;->a:Lcom/google/googlenav/offers/a;

    const-string v1, "c"

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/offers/a;->a(ZLjava/lang/String;)V

    .line 503
    const/16 v0, 0x58

    const-string v1, "och"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "c"

    aput-object v3, v2, v4

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void
.end method
