.class Lcom/android/email/activity/setup/AccountSettings$1;
.super Landroid/database/ContentObserver;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettings;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #calls: Lcom/android/email/activity/setup/AccountSettings;->updateAccounts()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$300(Lcom/android/email/activity/setup/AccountSettings;)V

    .line 197
    return-void
.end method
