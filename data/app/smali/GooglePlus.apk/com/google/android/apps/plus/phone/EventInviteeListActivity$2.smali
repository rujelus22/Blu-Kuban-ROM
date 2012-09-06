.class Lcom/google/android/apps/plus/phone/EventInviteeListActivity$2;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "EventInviteeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/EventInviteeListActivity;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/EventInviteeListActivity;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$2;->this$0:Lcom/google/android/apps/plus/phone/EventInviteeListActivity;

    iput-object p3, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 5

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$2;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EventInviteeListActivity$2;->this$0:Lcom/google/android/apps/plus/phone/EventInviteeListActivity;

    #getter for: Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->mEventId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->access$100(Lcom/google/android/apps/plus/phone/EventInviteeListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/apps/plus/phone/EventInviteeListActivity;->access$200()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsEventData;->getEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
