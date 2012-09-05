.class Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;
.super Ljava/lang/Object;
.source "MessageListXLFragmentManager.java"

# interfaces
.implements Lcom/android/email/activity/MessageCommandButtonView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXLFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandButtonCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXLFragmentManager;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1205
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V

    return-void
.end method


# virtual methods
.method public onMoveToNewer()V
    .registers 2

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$300(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->onMoveToNewer()V

    .line 1209
    return-void
.end method

.method public onMoveToOlder()V
    .registers 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$CommandButtonCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$300(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->onMoveToOlder()V

    .line 1214
    return-void
.end method
