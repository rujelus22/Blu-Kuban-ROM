.class Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;
.super Ljava/lang/Object;
.source "CallLogListItemHelper.java"


# instance fields
.field private final mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private final mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V
    .registers 4
    .parameter "phoneCallDetailsHelper"
    .parameter "phoneNumberHelper"
    .parameter "resources"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 50
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 51
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    .line 52
    return-void
.end method

.method private configureCallSecondaryAction(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .registers 6
    .parameter "views"
    .parameter "details"

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    iget v0, p2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    sparse-switch v0, :sswitch_data_36

    .line 109
    :goto_b
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/16 v1, 0x15

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 111
    return-void

    .line 99
    :sswitch_13
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v1, 0x7f0201fe

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 100
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_b

    .line 104
    :sswitch_24
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v1, 0x7f020200

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 105
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v1, 0x7f020207

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_b

    .line 95
    nop

    :sswitch_data_36
    .sparse-switch
        0x64 -> :sswitch_13
        0xc8 -> :sswitch_24
        0x12c -> :sswitch_24
        0x1f4 -> :sswitch_13
        0x320 -> :sswitch_13
    .end sparse-switch
.end method


# virtual methods
.method public setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZI)V
    .registers 14
    .parameter "mContext"
    .parameter "views"
    .parameter "details"
    .parameter "isHighlighted"
    .parameter "listGroupSize"

    .prologue
    const/4 v7, 0x0

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v2, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZI)V

    .line 66
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    if-eqz v0, :cond_22

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v1, p3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 68
    .local v6, canCall:Z
    iget-object v0, p3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    aget v0, v0, v7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    const/4 v7, 0x1

    .line 70
    .local v7, canPlay:Z
    :cond_20
    if-eqz v7, :cond_23

    .line 84
    .end local v6           #canCall:Z
    .end local v7           #canPlay:Z
    :cond_22
    :goto_22
    return-void

    .line 74
    .restart local v6       #canCall:Z
    .restart local v7       #canPlay:Z
    :cond_23
    if-eqz v6, :cond_29

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->configureCallSecondaryAction(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    goto :goto_22

    .line 80
    :cond_29
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_22
.end method
