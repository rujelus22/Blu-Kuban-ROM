.class Lcom/google/googlenav/networkinitiated/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/e;->a:Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/e;->a:Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;

    invoke-static {v0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->a(Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;)V

    .line 96
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/e;->a:Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;

    invoke-virtual {v0}, Lcom/google/googlenav/networkinitiated/NetworkInitiatedService;->stopSelf()V

    .line 97
    return-void
.end method
