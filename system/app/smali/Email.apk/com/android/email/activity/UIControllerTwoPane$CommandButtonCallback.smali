.class Lcom/android/email/activity/UIControllerTwoPane$CommandButtonCallback;
.super Ljava/lang/Object;
.source "UIControllerTwoPane.java"

# interfaces
.implements Lcom/android/email/activity/MessageCommandButtonView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UIControllerTwoPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandButtonCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UIControllerTwoPane;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/UIControllerTwoPane;)V
    .registers 2
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/email/activity/UIControllerTwoPane$CommandButtonCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/UIControllerTwoPane;Lcom/android/email/activity/UIControllerTwoPane$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane$CommandButtonCallback;-><init>(Lcom/android/email/activity/UIControllerTwoPane;)V

    return-void
.end method


# virtual methods
.method public onMoveToNewer()V
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$CommandButtonCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerTwoPane;->moveToNewer()Z

    .line 461
    return-void
.end method

.method public onMoveToOlder()V
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$CommandButtonCallback;->this$0:Lcom/android/email/activity/UIControllerTwoPane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerTwoPane;->moveToOlder()Z

    .line 466
    return-void
.end method
