.class Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;
.super Ljava/lang/Object;
.source "UIControllerBase.java"

# interfaces
.implements Lcom/android/email/activity/MessageOrderManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UIControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageOrderManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UIControllerBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/UIControllerBase;)V
    .registers 2
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;->this$0:Lcom/android/email/activity/UIControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/UIControllerBase;Lcom/android/email/activity/UIControllerBase$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;-><init>(Lcom/android/email/activity/UIControllerBase;)V

    return-void
.end method


# virtual methods
.method public onMessageNotFound()V
    .registers 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;->this$0:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->doAutoAdvance()V

    .line 1021
    return-void
.end method

.method public onMessagesChanged()V
    .registers 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;->this$0:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->updateNavigationArrows()V

    .line 1016
    return-void
.end method
