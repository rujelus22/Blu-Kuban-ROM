.class public Lcom/android/email/activity/MessageViewDisplayModePopup;
.super Landroid/app/Activity;
.source "MessageViewDisplayModePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBackgroundColorCheck:I

.field private mBgBlackImg:Landroid/widget/ImageView;

.field private mBgColor:[I

.field private mBgColortext:Landroid/widget/TextView;

.field private mBgNavyImg:Landroid/widget/ImageView;

.field private mBgSelector:I

.field private mBgWhiteImg:Landroid/widget/ImageView;

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnOK:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mFontBlackImg:Landroid/widget/ImageView;

.field private mFontColor:[I

.field private mFontColortext:Landroid/widget/TextView;

.field private mFontGrayImg:Landroid/widget/ImageView;

.field private mFontSelector:I

.field private mFontWhiteImg:Landroid/widget/ImageView;

.field private mPowerSavingState:I

.field private mViewText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontColor:[I

    .line 73
    iput-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgColor:[I

    .line 75
    iput v0, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mPowerSavingState:I

    .line 77
    iput v0, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBackgroundColorCheck:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 174
    .local v0, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_f0

    .line 250
    :goto_10
    :pswitch_10
    return-void

    .line 177
    :pswitch_11
    iput v2, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontSelector:I

    .line 178
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontBlackImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 179
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontGrayImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 180
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontWhiteImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 181
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mViewText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontColor:[I

    iget v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontSelector:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_10

    .line 185
    :pswitch_2e
    iput v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontSelector:I

    .line 186
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontBlackImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 187
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontGrayImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 188
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontWhiteImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 189
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mViewText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontColor:[I

    iget v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontSelector:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_10

    .line 193
    :pswitch_4b
    iput v4, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontSelector:I

    .line 194
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontBlackImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 195
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontGrayImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 196
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontWhiteImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 197
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mViewText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontColor:[I

    iget v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontSelector:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_10

    .line 201
    :pswitch_68
    iput v2, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgSelector:I

    .line 202
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgWhiteImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgNavyImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgBlackImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mViewText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgColor:[I

    iget v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgSelector:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 206
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mViewText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020252

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    .line 211
    :pswitch_98
    iput v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgSelector:I

    .line 212
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgWhiteImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 213
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgNavyImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 214
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgBlackImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 215
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mViewText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgColor:[I

    iget v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgSelector:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_10

    .line 219
    :pswitch_b6
    iput v4, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgSelector:I

    .line 220
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgWhiteImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 221
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgNavyImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 222
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgBlackImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 223
    iget-object v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mViewText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgColor:[I

    iget v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgSelector:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_10

    .line 232
    :pswitch_d4
    iget v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgSelector:I

    invoke-virtual {v0, v1}, Lcom/android/email/Preferences;->setBGColor(I)V

    .line 233
    iget v1, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontSelector:I

    invoke-virtual {v0, v1}, Lcom/android/email/Preferences;->setFontColor(I)V

    .line 236
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewDisplayModePopup;->setResult(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewDisplayModePopup;->finish()V

    goto/16 :goto_10

    .line 242
    :pswitch_e7
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewDisplayModePopup;->setResult(I)V

    .line 243
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewDisplayModePopup;->finish()V

    goto/16 :goto_10

    .line 174
    nop

    :pswitch_data_f0
    .packed-switch 0x7f1001e4
        :pswitch_11
        :pswitch_2e
        :pswitch_4b
        :pswitch_10
        :pswitch_68
        :pswitch_98
        :pswitch_b6
        :pswitch_d4
        :pswitch_e7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0xf3

    const/16 v5, 0x7d

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 84
    .local v0, lpWindow:Landroid/view/WindowManager$LayoutParams;
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 85
    const/high16 v3, 0x3f00

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 86
    const v3, 0x10a0005

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 88
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewDisplayModePopup;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 90
    const v3, 0x7f0400a0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewDisplayModePopup;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewDisplayModePopup;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mContext:Landroid/content/Context;

    .line 94
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    .line 96
    .local v2, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgSelector:I

    .line 97
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getFontColor()I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontSelector:I

    .line 99
    const/4 v3, 0x3

    new-array v3, v3, [I

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v8

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v7

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v9

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontColor:[I

    .line 103
    const/4 v3, 0x3

    new-array v3, v3, [I

    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v8

    const/16 v4, 0xa

    const/16 v5, 0x1d

    const/16 v6, 0x29

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v7

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v9

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgColor:[I

    .line 107
    const v3, 0x7f1001e1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewDisplayModePopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    .local v1, mTitleText:Landroid/widget/TextView;
    const v3, 0x7f1001e3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewDisplayModePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontColortext:Landroid/widget/TextView;

    .line 109
    const v3, 0x7f1001e7

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewDisplayModePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgColortext:Landroid/widget/TextView;

    .line 110
    const v3, 0x7f1001e2

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewDisplayModePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mViewText:Landroid/widget/TextView;

    .line 112
    const v3, 0x7f1001eb

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewDisplayModePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBtnOK:Landroid/widget/Button;

    .line 113
    const v3, 0x7f1001ec

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewDisplayModePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBtnCancel:Landroid/widget/Button;

    .line 115
    const v3, 0x7f0801e7

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontColortext:Landroid/widget/TextView;

    const v4, 0x7f0801ec

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgColortext:Landroid/widget/TextView;

    const v4, 0x7f0801ed

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mViewText:Landroid/widget/TextView;

    const v4, 0x7f0801ee

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBtnOK:Landroid/widget/Button;

    const v4, 0x7f080042

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 121
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBtnCancel:Landroid/widget/Button;

    const v4, 0x7f080043

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 123
    const v3, 0x7f1001e4

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewDisplayModePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontBlackImg:Landroid/widget/ImageView;

    .line 124
    const v3, 0x7f1001e5

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewDisplayModePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontGrayImg:Landroid/widget/ImageView;

    .line 125
    const v3, 0x7f1001e6

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewDisplayModePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontWhiteImg:Landroid/widget/ImageView;

    .line 126
    const v3, 0x7f1001e8

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewDisplayModePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgWhiteImg:Landroid/widget/ImageView;

    .line 127
    const v3, 0x7f1001e9

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewDisplayModePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgNavyImg:Landroid/widget/ImageView;

    .line 128
    const v3, 0x7f1001ea

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewDisplayModePopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgBlackImg:Landroid/widget/ImageView;

    .line 130
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mViewText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgColor:[I

    iget v5, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgSelector:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 131
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mViewText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontColor:[I

    iget v5, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontSelector:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgSelector:I

    if-nez v3, :cond_18c

    .line 134
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgWhiteImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 135
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mViewText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020252

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :cond_15a
    :goto_15a
    iget v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontSelector:I

    if-nez v3, :cond_1a0

    .line 144
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontBlackImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 151
    :cond_163
    :goto_163
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontBlackImg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontGrayImg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontWhiteImg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgWhiteImg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgNavyImg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgBlackImg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBtnOK:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void

    .line 137
    :cond_18c
    iget v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgSelector:I

    if-ne v3, v7, :cond_196

    .line 138
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgNavyImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_15a

    .line 139
    :cond_196
    iget v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgSelector:I

    if-ne v3, v9, :cond_15a

    .line 140
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mBgBlackImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_15a

    .line 145
    :cond_1a0
    iget v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontSelector:I

    if-ne v3, v7, :cond_1aa

    .line 146
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontGrayImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_163

    .line 147
    :cond_1aa
    iget v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontSelector:I

    if-ne v3, v9, :cond_163

    .line 148
    iget-object v3, p0, Lcom/android/email/activity/MessageViewDisplayModePopup;->mFontWhiteImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_163
.end method
