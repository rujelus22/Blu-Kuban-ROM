.class public LwG;
.super Ljava/lang/Object;
.source "ConnectivityChangeListener.java"

# interfaces
.implements LBq;


# instance fields
.field private a:I

.field private final a:LFX;

.field private a:LXI;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;

.field private a:LxQ;

.field private b:I


# direct methods
.method public constructor <init>(LFX;LanD;)V
    .registers 5
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFX;",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, LXI;->c:LXI;

    iput-object v0, p0, LwG;->a:LXI;

    .line 34
    iput-object p1, p0, LwG;->a:LFX;

    .line 35
    iput-object p2, p0, LwG;->a:LanD;

    .line 37
    const-string v0, "kixMobileMutationBatchInterval"

    const/16 v1, 0xbb8

    invoke-interface {p1, v0, v1}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LwG;->a:I

    .line 39
    const-string v0, "kixWifiMutationBatchInterval"

    const/16 v1, 0xc8

    invoke-interface {p1, v0, v1}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LwG;->b:I

    .line 41
    return-void
.end method

.method private a(LXI;)V
    .registers 5
    .parameter

    .prologue
    .line 44
    sget-object v0, LXI;->b:LXI;

    if-ne p1, v0, :cond_15

    iget v0, p0, LwG;->b:I

    .line 47
    :goto_6
    iget-object v1, p0, LwG;->a:LXI;

    sget-object v2, LXI;->a:LXI;

    if-ne v1, v2, :cond_18

    const/4 v1, 0x1

    .line 49
    :goto_d
    iget-object v2, p0, LwG;->a:LxQ;

    invoke-virtual {v2, v0, v1}, LxQ;->setMutationBatchInterval(IZ)V

    .line 50
    iput-object p1, p0, LwG;->a:LXI;

    .line 51
    return-void

    .line 44
    :cond_15
    iget v0, p0, LwG;->a:I

    goto :goto_6

    .line 47
    :cond_18
    const/4 v1, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, LwG;->a:Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;

    if-eqz v0, :cond_c

    .line 73
    iget-object v0, p0, LwG;->a:Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;->b(LBq;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, LwG;->a:Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;

    .line 76
    :cond_c
    return-void
.end method

.method public a(Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;LxQ;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, LwG;->a:Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;

    if-eqz v0, :cond_5

    .line 66
    :goto_4
    return-void

    .line 61
    :cond_5
    iput-object p1, p0, LwG;->a:Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;

    .line 62
    iput-object p2, p0, LwG;->a:LxQ;

    .line 64
    invoke-virtual {p1, p0}, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;->a(LBq;)V

    .line 65
    iget-object v0, p0, LwG;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, LXH;->a(Landroid/content/Context;)LXI;

    move-result-object v0

    invoke-direct {p0, v0}, LwG;->a(LXI;)V

    goto :goto_4
.end method

.method public b()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, LwG;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, LXH;->a(Landroid/content/Context;)LXI;

    move-result-object v0

    .line 81
    iget-object v1, p0, LwG;->a:LXI;

    if-ne v0, v1, :cond_11

    .line 86
    :goto_10
    return-void

    .line 85
    :cond_11
    invoke-direct {p0, v0}, LwG;->a(LXI;)V

    goto :goto_10
.end method
