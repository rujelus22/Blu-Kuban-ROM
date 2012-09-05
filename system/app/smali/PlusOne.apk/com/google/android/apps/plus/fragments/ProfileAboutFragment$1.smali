.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "ProfileAboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 944
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetProfileAndContactComplete(ILcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "userId"
    .parameter "result"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v0, p1, p5}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 953
    return-void
.end method

.method public onSetCircleMemebershipComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 962
    return-void
.end method

.method public onSetProfilePhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 971
    return-void
.end method
