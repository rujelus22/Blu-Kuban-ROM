.class final Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/EsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceOperationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/EsService;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/service/EsService;)V
    .registers 2
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;->this$0:Lcom/google/android/apps/plus/service/EsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/service/EsService;Lcom/google/android/apps/plus/service/EsService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;-><init>(Lcom/google/android/apps/plus/service/EsService;)V

    return-void
.end method


# virtual methods
.method public onOperationComplete(Lcom/google/android/apps/plus/network/HttpOperation;)V
    .registers 5
    .parameter "op"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$ServiceOperationListener;->this$0:Lcom/google/android/apps/plus/service/EsService;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpOperation;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v2, p1}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/apps/plus/service/EsService;->onIntentProcessed(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/Object;)V

    .line 580
    return-void
.end method
