.class Lcom/google/android/apps/plus/fragments/EditEventFragment$3;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "EditEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/EditEventFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EditEventFragment;Landroid/content/Context;Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$3;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 6

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditEventFragment;->mEventId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->access$300(Lcom/google/android/apps/plus/fragments/EditEventFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/EditEventFragment;->mOwnerId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->access$400(Lcom/google/android/apps/plus/fragments/EditEventFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->access$500()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsEventData;->retrieveEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
