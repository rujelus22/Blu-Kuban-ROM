.class public final Lat;
.super Landroid/database/ContentObserver;
.source "a"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7
    iput-object v0, p0, Lat;->a:Landroid/content/Context;

    .line 11
    iput-object p1, p0, Lat;->a:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 18
    const-string v0, "contacts updated?"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lat;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/locationlabs/v3client/feature/contact/ContactManager;->a(Landroid/content/Context;)V

    .line 20
    return-void
.end method
