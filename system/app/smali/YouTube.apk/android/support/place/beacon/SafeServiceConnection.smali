.class public abstract Landroid/support/place/beacon/SafeServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "SafeServiceConnection"


# instance fields
.field private mServiceConnectionImp:Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;

    invoke-direct {v0, p0}, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;-><init>(Landroid/support/place/beacon/SafeServiceConnection;)V

    iput-object v0, p0, Landroid/support/place/beacon/SafeServiceConnection;->mServiceConnectionImp:Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;

    .line 231
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/place/beacon/SafeServiceConnection;->mServiceConnectionImp:Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public bindServiceOrFail(Landroid/content/Context;Landroid/content/Intent;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/place/beacon/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not bind to service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1b
    return-void
.end method

.method public unbindService(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/place/beacon/SafeServiceConnection;->mServiceConnectionImp:Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;

    invoke-virtual {v0, p1}, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->unbindService(Landroid/content/Context;)V

    .line 274
    return-void
.end method
