.class Lcom/google/android/apps/plus/phone/EventInviteeListActivity$3;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "EventInviteeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/EventInviteeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/EventInviteeListActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/EventInviteeListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$3;->this$0:Lcom/google/android/apps/plus/phone/EventInviteeListActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventInviteComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$3;->this$0:Lcom/google/android/apps/plus/phone/EventInviteeListActivity;

    #calls: Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->access$300(Lcom/google/android/apps/plus/phone/EventInviteeListActivity;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 303
    return-void
.end method
