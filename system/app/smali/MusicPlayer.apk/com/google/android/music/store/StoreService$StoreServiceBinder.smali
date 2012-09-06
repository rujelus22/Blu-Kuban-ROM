.class public Lcom/google/android/music/store/StoreService$StoreServiceBinder;
.super Landroid/app/Service;
.source "StoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/StoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoreServiceBinder"
.end annotation


# instance fields
.field private mStoreService:Lcom/google/android/music/store/IStoreService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/music/store/StoreService$StoreServiceBinder;->mStoreService:Lcom/google/android/music/store/IStoreService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 244
    new-instance v0, Lcom/google/android/music/store/StoreService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/store/StoreService;-><init>(Landroid/content/Context;Lcom/google/android/music/store/StoreService$1;)V

    iput-object v0, p0, Lcom/google/android/music/store/StoreService$StoreServiceBinder;->mStoreService:Lcom/google/android/music/store/IStoreService$Stub;

    .line 245
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/StoreService$StoreServiceBinder;->mStoreService:Lcom/google/android/music/store/IStoreService$Stub;

    .line 251
    return-void
.end method
