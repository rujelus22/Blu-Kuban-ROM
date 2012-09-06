.class final Lcom/twitter/android/bg;
.super Landroid/content/AsyncQueryHandler;


# instance fields
.field final synthetic a:Lcom/twitter/android/ListTabActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/ListTabActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 10

    const/4 v2, 0x0

    if-nez p3, :cond_4

    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ListTabActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_10
    packed-switch p1, :pswitch_data_88

    goto :goto_3

    :pswitch_14
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_1a
    iget-object v0, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/ListTabActivity;

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ListTabActivity;->i:I

    iget-object v0, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/ListTabActivity;

    iget v0, v0, Lcom/twitter/android/ListTabActivity;->i:I

    if-nez v0, :cond_2e

    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_2e
    iget-object v0, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/ListTabActivity;

    iget v0, v0, Lcom/twitter/android/ListTabActivity;->i:I

    packed-switch v0, :pswitch_data_90

    :cond_35
    :goto_35
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :pswitch_39
    iget-object v0, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/ListTabActivity;

    iget-object v0, v0, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/ListTabActivity;

    iget-wide v0, v0, Lcom/twitter/android/ListTabActivity;->g:J

    iget-object v2, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/ListTabActivity;

    iget-object v2, v2, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/ListTabActivity;

    iget-object v0, v0, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/ListTabActivity;

    iget-wide v2, v2, Lcom/twitter/android/ListTabActivity;->f:J

    iget-object v4, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/ListTabActivity;

    iget-object v4, v4, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v4}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/b;->c(IJJ)Ljava/lang/String;

    goto :goto_35

    :pswitch_68
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_6e
    iget-object v0, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/ListTabActivity;

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ListTabActivity;->i:I

    iget-object v0, p0, Lcom/twitter/android/bg;->a:Lcom/twitter/android/ListTabActivity;

    iget v0, v0, Lcom/twitter/android/ListTabActivity;->i:I

    if-nez v0, :cond_82

    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6e

    :cond_82
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_14
        :pswitch_68
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_39
    .end packed-switch
.end method
