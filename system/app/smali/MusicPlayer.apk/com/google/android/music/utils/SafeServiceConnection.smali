.class public abstract Lcom/google/android/music/utils/SafeServiceConnection;
.super Ljava/lang/Object;
.source "SafeServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/utils/SafeServiceConnection$ServiceConnectionImp;
    }
.end annotation


# instance fields
.field private mServiceConnectionImp:Lcom/google/android/music/utils/SafeServiceConnection$ServiceConnectionImp;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Lcom/google/android/music/utils/SafeServiceConnection$ServiceConnectionImp;

    invoke-direct {v0, p0}, Lcom/google/android/music/utils/SafeServiceConnection$ServiceConnectionImp;-><init>(Lcom/google/android/music/utils/SafeServiceConnection;)V

    iput-object v0, p0, Lcom/google/android/music/utils/SafeServiceConnection;->mServiceConnectionImp:Lcom/google/android/music/utils/SafeServiceConnection$ServiceConnectionImp;

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
    iget-object v0, p0, Lcom/google/android/music/utils/SafeServiceConnection;->mServiceConnectionImp:Lcom/google/android/music/utils/SafeServiceConnection$ServiceConnectionImp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/utils/SafeServiceConnection$ServiceConnectionImp;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public bindServiceOrFail(Landroid/content/Context;Landroid/content/Intent;I)V
    .registers 7
    .parameter "context"
    .parameter "service"
    .parameter "flags"

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not bind to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1f
    return-void
.end method

.method public unbindService(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/music/utils/SafeServiceConnection;->mServiceConnectionImp:Lcom/google/android/music/utils/SafeServiceConnection$ServiceConnectionImp;

    invoke-virtual {v0, p1}, Lcom/google/android/music/utils/SafeServiceConnection$ServiceConnectionImp;->unbindService(Landroid/content/Context;)V

    .line 274
    return-void
.end method
