.class Lcom/google/android/apps/plus/phone/ProfileActivity$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/ProfileActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$1;->this$0:Lcom/google/android/apps/plus/phone/ProfileActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateProfilePlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$1;->this$0:Lcom/google/android/apps/plus/phone/ProfileActivity;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/phone/ProfileActivity;->handlePlusOneCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 135
    return-void
.end method

.method public onDeleteProfilePlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$1;->this$0:Lcom/google/android/apps/plus/phone/ProfileActivity;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/phone/ProfileActivity;->handlePlusOneCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 144
    return-void
.end method

.method public onReportAbuseRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActivity$1;->this$0:Lcom/google/android/apps/plus/phone/ProfileActivity;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/phone/ProfileActivity;->handleReportAbuseCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 126
    return-void
.end method
