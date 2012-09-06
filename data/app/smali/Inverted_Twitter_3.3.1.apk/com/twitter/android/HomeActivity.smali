.class public Lcom/twitter/android/HomeActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/twitter/android/t;
.implements Lcom/twitter/android/widget/v;


# instance fields
.field private a:Lcom/twitter/android/as;

.field private b:Lcom/twitter/android/BaseListFragment;

.field private c:Ljava/util/ArrayList;

.field private d:Lcom/twitter/android/widget/SegmentedControl;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/as;

    invoke-virtual {v0}, Lcom/twitter/android/as;->c()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/as;

    invoke-virtual {v0}, Lcom/twitter/android/as;->d()[Lcom/twitter/android/ar;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/as;

    invoke-virtual {v0, v1}, Lcom/twitter/android/as;->a(I)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/as;

    invoke-virtual {v0}, Lcom/twitter/android/as;->a()Lcom/twitter/android/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/android/ar;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/BaseListFragment;

    iput-object v0, p0, Lcom/twitter/android/HomeActivity;->b:Lcom/twitter/android/BaseListFragment;

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->b:Lcom/twitter/android/BaseListFragment;

    invoke-virtual {v0, p0}, Lcom/twitter/android/BaseListFragment;->a(Lcom/twitter/android/t;)V

    invoke-virtual {p0}, Lcom/twitter/android/HomeActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0, v1}, Lcom/twitter/android/HomeTabActivity;->b(I)V

    :cond_31
    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->d:Lcom/twitter/android/widget/SegmentedControl;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->d:Lcom/twitter/android/widget/SegmentedControl;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/SegmentedControl;->a(I)V

    :cond_3a
    return-void
.end method

.method public final a(J)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/as;

    invoke-virtual {v0}, Lcom/twitter/android/as;->d()[Lcom/twitter/android/ar;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v3, :cond_25

    aget-object v0, v2, v1

    iget-boolean v4, v0, Lcom/twitter/android/ar;->d:Z

    if-eqz v4, :cond_21

    invoke-virtual {v0, p0}, Lcom/twitter/android/ar;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/BaseListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/BaseListFragment;->b(J)V

    invoke-virtual {v0}, Lcom/twitter/android/BaseListFragment;->d_()V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_25
    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/as;

    invoke-virtual {v1}, Lcom/twitter/android/as;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/twitter/android/HomeActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/HomeTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/HomeTabActivity;->a(Z)V

    :cond_18
    return-void
.end method

.method public final b(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/twitter/android/HomeActivity;->a(I)V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->b:Lcom/twitter/android/BaseListFragment;

    invoke-virtual {v0}, Lcom/twitter/android/BaseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ac;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lcom/twitter/android/widget/ac;->e()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/twitter/android/HomeActivity;->b()V

    :cond_1c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez p1, :cond_33

    const-string v1, "home_item"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    :goto_18
    packed-switch v2, :pswitch_data_140

    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeActivity;->setContentView(I)V

    :goto_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    packed-switch v2, :pswitch_data_146

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    const-string v0, "cur_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "state_home_item"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/BaseListFragment;

    iput-object v0, p0, Lcom/twitter/android/HomeActivity;->b:Lcom/twitter/android/BaseListFragment;

    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->b:Lcom/twitter/android/BaseListFragment;

    invoke-virtual {v0, p0}, Lcom/twitter/android/BaseListFragment;->a(Lcom/twitter/android/t;)V

    goto :goto_18

    :pswitch_51
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeActivity;->setContentView(I)V

    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/twitter/android/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/SegmentedControl;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/SegmentedControl;->a(Lcom/twitter/android/widget/v;)V

    iput-object v0, p0, Lcom/twitter/android/HomeActivity;->d:Lcom/twitter/android/widget/SegmentedControl;

    goto :goto_21

    :pswitch_66
    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    const-string v2, "home"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "empty_title"

    const v3, 0x7f0b01b1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "empty_desc"

    const v3, 0x7f0b01b2

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-array v0, v7, [Lcom/twitter/android/ar;

    new-instance v3, Lcom/twitter/android/ar;

    const-class v4, Lcom/twitter/android/TimelineFragment;

    const-string v5, "home"

    invoke-direct {v3, v2, v4, v5}, Lcom/twitter/android/ar;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v0, v6

    :goto_94
    new-instance v2, Lcom/twitter/android/as;

    const v3, 0x7f070031

    invoke-direct {v2, p0, v3, v0}, Lcom/twitter/android/as;-><init>(Landroid/support/v4/app/FragmentActivity;I[Lcom/twitter/android/ar;)V

    iput-object v2, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/as;

    invoke-virtual {p0, v1}, Lcom/twitter/android/HomeActivity;->a(I)V

    return-void

    :pswitch_a2
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/twitter/android/ar;

    iget-object v2, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    const-string v3, "interactions"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "activity_type"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "empty_title"

    const v4, 0x7f0b01b3

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "empty_desc"

    const v4, 0x7f0b01b4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Lcom/twitter/android/ar;

    const-class v4, Lcom/twitter/android/ActivityFragment;

    const-string v5, "interactions"

    invoke-direct {v3, v2, v4, v5}, Lcom/twitter/android/ar;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v0, v6

    iget-object v2, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    const-string v3, "mentions"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "type"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "empty_title"

    const v4, 0x7f0b01b5

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "empty_desc"

    const v4, 0x7f0b01b6

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Lcom/twitter/android/ar;

    const-class v4, Lcom/twitter/android/TimelineFragment;

    const-string v5, "mentions"

    invoke-direct {v3, v2, v4, v5}, Lcom/twitter/android/ar;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v0, v7

    goto :goto_94

    :pswitch_ff
    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    const-string v2, "discover"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "refresh"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-array v0, v7, [Lcom/twitter/android/ar;

    new-instance v3, Lcom/twitter/android/ar;

    const-class v4, Lcom/twitter/android/DiscoverFragment;

    const-string v5, "discover"

    invoke-direct {v3, v2, v4, v5}, Lcom/twitter/android/ar;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v0, v6

    goto/16 :goto_94

    :pswitch_11f
    iget-object v0, p0, Lcom/twitter/android/HomeActivity;->c:Ljava/util/ArrayList;

    const-string v2, "account"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "refresh"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-array v0, v7, [Lcom/twitter/android/ar;

    new-instance v3, Lcom/twitter/android/ar;

    const-class v4, Lcom/twitter/android/AccountFragment;

    const-string v5, "account"

    invoke-direct {v3, v2, v4, v5}, Lcom/twitter/android/ar;-><init>(Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v0, v6

    goto/16 :goto_94

    nop

    :pswitch_data_140
    .packed-switch 0x2
        :pswitch_51
    .end packed-switch

    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_66
        :pswitch_a2
        :pswitch_ff
        :pswitch_11f
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "cur_item"

    iget-object v1, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/as;

    invoke-virtual {v1}, Lcom/twitter/android/as;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state_home_item"

    iget-object v1, p0, Lcom/twitter/android/HomeActivity;->a:Lcom/twitter/android/as;

    invoke-virtual {v1}, Lcom/twitter/android/as;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
