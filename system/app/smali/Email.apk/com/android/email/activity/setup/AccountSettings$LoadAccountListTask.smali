.class Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;
.super Landroid/os/AsyncTask;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 435
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;
    .registers 16
    .parameter

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 439
    .line 440
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 441
    aget-object v0, p1, v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 443
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 448
    :try_start_1e
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 449
    new-array v4, v0, [Landroid/preference/PreferenceActivity$Header;

    move v0, v6

    move-object v2, v7

    .line 451
    :goto_26
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 452
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 453
    cmp-long v1, v10, v8

    if-nez v1, :cond_3c

    .line 454
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v2, v1

    .line 455
    goto :goto_26

    .line 457
    :cond_3c
    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 458
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 459
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 460
    iput-wide v10, v7, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 461
    iput-object v1, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 462
    iput-object v5, v7, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 463
    const-class v1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 464
    invoke-static {v10, v11, v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->buildArguments(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v7, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 467
    add-int/lit8 v1, v0, 0x1

    aput-object v7, v4, v0
    :try_end_63
    .catchall {:try_start_1e .. :try_end_63} :catchall_71

    move v0, v1

    .line 468
    goto :goto_26

    .line 470
    :cond_65
    if-eqz v3, :cond_6a

    .line 471
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 474
    :cond_6a
    new-array v0, v13, [Ljava/lang/Object;

    aput-object v4, v0, v6

    aput-object v2, v0, v12

    return-object v0

    .line 470
    :catchall_71
    move-exception v0

    if-eqz v3, :cond_77

    .line 471
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_77
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 435
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .registers 7
    .parameter "result"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_8

    if-nez p1, :cond_9

    .line 489
    :cond_8
    :goto_8
    return-void

    .line 481
    :cond_9
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, [Landroid/preference/PreferenceActivity$Header;

    move-object v1, v2

    check-cast v1, [Landroid/preference/PreferenceActivity$Header;

    .line 482
    .local v1, headers:[Landroid/preference/PreferenceActivity$Header;
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 484
    .local v0, deletingAccountFound:Z
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #setter for: Lcom/android/email/activity/setup/AccountSettings;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;
    invoke-static {v2, v1}, Lcom/android/email/activity/setup/AccountSettings;->access$502(Lcom/android/email/activity/setup/AccountSettings;[Landroid/preference/PreferenceActivity$Header;)[Landroid/preference/PreferenceActivity$Header;

    .line 485
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSettings;->invalidateHeaders()V

    .line 486
    if-nez v0, :cond_8

    .line 487
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const-wide/16 v3, -0x1

    #setter for: Lcom/android/email/activity/setup/AccountSettings;->mDeletingAccountId:J
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSettings;->access$602(Lcom/android/email/activity/setup/AccountSettings;J)J

    goto :goto_8
.end method
