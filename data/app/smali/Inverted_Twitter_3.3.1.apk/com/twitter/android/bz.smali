.class final Lcom/twitter/android/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/MessagesThreadActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/MessagesThreadActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v0, v0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v3, v0, [J

    const/4 v0, 0x0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_15
    add-int/lit8 v1, v0, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v1, p0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v1, v1, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v3}, Lcom/twitter/android/client/b;->a([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/MessagesThreadActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/bz;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, v6}, Lcom/twitter/android/MessagesThreadActivity;->b(Z)V

    :cond_35
    return-void

    :cond_36
    move v0, v1

    goto :goto_15
.end method
