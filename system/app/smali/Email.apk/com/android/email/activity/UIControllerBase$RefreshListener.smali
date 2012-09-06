.class Lcom/android/email/activity/UIControllerBase$RefreshListener;
.super Ljava/lang/Object;
.source "UIControllerBase.java"

# interfaces
.implements Lcom/android/email/RefreshManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UIControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshListener"
.end annotation


# instance fields
.field private mRefreshIcon:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/android/email/activity/UIControllerBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/UIControllerBase;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->this$0:Lcom/android/email/activity/UIControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/UIControllerBase;Lcom/android/email/activity/UIControllerBase$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerBase$RefreshListener;-><init>(Lcom/android/email/activity/UIControllerBase;)V

    return-void
.end method

.method private updateRefreshIcon()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->mRefreshIcon:Landroid/view/MenuItem;

    if-nez v0, :cond_5

    .line 140
    :goto_4
    return-void

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->this$0:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase;->isRefreshInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 136
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->mRefreshIcon:Landroid/view/MenuItem;

    const v1, 0x7f040016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 138
    :cond_16
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->mRefreshIcon:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_4
.end method


# virtual methods
.method public onMessagingError(JJLjava/lang/String;)V
    .registers 6
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "message"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase$RefreshListener;->updateRefreshIcon()V

    .line 118
    return-void
.end method

.method public onRefreshStatusChanged(JJ)V
    .registers 5
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase$RefreshListener;->updateRefreshIcon()V

    .line 123
    return-void
.end method

.method setRefreshIcon(Landroid/view/MenuItem;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase$RefreshListener;->mRefreshIcon:Landroid/view/MenuItem;

    .line 127
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase$RefreshListener;->updateRefreshIcon()V

    .line 128
    return-void
.end method
