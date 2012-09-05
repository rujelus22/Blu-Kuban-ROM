.class public final Lak;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lb;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 21
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lbh;

    invoke-direct {v1, p1}, Lbh;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lbh;)V

    .line 23
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {v0, p1}, Li;->a(ILjava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    .line 17
    invoke-interface {v1, v0, p2}, Lw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
