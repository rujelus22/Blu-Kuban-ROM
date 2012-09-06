.class Lcom/android/calendar/CalendarController$RefreshInBackground;
.super Landroid/os/AsyncTask;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshInBackground"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/database/Cursor;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarController;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarController;)V
    .registers 2
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/calendar/CalendarController$RefreshInBackground;->this$0:Lcom/android/calendar/CalendarController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarController;Lcom/android/calendar/CalendarController$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarController$RefreshInBackground;-><init>(Lcom/android/calendar/CalendarController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/database/Cursor;)Ljava/lang/Integer;
    .registers 12
    .parameter "params"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 728
    array-length v6, p1

    if-eq v6, v8, :cond_7

    .line 758
    :cond_6
    :goto_6
    return-object v9

    .line 731
    :cond_7
    aget-object v3, p1, v7

    .line 732
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_6

    .line 736
    const/4 v4, 0x0

    .line 737
    .local v4, previousAccount:Ljava/lang/String;
    const/4 v5, 0x0

    .line 738
    .local v5, previousType:Ljava/lang/String;
    const-string v6, "CalendarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Refreshing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " calendars"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, account:Landroid/accounts/Account;
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, accountName:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, accountType:Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 750
    :cond_4c
    move-object v4, v1

    .line 751
    move-object v5, v2

    .line 752
    new-instance v0, Landroid/accounts/Account;

    .end local v0           #account:Landroid/accounts/Account;
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    .restart local v0       #account:Landroid/accounts/Account;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/calendar/CalendarController$RefreshInBackground;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    :try_end_58
    .catchall {:try_start_2f .. :try_end_58} :catchall_59

    goto :goto_2f

    .line 756
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    :catchall_59
    move-exception v6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_5e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 722
    check-cast p1, [Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarController$RefreshInBackground;->doInBackground([Landroid/database/Cursor;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    .registers 7
    .parameter "account"
    .parameter "uploadChangesOnly"
    .parameter "url"

    .prologue
    .line 771
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 772
    .local v0, extras:Landroid/os/Bundle;
    if-eqz p2, :cond_c

    .line 773
    const-string v1, "upload"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 775
    :cond_c
    if-eqz p3, :cond_13

    .line 776
    const-string v1, "feed"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_13
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 779
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 780
    return-void
.end method
