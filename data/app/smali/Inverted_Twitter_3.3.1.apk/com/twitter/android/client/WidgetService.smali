.class public Lcom/twitter/android/client/WidgetService;
.super Landroid/app/IntentService;


# static fields
.field private static final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    const-string v1, "open"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    const-string v1, "close"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    const-string v1, "refresh"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    const-string v1, "clear_logged_out"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    const-string v1, "on_update"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    const-string v1, "on_delete"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "WidgetService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Lcom/twitter/android/client/WidgetControl;
    .registers 6

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/b;->g(J)Lcom/twitter/android/client/WidgetControl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;JIJ)Ljava/util/ArrayList;
    .registers 13

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    if-ne p3, v0, :cond_65

    sget-object v0, Lcom/twitter/android/provider/z;->g:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    move-object v1, v0

    :goto_12
    const-string v0, "limit"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "ownerId"

    invoke-virtual {v0, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-lez v0, :cond_32

    const-string v0, "newer"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/m;->b:[Ljava/lang/String;

    const-string v3, "author_id!=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "updated_at DESC, _id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_74

    :goto_51
    :try_start_51
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_71

    new-instance v2, Lcom/twitter/android/provider/m;

    invoke-direct {v2, v1}, Lcom/twitter/android/provider/m;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_51 .. :try_end_5f} :catchall_60

    goto :goto_51

    :catchall_60
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_65
    sget-object v0, Lcom/twitter/android/provider/z;->i:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    move-object v1, v0

    goto :goto_12

    :cond_71
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_74
    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/android/client/WidgetControl;JJ)V
    .registers 13

    const/4 v6, 0x5

    const/4 v3, 0x0

    iget-wide v1, p1, Lcom/twitter/android/client/WidgetControl;->b:J

    move-object v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;JIJ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v3, p2, p3, v0}, Lcom/twitter/android/client/WidgetControl;->a(IJLjava/util/ArrayList;)V

    move-object v0, p0

    move v3, v6

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;JIJ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v6, p4, p5, v0}, Lcom/twitter/android/client/WidgetControl;->a(IJLjava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 10

    const/4 v7, 0x2

    const v5, 0x7f050002

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/WidgetService;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1a

    move v0, v4

    :goto_16
    packed-switch v0, :pswitch_data_f4

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_16

    :pswitch_1f
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/twitter/android/client/WidgetControl;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v4, v1, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v6, "com.twitter.android.auth.login"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    array-length v5, v5

    if-ge v5, v7, :cond_41

    invoke-static {v0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6, v4}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl;->a()V

    invoke-virtual {v1, v7}, Lcom/twitter/android/client/WidgetControl;->d(I)V

    move-wide v4, v2

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Lcom/twitter/android/client/WidgetControl;JJ)V

    goto :goto_19

    :pswitch_4c
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/twitter/android/client/WidgetControl;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/twitter/android/client/WidgetControl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "widget_state"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl;->a()V

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/WidgetControl;->d(I)V

    goto :goto_19

    :pswitch_6f
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/twitter/android/client/WidgetControl;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/twitter/android/client/WidgetControl;->a()V

    const-string v4, "latest_time_tweets"

    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v4, "latest_time_mentions"

    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v2, v6

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/client/WidgetService;->a(Landroid/content/Context;Lcom/twitter/android/client/WidgetControl;JJ)V

    goto :goto_19

    :pswitch_8d
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "widget_provider"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_b4

    const v0, 0x7f03006a

    const v1, 0x7f030067

    :goto_9f
    new-instance v5, Lcom/twitter/android/client/i;

    const-string v6, ""

    invoke-direct {v5, v3, v0, v1, v6}, Lcom/twitter/android/client/i;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;)[I

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;[I)V

    const-string v0, ""

    invoke-static {v2, v5, v4, v0, v4}, Lcom/twitter/android/client/WidgetControl;->a(Landroid/content/Context;Lcom/twitter/android/client/i;ILjava/lang/String;I)V

    goto/16 :goto_19

    :cond_b4
    const v0, 0x7f03006d

    const v1, 0x7f030068

    goto :goto_9f

    :pswitch_bb
    invoke-virtual {p0}, Lcom/twitter/android/client/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "widget_provider"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->w()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/WidgetControl;

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl;->a()V

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/WidgetControl;->c(I)V

    goto :goto_d1

    :pswitch_e4
    invoke-static {p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v0

    const-string v1, "widget_ids"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/provider/a;->a([I)I

    goto/16 :goto_19

    nop

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_4c
        :pswitch_6f
        :pswitch_8d
        :pswitch_bb
        :pswitch_e4
    .end packed-switch
.end method
