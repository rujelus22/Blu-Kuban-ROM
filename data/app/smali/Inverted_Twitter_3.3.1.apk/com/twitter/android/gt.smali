.class final Lcom/twitter/android/gt;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/UsersFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/UsersFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->r:Lcom/twitter/android/gs;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    if-lez p1, :cond_29

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->r:Lcom/twitter/android/gs;

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget-object v1, v1, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/twitter/android/gs;->c(I)V

    goto :goto_16

    :cond_29
    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->r:Lcom/twitter/android/gs;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/twitter/android/gs;->c(I)V

    goto :goto_16
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V
    .registers 12

    const/16 v2, 0xc8

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_2e

    if-ne p3, v2, :cond_11

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v1}, Lcom/twitter/android/UsersFragment;->m()V

    :cond_11
    invoke-direct {p0, p8}, Lcom/twitter/android/gt;->a(I)V

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersFragment;->c(I)V

    if-eq p3, v2, :cond_2e

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0058

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2e
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JIILjava/util/ArrayList;)V
    .registers 14

    const/16 v3, 0xc8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_30

    if-ne p3, v3, :cond_12

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v1}, Lcom/twitter/android/UsersFragment;->m()V

    :cond_12
    invoke-direct {p0, p8}, Lcom/twitter/android/gt;->a(I)V

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersFragment;->c(I)V

    const/16 v0, 0x191

    if-ne p3, v0, :cond_31

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b00e1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_30
    :goto_30
    return-void

    :cond_31
    if-eq p3, v3, :cond_30

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0058

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_30
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJ)V
    .registers 13

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_12

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->m()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b006b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_11
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V
    .registers 12

    const/16 v2, 0xc8

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_2e

    if-ne p3, v2, :cond_11

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v1}, Lcom/twitter/android/UsersFragment;->m()V

    :cond_11
    invoke-direct {p0, p8}, Lcom/twitter/android/gt;->a(I)V

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersFragment;->c(I)V

    if-eq p3, v2, :cond_2e

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0058

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2e
    return-void
.end method

.method public final d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 9

    const/16 v2, 0xc8

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_2e

    if-ne p3, v2, :cond_11

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v1}, Lcom/twitter/android/UsersFragment;->m()V

    :cond_11
    invoke-direct {p0, p5}, Lcom/twitter/android/gt;->a(I)V

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersFragment;->c(I)V

    if-eq p3, v2, :cond_2e

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0058

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2e
    return-void
.end method

.method public final d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v3

    if-eqz v3, :cond_4d

    iget v0, v3, Lcom/twitter/android/cm;->b:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4e

    move v0, v1

    :goto_10
    iget-object v4, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget v3, v3, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v4, v3}, Lcom/twitter/android/UsersFragment;->c(I)V

    const/16 v3, 0xc8

    if-ne p3, v3, :cond_56

    if-eqz v0, :cond_50

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/android/UsersFragment;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v1}, Lcom/twitter/android/UsersFragment;->g()V

    :goto_2a
    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget-boolean v0, v0, Lcom/twitter/android/UsersFragment;->t:Z

    if-eqz v0, :cond_6a

    new-instance v0, Lcom/twitter/android/service/ScribeLog;

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget-object v1, v1, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->l:Lcom/twitter/android/service/ScribeEvent;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    const-string v1, "from_tweet_search"

    iput-object v1, v0, Lcom/twitter/android/service/ScribeLog;->context:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget-object v1, v1, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/service/ScribeLog;)V

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    move v0, v2

    goto :goto_10

    :cond_50
    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v1}, Lcom/twitter/android/UsersFragment;->m()V

    goto :goto_2a

    :cond_56
    invoke-direct {p0, v2}, Lcom/twitter/android/gt;->a(I)V

    iget-object v2, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v2}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b0058

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2a

    :cond_6a
    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget-object v1, v1, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->l:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_4d
.end method

.method public final e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/UsersFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    invoke-virtual {v1}, Lcom/twitter/android/UsersFragment;->m()V

    invoke-direct {p0, p5}, Lcom/twitter/android/gt;->a(I)V

    iget-object v1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/UsersFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersFragment;->c(I)V

    :cond_17
    return-void
.end method
