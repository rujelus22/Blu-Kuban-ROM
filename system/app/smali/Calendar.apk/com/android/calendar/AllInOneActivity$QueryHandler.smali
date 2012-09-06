.class Lcom/android/calendar/AllInOneActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AllInOneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AllInOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AllInOneActivity;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler;->this$0:Lcom/android/calendar/AllInOneActivity;

    .line 182
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 183
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 12
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler;->this$0:Lcom/android/calendar/AllInOneActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z
    invoke-static {v1, v2}, Lcom/android/calendar/AllInOneActivity;->access$402(Lcom/android/calendar/AllInOneActivity;Z)Z

    .line 189
    if-eqz p3, :cond_17

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_17

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-virtual {v1}, Lcom/android/calendar/AllInOneActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 222
    :cond_17
    :goto_17
    return-void

    .line 192
    :cond_18
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v4, options:Landroid/os/Bundle;
    const-string v1, "introMessage"

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-virtual {v2}, Lcom/android/calendar/AllInOneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0036

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 195
    const-string v1, "allowSkip"

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler;->this$0:Lcom/android/calendar/AllInOneActivity;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 198
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    const-string v2, "com.android.calendar"

    iget-object v5, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler;->this$0:Lcom/android/calendar/AllInOneActivity;

    new-instance v6, Lcom/android/calendar/AllInOneActivity$QueryHandler$1;

    invoke-direct {v6, p0}, Lcom/android/calendar/AllInOneActivity$QueryHandler$1;-><init>(Lcom/android/calendar/AllInOneActivity$QueryHandler;)V

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_17
.end method
