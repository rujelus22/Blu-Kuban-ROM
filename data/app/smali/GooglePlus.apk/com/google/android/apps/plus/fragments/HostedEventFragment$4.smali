.class Lcom/google/android/apps/plus/fragments/HostedEventFragment$4;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "HostedEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Landroid/content/Context;Landroid/net/Uri;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 6

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$1000(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mOwnerId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$1100(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/fragments/HostedEventFragment$ActivityQuery;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsEventData;->getEventActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
