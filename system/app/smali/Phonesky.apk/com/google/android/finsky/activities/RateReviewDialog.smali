.class public Lcom/google/android/finsky/activities/RateReviewDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "RateReviewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/RateReviewDialog$Listener;,
        Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    }
.end annotation


# instance fields
.field mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    .line 68
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/RateReviewDialog;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/RateReviewDialog;->setRating(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/RateReviewDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->syncOkButtonState()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/RateReviewDialog;)Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->getListener()Lcom/google/android/finsky/activities/RateReviewDialog$Listener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
    .registers 4

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 177
    .local v1, f:Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/google/android/finsky/activities/RateReviewDialog$Listener;

    if-eqz v2, :cond_b

    .line 178
    check-cast v1, Lcom/google/android/finsky/activities/RateReviewDialog$Listener;

    .line 184
    .end local v1           #f:Landroid/support/v4/app/Fragment;
    :goto_a
    return-object v1

    .line 180
    .restart local v1       #f:Landroid/support/v4/app/Fragment;
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 181
    .local v0, a:Landroid/app/Activity;
    instance-of v2, v0, Lcom/google/android/finsky/activities/RateReviewDialog$Listener;

    if-eqz v2, :cond_17

    .line 182
    check-cast v0, Lcom/google/android/finsky/activities/RateReviewDialog$Listener;

    .end local v0           #a:Landroid/app/Activity;
    move-object v1, v0

    goto :goto_a

    .line 184
    .restart local v0       #a:Landroid/app/Activity;
    :cond_17
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getRatingForIndex(I)Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    .registers 7
    .parameter "index"

    .prologue
    .line 136
    invoke-static {}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->values()[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_14

    aget-object v3, v0, v1

    .line 137
    .local v3, rating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    #calls: Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getIndex()I
    invoke-static {v3}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->access$000(Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)I

    move-result v4

    if-ne v4, p1, :cond_11

    .line 141
    .end local v3           #rating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    :goto_10
    return-object v3

    .line 136
    .restart local v3       #rating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 141
    .end local v3           #rating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    :cond_14
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)Lcom/google/android/finsky/activities/RateReviewDialog;
    .registers 7
    .parameter "docId"
    .parameter "reviewId"
    .parameter "initialRating"

    .prologue
    .line 82
    new-instance v1, Lcom/google/android/finsky/activities/RateReviewDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/RateReviewDialog;-><init>()V

    .line 83
    .local v1, dialogFragment:Lcom/google/android/finsky/activities/RateReviewDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "doc_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "rating_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz p2, :cond_1f

    .line 87
    const-string v2, "previous_rating"

    #calls: Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getIndex()I
    invoke-static {p2}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->access$000(Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    :cond_1f
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/RateReviewDialog;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v1
.end method

.method private setRating(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/RateReviewDialog;->getRatingForIndex(I)Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    .line 152
    invoke-direct {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->syncOkButtonState()V

    .line 153
    return-void
.end method

.method private syncOkButtonState()V
    .registers 5

    .prologue
    .line 156
    iget-object v2, p0, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    if-eqz v2, :cond_14

    const/4 v0, 0x1

    .line 157
    .local v0, enabled:Z
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 158
    .local v1, okButton:Landroid/widget/Button;
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    return-void

    .line 156
    .end local v0           #enabled:Z
    .end local v1           #okButton:Landroid/widget/Button;
    :cond_14
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 96
    .local v4, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, arguments:Landroid/os/Bundle;
    const-string v12, "rating_id"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, reviewId:Ljava/lang/String;
    const-string v12, "doc_id"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, docId:Ljava/lang/String;
    if-eqz p1, :cond_46

    move-object v11, p1

    .line 103
    .local v11, source:Landroid/os/Bundle;
    :goto_17
    const-string v12, "previous_rating"

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 104
    .local v7, initialRatingIndex:I
    invoke-direct {p0, v7}, Lcom/google/android/finsky/activities/RateReviewDialog;->getRatingForIndex(I)Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    .line 106
    invoke-static {}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->values()[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    move-result-object v12

    array-length v12, v12

    new-array v3, v12, [Ljava/lang/CharSequence;

    .line 107
    .local v3, choices:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->values()[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    move-result-object v1

    .local v1, arr$:[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    array-length v8, v1

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_31
    if-ge v6, v8, :cond_48

    aget-object v9, v1, v6

    .line 108
    .local v9, rating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    #calls: Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getIndex()I
    invoke-static {v9}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->access$000(Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)I

    move-result v12

    #calls: Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getTextResourceId()I
    invoke-static {v9}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->access$100(Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .end local v1           #arr$:[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    .end local v3           #choices:[Ljava/lang/CharSequence;
    .end local v6           #i$:I
    .end local v7           #initialRatingIndex:I
    .end local v8           #len$:I
    .end local v9           #rating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    .end local v11           #source:Landroid/os/Bundle;
    :cond_46
    move-object v11, v0

    .line 102
    goto :goto_17

    .line 111
    .restart local v1       #arr$:[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    .restart local v3       #choices:[Ljava/lang/CharSequence;
    .restart local v6       #i$:I
    .restart local v7       #initialRatingIndex:I
    .restart local v8       #len$:I
    .restart local v11       #source:Landroid/os/Bundle;
    :cond_48
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v12, 0x7f070147

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 113
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 114
    new-instance v12, Lcom/google/android/finsky/activities/RateReviewDialog$1;

    invoke-direct {v12, p0}, Lcom/google/android/finsky/activities/RateReviewDialog$1;-><init>(Lcom/google/android/finsky/activities/RateReviewDialog;)V

    invoke-virtual {v2, v3, v7, v12}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    const v12, 0x104000a

    new-instance v13, Lcom/google/android/finsky/activities/RateReviewDialog$2;

    invoke-direct {v13, p0, v5, v10}, Lcom/google/android/finsky/activities/RateReviewDialog$2;-><init>(Lcom/google/android/finsky/activities/RateReviewDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    const/high16 v12, 0x104

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    return-object v12
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    if-eqz v0, :cond_f

    .line 168
    const-string v0, "previous_rating"

    iget-object v1, p0, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    #calls: Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getIndex()I
    invoke-static {v1}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->access$000(Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    :cond_f
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 147
    invoke-direct {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->syncOkButtonState()V

    .line 148
    return-void
.end method
