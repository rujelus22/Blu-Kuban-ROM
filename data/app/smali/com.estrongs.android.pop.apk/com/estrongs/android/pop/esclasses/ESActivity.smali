.class public Lcom/estrongs/android/pop/esclasses/ESActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:[I

.field private b:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:[I

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESActivity;->b:[I

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/app/Dialog;[I[I)V
    .registers 7

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    :try_start_b
    array-length v0, p2

    if-ge v1, v0, :cond_8

    if-eqz p1, :cond_2b

    aget v0, p2, v1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_16
    if-eqz v0, :cond_27

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_27

    check-cast v0, Landroid/widget/TextView;

    aget v2, p3, v1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_2b
    aget v0, p2, v1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_30} :catch_32

    move-result-object v0

    goto :goto_16

    :catch_32
    move-exception v0

    goto :goto_8
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;II)V
    .registers 6

    if-eqz p1, :cond_16

    :try_start_2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_15

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_15

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_6

    :catch_1b
    move-exception v0

    goto :goto_15
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;[I[I)V
    .registers 7

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    :try_start_b
    array-length v0, p2

    if-ge v1, v0, :cond_8

    if-eqz p1, :cond_2b

    aget v0, p2, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_16
    if-eqz v0, :cond_27

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_27

    check-cast v0, Landroid/widget/TextView;

    aget v2, p3, v1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_2b
    aget v0, p2, v1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_30} :catch_32

    move-result-object v0

    goto :goto_16

    :catch_32
    move-exception v0

    goto :goto_8
.end method

.method public static b(Landroid/app/Activity;Landroid/view/View;II)V
    .registers 6

    if-eqz p1, :cond_16

    :try_start_2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_15

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_15

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_6

    :catch_1b
    move-exception v0

    goto :goto_15
.end method

.method public static b(Landroid/app/Activity;Landroid/view/View;[I[I)V
    .registers 7

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    :try_start_b
    array-length v0, p2

    if-ge v1, v0, :cond_8

    if-eqz p1, :cond_2b

    aget v0, p2, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_16
    if-eqz v0, :cond_27

    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_27

    check-cast v0, Landroid/widget/EditText;

    aget v2, p3, v1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_2b
    aget v0, p2, v1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_30} :catch_32

    move-result-object v0

    goto :goto_16

    :catch_32
    move-exception v0

    goto :goto_8
.end method


# virtual methods
.method public a(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Landroid/app/Activity;Landroid/view/View;II)V

    return-void
.end method

.method public a([I[I)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Landroid/app/Activity;Landroid/view/View;[I[I)V

    return-void
.end method

.method public b(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->b(Landroid/app/Activity;Landroid/view/View;II)V

    return-void
.end method

.method public b([I[I)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->b(Landroid/app/Activity;Landroid/view/View;[I[I)V

    return-void
.end method

.method public declared-synchronized getResources()Landroid/content/res/Resources;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/b;->a(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/b;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_3
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/b;->a(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/b;->a()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_3
    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/a;->a(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method protected onStart()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:[I

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    move v2, v0

    :goto_9
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:[I

    array-length v0, v0

    if-lt v2, v0, :cond_12

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:[I

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_20

    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_3a

    :cond_20
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESActivity;->b:[I

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESActivity;->b:[I

    array-length v0, v0

    if-le v0, v2, :cond_3a

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESActivity;->b:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3a

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3a} :catch_3e

    :cond_3a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :catch_3e
    move-exception v0

    goto :goto_11
.end method
