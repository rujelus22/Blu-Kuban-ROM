.class final Lcom/twitter/android/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/MessagesThreadActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/MessagesThreadActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/ca;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/twitter/android/ca;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v0, v0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/twitter/android/ca;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v3, p0, Lcom/twitter/android/ca;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v3, v3, Lcom/twitter/android/MessagesThreadActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3, v0, v1}, Lcom/twitter/android/client/b;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/MessagesThreadActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ca;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, v4}, Lcom/twitter/android/MessagesThreadActivity;->b(Z)V

    :cond_21
    return-void
.end method
