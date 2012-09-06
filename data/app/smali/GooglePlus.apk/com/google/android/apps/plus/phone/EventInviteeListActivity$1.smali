.class Lcom/google/android/apps/plus/phone/EventInviteeListActivity$1;
.super Ljava/lang/Object;
.source "EventInviteeListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/EventInviteeListActivity;

.field final synthetic val$audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/EventInviteeListActivity;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$1;->this$0:Lcom/google/android/apps/plus/phone/EventInviteeListActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$1;->val$audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$1;->this$0:Lcom/google/android/apps/plus/phone/EventInviteeListActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$1;->val$audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    #calls: Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->doInviteMore(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->access$000(Lcom/google/android/apps/plus/phone/EventInviteeListActivity;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 205
    return-void
.end method
