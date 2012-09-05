.class Lcom/google/android/apps/plus/phone/CircleActivity$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "CircleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/CircleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/CircleActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/CircleActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/CircleActivity$1;->this$0:Lcom/google/android/apps/plus/phone/CircleActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteCirclesRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CircleActivity$1;->this$0:Lcom/google/android/apps/plus/phone/CircleActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p3, v1}, Lcom/google/android/apps/plus/phone/CircleActivity;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;Z)V

    .line 115
    return-void
.end method

.method public onModifyCirclePropertiesRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CircleActivity$1;->this$0:Lcom/google/android/apps/plus/phone/CircleActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p3, v1}, Lcom/google/android/apps/plus/phone/CircleActivity;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;Z)V

    .line 106
    return-void
.end method
