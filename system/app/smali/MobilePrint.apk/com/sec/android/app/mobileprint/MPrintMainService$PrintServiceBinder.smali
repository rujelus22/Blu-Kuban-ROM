.class public Lcom/sec/android/app/mobileprint/MPrintMainService$PrintServiceBinder;
.super Landroid/os/Binder;
.source "MPrintMainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintMainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrintServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/mobileprint/MPrintMainService;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintServiceBinder;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/sec/android/app/mobileprint/MPrintMainService;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintServiceBinder;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    return-object v0
.end method
