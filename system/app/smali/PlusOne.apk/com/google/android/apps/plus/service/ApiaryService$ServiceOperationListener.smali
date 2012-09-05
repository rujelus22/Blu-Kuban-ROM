.class final Lcom/google/android/apps/plus/service/ApiaryService$ServiceOperationListener;
.super Ljava/lang/Object;
.source "ApiaryService.java"

# interfaces
.implements Lcom/google/android/apps/plus/network/ApiaryOperation$OperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/ApiaryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceOperationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/ApiaryService;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/service/ApiaryService;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ApiaryService$ServiceOperationListener;->this$0:Lcom/google/android/apps/plus/service/ApiaryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/service/ApiaryService;Lcom/google/android/apps/plus/service/ApiaryService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/ApiaryService$ServiceOperationListener;-><init>(Lcom/google/android/apps/plus/service/ApiaryService;)V

    return-void
.end method


# virtual methods
.method public onOperationComplete(Lcom/google/android/apps/plus/network/ApiaryOperation;)V
    .registers 8
    .parameter "op"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ApiaryService$ServiceOperationListener;->this$0:Lcom/google/android/apps/plus/service/ApiaryService;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getEx()Ljava/lang/Exception;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/apps/plus/service/ApiaryService;->onIntentProcessed(Landroid/content/Intent;Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryOperation;)V

    .line 114
    return-void
.end method
