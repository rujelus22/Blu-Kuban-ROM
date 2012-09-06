.class public Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;
.super Landroid/os/Binder;
.source "GCommService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/GCommService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/hangout/GCommService;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/google/android/apps/plus/hangout/GCommService;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;->this$0:Lcom/google/android/apps/plus/hangout/GCommService;

    return-object v0
.end method
