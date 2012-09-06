.class public Lcom/google/android/apps/googlevoice/proxy/ServiceProxyImpl;
.super Ljava/lang/Object;
.source "ServiceProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;


# instance fields
.field private service:Landroid/app/Service;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/proxy/ServiceProxyImpl;->service:Landroid/app/Service;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 50
    instance-of v0, p1, Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/ServiceProxyImpl;->service:Landroid/app/Service;

    check-cast p1, Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;

    .end local p1
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/proxy/ServiceProxy;->getDelegate()Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/ServiceProxyImpl;->service:Landroid/app/Service;

    return-object v0
.end method

.method public getDelegate()Landroid/app/Service;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/ServiceProxyImpl;->service:Landroid/app/Service;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/ServiceProxyImpl;->service:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;
    .registers 3

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxyImpl;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/proxy/ServiceProxyImpl;->service:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxyImpl;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/ServiceProxyImpl;->service:Landroid/app/Service;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public stopSelf()V
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/ServiceProxyImpl;->service:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 36
    return-void
.end method
