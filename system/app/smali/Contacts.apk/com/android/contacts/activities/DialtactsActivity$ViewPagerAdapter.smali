.class public Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;
.super Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field private mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/FragmentManager;)V
    .registers 3
    .parameter
    .parameter "fm"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    .line 159
    invoke-direct {p0, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 160
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .registers 5
    .parameter "position"

    .prologue
    .line 164
    packed-switch p1, :pswitch_data_46

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No fragment at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :pswitch_1c
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-nez v0, :cond_27

    .line 167
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 169
    :cond_27
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    .line 179
    :goto_29
    return-object v0

    .line 171
    :pswitch_2a
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-nez v0, :cond_35

    .line 172
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .line 174
    :cond_35
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    goto :goto_29

    .line 176
    :pswitch_38
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v0, :cond_43

    .line 177
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 179
    :cond_43
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    goto :goto_29

    .line 164
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2a
        :pswitch_38
    .end packed-switch
.end method
