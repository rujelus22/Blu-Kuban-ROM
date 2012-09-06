.class public Lcom/google/android/picasastore/PicasaStoreFacade$DummyService;
.super Landroid/app/Service;
.source "PicasaStoreFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/PicasaStoreFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyService"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 406
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 409
    const/4 v0, 0x0

    return-object v0
.end method
