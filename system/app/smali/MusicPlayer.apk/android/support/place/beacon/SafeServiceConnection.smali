.class public abstract Landroid/support/place/beacon/SafeServiceConnection;
.super Ljava/lang/Object;
.source "SafeServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;
    }
.end annotation


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
    .parameter "context"
    .parameter "service"
    .parameter "flags"

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/place/beacon/SafeServiceConnection;->mServiceConnectionImp:Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/place/beacon/SafeServiceConnection$ServiceConnectionImp;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method
