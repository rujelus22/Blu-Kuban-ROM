.class final Lcom/google/android/youtube/app/ui/ds;
.super Lcom/google/android/youtube/core/ui/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dm;

.field private b:Lcom/google/android/youtube/core/model/UserAuth;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/dm;)V
    .registers 3
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ds;->a:Lcom/google/android/youtube/app/ui/dm;

    .line 430
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/dm;->b(Lcom/google/android/youtube/app/ui/dm;)Lcom/google/android/youtube/core/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/d;)V

    .line 431
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ds;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/ds;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->b:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ds;->b:Lcom/google/android/youtube/core/model/UserAuth;

    .line 435
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 436
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 423
    const-string v0, "Error flagging"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->c:Lcom/google/android/youtube/core/d;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->a:Lcom/google/android/youtube/app/ui/dm;

    const v1, 0x7f0b01b7

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/dm;->a(Lcom/google/android/youtube/app/ui/dm;I)V

    return-void
.end method

.method public final b()Landroid/app/Dialog;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 439
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002e

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->d:Landroid/view/View;

    .line 442
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->d:Landroid/view/View;

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 444
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 446
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ds;->d:Landroid/view/View;

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 449
    invoke-static {}, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->values()[Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_36
    if-ge v1, v4, :cond_51

    aget-object v5, v3, v1

    .line 450
    new-instance v6, Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/google/android/youtube/app/ui/ds;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v7, v7, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 451
    iget v7, v5, Lcom/google/android/youtube/core/async/GDataRequestFactory$ComplaintReason;->stringId:I

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(I)V

    .line 452
    invoke-virtual {v6, v5}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 453
    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 456
    :cond_51
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 458
    new-instance v0, Lcom/google/android/youtube/app/ui/dt;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/dt;-><init>(Lcom/google/android/youtube/app/ui/ds;)V

    .line 475
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ds;->a:Lcom/google/android/youtube/app/ui/dm;

    iget-object v2, v2, Lcom/google/android/youtube/app/ui/dm;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b01b9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ds;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01ba

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
