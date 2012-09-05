.class public Lcom/sec/android/app/dlna/service/DmsLocalService$LocalBinder;
.super Landroid/os/Binder;
.source "DmsLocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/service/DmsLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dlna/service/DmsLocalService;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$LocalBinder;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/sec/android/app/dlna/service/DmsLocalService;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$LocalBinder;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    return-object v0
.end method
