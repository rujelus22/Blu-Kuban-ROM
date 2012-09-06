.class Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "EsProfileGatewayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity$1;->this$0:Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetCircleMemebershipComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity$1;->this$0:Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 61
    return-void
.end method
