.class Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$2;
.super Landroid/widget/ArrayAdapter;
.source "HostedPeopleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->onPrepareActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;Landroid/content/Context;II)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method private bindView(Landroid/view/View;I)V
    .registers 7
    .parameter "view"
    .parameter "position"

    .prologue
    .line 382
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$2;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;

    .line 383
    .local v0, item:Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;
    const v2, 0x1020015

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 384
    .local v1, memberCountTextView:Landroid/widget/TextView;
    if-eqz v1, :cond_39

    .line 385
    iget v2, v0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->viewType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1b

    iget v2, v0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->viewType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3a

    .line 387
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->memberCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :cond_39
    :goto_39
    return-void

    .line 389
    :cond_3a
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 376
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 377
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$2;->bindView(Landroid/view/View;I)V

    .line 378
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 366
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 367
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$2;->bindView(Landroid/view/View;I)V

    .line 368
    return-object v0
.end method
