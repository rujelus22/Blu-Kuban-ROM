.class Lcom/google/android/apps/plus/fragments/EventInviteeListFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "EventInviteeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEventInviteesComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "serviceResult"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/EventInviteeListFragment;->handleRefreshCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 52
    return-void
.end method
