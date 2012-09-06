.class Lcom/google/android/apps/plus/fragments/EditEventFragment$4;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "EditEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EditEventFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1102
    return-void
.end method

.method public onUpdateEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 1107
    return-void
.end method
