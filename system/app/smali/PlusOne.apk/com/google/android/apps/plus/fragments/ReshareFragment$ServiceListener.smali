.class Lcom/google/android/apps/plus/fragments/ReshareFragment$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "ReshareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ReshareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/ReshareFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/ReshareFragment;Lcom/google/android/apps/plus/fragments/ReshareFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ReshareFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/ReshareFragment;)V

    return-void
.end method


# virtual methods
.method public onReshareActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ReshareFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ReshareFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->access$100(Lcom/google/android/apps/plus/fragments/ReshareFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 93
    return-void
.end method
