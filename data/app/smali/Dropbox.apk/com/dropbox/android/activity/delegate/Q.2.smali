.class final Lcom/dropbox/android/activity/delegate/Q;
.super Landroid/database/ContentObserver;
.source "panda.py"


# instance fields
.field a:Landroid/os/Handler;

.field b:Landroid/net/Uri;

.field c:Landroid/net/Uri;

.field d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/activity/delegate/R;Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 57
    iput-object p2, p0, Lcom/dropbox/android/activity/delegate/Q;->a:Landroid/os/Handler;

    .line 58
    iput-object p3, p0, Lcom/dropbox/android/activity/delegate/Q;->c:Landroid/net/Uri;

    .line 59
    iput-object p4, p0, Lcom/dropbox/android/activity/delegate/Q;->b:Landroid/net/Uri;

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/delegate/Q;->d:Ljava/lang/ref/WeakReference;

    .line 61
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 66
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/Q;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 67
    if-eqz v0, :cond_4b

    .line 69
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_4c

    .line 70
    check-cast v0, Landroid/app/Activity;

    .line 71
    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/Q;->c:Landroid/net/Uri;

    const-string v5, "is_dir DESC, _display_name COLLATE NOCASE"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 76
    :goto_20
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v6, :cond_48

    .line 77
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 78
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 79
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 82
    iget-object v4, p0, Lcom/dropbox/android/activity/delegate/Q;->b:Landroid/net/Uri;

    aput-object v4, v3, v7

    .line 83
    aput-object v2, v3, v6

    .line 84
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 85
    iput v1, v2, Landroid/os/Message;->what:I

    .line 86
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/Q;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    :cond_48
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_4b
    return-void

    .line 73
    :cond_4c
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/Q;->c:Landroid/net/Uri;

    const-string v5, "is_dir DESC, _display_name COLLATE NOCASE"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_20
.end method
