.class public Lcom/sprint/dsa/widget/TestConnectionView;
.super Landroid/widget/RelativeLayout;
.source "TestConnectionView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SprintZone_TestConnectionView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataOk:Z

.field private mDataTested:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIs4GCapable:Z

.field private mIvDataDot3G:Landroid/widget/ImageView;

.field private mIvDataDot4G:Landroid/widget/ImageView;

.field private mIvVoiceDot:Landroid/widget/ImageView;

.field private mVoiceOk:Z

.field private mVoiceTested:Z

.field private networkIs4g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataTested:Z

    .line 31
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceTested:Z

    .line 32
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataOk:Z

    .line 33
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceOk:Z

    .line 34
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->networkIs4g:Z

    .line 35
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIs4GCapable:Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/widget/TestConnectionView;->initView(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataTested:Z

    .line 31
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceTested:Z

    .line 32
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataOk:Z

    .line 33
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceOk:Z

    .line 34
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->networkIs4g:Z

    .line 35
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIs4GCapable:Z

    .line 46
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/widget/TestConnectionView;->initView(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataTested:Z

    .line 31
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceTested:Z

    .line 32
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataOk:Z

    .line 33
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceOk:Z

    .line 34
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->networkIs4g:Z

    .line 35
    iput-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIs4GCapable:Z

    .line 41
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/widget/TestConnectionView;->initView(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public initView(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/16 v4, 0x8

    .line 63
    iput-object p1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    iget-object v1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030006

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, connView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/widget/TestConnectionView;->addView(Landroid/view/View;)V

    .line 69
    const v1, 0x7f0b000f

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIvVoiceDot:Landroid/widget/ImageView;

    .line 70
    const v1, 0x7f0b0012

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIvDataDot3G:Landroid/widget/ImageView;

    .line 71
    const v1, 0x7f0b0015

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIvDataDot4G:Landroid/widget/ImageView;

    .line 72
    iget-object v1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIvDataDot4G:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    const v1, 0x7f0b0016

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/widget/TestConnectionView;->resetView(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public is4G()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->networkIs4g:Z

    return v0
.end method

.method public isDataOk()Z
    .registers 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataOk:Z

    return v0
.end method

.method public isDataTested()Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataTested:Z

    return v0
.end method

.method public isVoiceOk()Z
    .registers 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceOk:Z

    return v0
.end method

.method public isVoiceTested()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceTested:Z

    return v0
.end method

.method public resetView(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const v4, 0x7f020017

    const/4 v3, 0x0

    .line 82
    const/4 v1, 0x1

    .line 84
    .local v1, networkType:I
    iget-boolean v2, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIs4GCapable:Z

    if-eqz v2, :cond_19

    .line 89
    :try_start_9
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 90
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_3b

    move-result v1

    .line 103
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_19
    :goto_19
    iget-object v2, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIvVoiceDot:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v2, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIvDataDot3G:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iput-boolean v3, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataTested:Z

    .line 107
    iput-boolean v3, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceTested:Z

    .line 108
    iput-boolean v3, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataOk:Z

    .line 109
    iput-boolean v3, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceOk:Z

    .line 110
    const v2, 0x7f0b0004

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080051

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 111
    return-void

    .line 91
    :catch_3b
    move-exception v2

    goto :goto_19
.end method

.method public setDataOk(Z)V
    .registers 2
    .parameter "mDataOk"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataOk:Z

    .line 229
    return-void
.end method

.method public setDataTestingResult(Ljava/util/Properties;Z)V
    .registers 13
    .parameter "values"
    .parameter "success"

    .prologue
    const v5, 0x7f020003

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const v6, 0x7f0b0004

    .line 153
    iput-boolean v7, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataTested:Z

    .line 157
    if-eqz p2, :cond_d8

    .line 158
    iget-boolean v4, p0, Lcom/sprint/dsa/widget/TestConnectionView;->networkIs4g:Z

    if-eqz v4, :cond_45

    .line 159
    iget-object v4, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIvDataDot4G:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    :goto_16
    iget-boolean v4, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceOk:Z

    if-eqz v4, :cond_ca

    .line 165
    iget-boolean v4, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIs4GCapable:Z

    if-eqz v4, :cond_5a

    .line 166
    iget-object v4, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mContext:Landroid/content/Context;

    const v5, 0x7f08005a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, dataString:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/sprint/dsa/widget/TestConnectionView;->networkIs4g:Z

    if-eqz v4, :cond_4b

    .line 168
    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "4G"

    aput-object v5, v4, v8

    const-string v5, "3G"

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 172
    :goto_39
    invoke-virtual {p0, v6}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .end local v2           #dataString:Ljava/lang/String;
    :goto_42
    iput-boolean v7, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataOk:Z

    .line 225
    :goto_44
    return-void

    .line 161
    :cond_45
    iget-object v4, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIvDataDot3G:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_16

    .line 170
    .restart local v2       #dataString:Ljava/lang/String;
    :cond_4b
    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "3G"

    aput-object v5, v4, v8

    const-string v5, "4G"

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 174
    .end local v2           #dataString:Ljava/lang/String;
    :cond_5a
    iget-object v4, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mContext:Landroid/content/Context;

    .line 175
    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 176
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 179
    .local v3, networkType:I
    const-string v1, "You current data connection ("

    .line 180
    .local v1, dataStr:Ljava/lang/String;
    sparse-switch v3, :sswitch_data_10e

    .line 184
    :goto_71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 185
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ") is working correctly."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {p0, v6}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 181
    :sswitch_8e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "3G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_71

    .line 182
    :sswitch_a2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "4G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_71

    .line 183
    :sswitch_b6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "WiFi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_71

    .line 191
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #dataStr:Ljava/lang/String;
    .end local v3           #networkType:I
    :cond_ca
    invoke-virtual {p0, v6}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080053

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_42

    .line 196
    :cond_d8
    iget-boolean v4, p0, Lcom/sprint/dsa/widget/TestConnectionView;->networkIs4g:Z

    if-eqz v4, :cond_f6

    .line 197
    iget-object v4, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIvDataDot4G:Landroid/widget/ImageView;

    const v5, 0x7f020011

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    :goto_e4
    iget-boolean v4, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceOk:Z

    if-eqz v4, :cond_ff

    .line 217
    invoke-virtual {p0, v6}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f08005b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_44

    .line 199
    :cond_f6
    iget-object v4, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIvDataDot3G:Landroid/widget/ImageView;

    const v5, 0x7f020011

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e4

    .line 221
    :cond_ff
    invoke-virtual {p0, v6}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080053

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_44

    .line 180
    nop

    :sswitch_data_10e
    .sparse-switch
        0x0 -> :sswitch_8e
        0x1 -> :sswitch_b6
        0x6 -> :sswitch_a2
    .end sparse-switch
.end method

.method public setVoiceOk(Z)V
    .registers 2
    .parameter "mVoiceOk"

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceOk:Z

    .line 237
    return-void
.end method

.method public setVoiceTestingResult(ZIZ)V
    .registers 12
    .parameter "success"
    .parameter "noService"
    .parameter "noData"

    .prologue
    const v7, 0x7f020011

    const/4 v6, 0x2

    const/4 v5, 0x0

    const v4, 0x7f0b0004

    const/4 v3, 0x1

    .line 118
    iput-boolean v3, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceTested:Z

    .line 123
    if-eqz p1, :cond_5c

    .line 124
    iget-object v1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIvVoiceDot:Landroid/widget/ImageView;

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-boolean v1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIs4GCapable:Z

    if-eqz v1, :cond_4f

    .line 126
    iget-object v1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mContext:Landroid/content/Context;

    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, dataString:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->networkIs4g:Z

    if-eqz v1, :cond_40

    .line 128
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "4G"

    aput-object v2, v1, v5

    const-string v2, "3G"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_34
    invoke-virtual {p0, v4}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .end local v0           #dataString:Ljava/lang/String;
    :goto_3d
    iput-boolean v3, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mVoiceOk:Z

    .line 150
    :cond_3f
    :goto_3f
    return-void

    .line 130
    .restart local v0       #dataString:Ljava/lang/String;
    :cond_40
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "3G"

    aput-object v2, v1, v5

    const-string v2, "4G"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 134
    .end local v0           #dataString:Ljava/lang/String;
    :cond_4f
    invoke-virtual {p0, v4}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080056

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3d

    .line 139
    :cond_5c
    if-nez p2, :cond_79

    .line 140
    invoke-virtual {p0, v4}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080053

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 144
    :goto_6a
    iget-object v1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIvVoiceDot:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    if-eqz p3, :cond_3f

    .line 146
    iput-boolean v3, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mDataTested:Z

    .line 147
    iget-object v1, p0, Lcom/sprint/dsa/widget/TestConnectionView;->mIvDataDot3G:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3f

    .line 142
    :cond_79
    invoke-virtual {p0, v4}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080055

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6a
.end method
