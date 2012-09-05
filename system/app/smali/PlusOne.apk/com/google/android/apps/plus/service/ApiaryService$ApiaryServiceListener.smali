.class public Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;
.super Ljava/lang/Object;
.source "ApiaryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/ApiaryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiaryServiceListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyResult(ILcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/String;Z)V
    .registers 5
    .parameter "requestId"
    .parameter "result"
    .parameter "url"
    .parameter "apply"

    .prologue
    .line 144
    return-void
.end method

.method public onGetPreviewResult(ILcom/google/android/apps/plus/service/ServiceResult;Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 4
    .parameter "requestId"
    .parameter "result"
    .parameter "activity"

    .prologue
    .line 132
    return-void
.end method

.method public onPostActivityResult(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 141
    return-void
.end method
