.class public Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ContactDetailViewPagerAdapter.java"


# instance fields
.field private mAboutFragmentView:Landroid/view/View;

.field private mFragmentViewCount:I

.field private mUpdatesFragmentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mFragmentViewCount:I

    .line 43
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 96
    return-void
.end method

.method public enableSwipe(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 58
    if-eqz p1, :cond_9

    const/4 v0, 0x2

    :goto_3
    iput v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mFragmentViewCount:I

    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->notifyDataSetChanged()V

    .line 60
    return-void

    .line 58
    :cond_9
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public finishUpdate(Landroid/view/View;)V
    .registers 2
    .parameter "container"

    .prologue
    .line 100
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mFragmentViewCount:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3
    .parameter "object"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mAboutFragmentView:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 71
    const/4 v0, 0x0

    .line 76
    :goto_5
    return v0

    .line 73
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mUpdatesFragmentView:Landroid/view/View;

    if-ne p1, v0, :cond_c

    .line 74
    const/4 v0, 0x1

    goto :goto_5

    .line 76
    :cond_c
    const/4 v0, -0x2

    goto :goto_5
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 6
    .parameter "container"
    .parameter "position"

    .prologue
    .line 85
    packed-switch p2, :pswitch_data_22

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :pswitch_1c
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mAboutFragmentView:Landroid/view/View;

    .line 89
    :goto_1e
    return-object v0

    :pswitch_1f
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mUpdatesFragmentView:Landroid/view/View;

    goto :goto_1e

    .line 85
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .parameter "view"
    .parameter "object"

    .prologue
    .line 104
    check-cast p2, Landroid/view/View;

    .end local p2
    if-ne p2, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 114
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAboutFragmentView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mAboutFragmentView:Landroid/view/View;

    .line 47
    return-void
.end method

.method public setUpdatesFragmentView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mUpdatesFragmentView:Landroid/view/View;

    .line 51
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .registers 2
    .parameter "container"

    .prologue
    .line 81
    return-void
.end method
