.class Lcom/android/calendar/AllInOneActivity$QueryHandler$1;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneActivity$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/AllInOneActivity$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneActivity$QueryHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler$1;->this$1:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 220
    :cond_6
    :goto_6
    return-void

    .line 207
    :cond_7
    :try_start_7
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 208
    .local v0, result:Landroid/os/Bundle;
    const-string v2, "setupSkipped"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 210
    .local v1, setupSkipped:Z
    if-eqz v1, :cond_6

    .line 211
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity$QueryHandler$1;->this$1:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    iget-object v2, v2, Lcom/android/calendar/AllInOneActivity$QueryHandler;->this$0:Lcom/android/calendar/AllInOneActivity;

    const-string v3, "preferences_skip_setup"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1f
    .catch Landroid/accounts/OperationCanceledException; {:try_start_7 .. :try_end_1f} :catch_20
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1f} :catch_24
    .catch Landroid/accounts/AuthenticatorException; {:try_start_7 .. :try_end_1f} :catch_22

    goto :goto_6

    .line 215
    .end local v0           #result:Landroid/os/Bundle;
    .end local v1           #setupSkipped:Z
    :catch_20
    move-exception v2

    goto :goto_6

    .line 218
    :catch_22
    move-exception v2

    goto :goto_6

    .line 217
    :catch_24
    move-exception v2

    goto :goto_6
.end method
