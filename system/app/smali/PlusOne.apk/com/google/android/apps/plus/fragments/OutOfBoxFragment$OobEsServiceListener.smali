.class Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$OobEsServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "OutOfBoxFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OobEsServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$OobEsServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$OobEsServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;)V

    return-void
.end method


# virtual methods
.method public onOobRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$OobEsServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;

    #calls: Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->access$100(Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 102
    return-void
.end method
