.class Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$2;
.super Ljava/lang/Object;
.source "SocialHubNotePostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/util/SocialHubUtil;->dismissClipboardPopup(Landroid/content/Context;)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity$2;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;->onBackPressed()V

    .line 278
    return-void
.end method
