.class final Lcom/twitter/android/cw;
.super Landroid/content/AsyncQueryHandler;


# instance fields
.field final synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/PostActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/cw;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 8

    if-nez p3, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c

    packed-switch p1, :pswitch_data_22

    :cond_c
    :goto_c
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :pswitch_10
    iget-object v0, p0, Lcom/twitter/android/cw;->a:Lcom/twitter/android/PostActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twitter/android/provider/m;

    const/4 v2, 0x0

    new-instance v3, Lcom/twitter/android/provider/m;

    invoke-direct {v3, p3}, Lcom/twitter/android/provider/m;-><init>(Landroid/database/Cursor;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/PostActivity;->a([Landroid/os/Parcelable;)V

    goto :goto_c

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method
