.class public Lcom/sprint/dsa/diagnostics/PowerModeDialog;
.super Landroid/app/Dialog;
.source "PowerModeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;,
        Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;

.field private mParameters:Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method protected static onOrOff(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "value"

    .prologue
    .line 128
    const v2, 0x7f0800c1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, on:Ljava/lang/String;
    const v2, 0x7f0800c2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, off:Ljava/lang/String;
    if-eqz p1, :cond_11

    .end local v1           #on:Ljava/lang/String;
    :goto_10
    return-object v1

    .restart local v1       #on:Ljava/lang/String;
    :cond_11
    move-object v1, v0

    goto :goto_10
.end method

.method public static open(Landroid/content/Context;Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;)Lcom/sprint/dsa/diagnostics/PowerModeDialog;
    .registers 18
    .parameter "context"
    .parameter "parameters"
    .parameter "callback"

    .prologue
    .line 25
    new-instance v4, Lcom/sprint/dsa/diagnostics/PowerModeDialog;

    invoke-direct {v4, p0}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;-><init>(Landroid/content/Context;)V

    .line 27
    .local v4, dialog:Lcom/sprint/dsa/diagnostics/PowerModeDialog;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->setCancelable(Z)V

    .line 28
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->requestWindowFeature(I)Z

    .line 32
    const v11, 0x7f03000c

    invoke-virtual {v4, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->setContentView(I)V

    .line 35
    const v11, 0x7f0b002c

    invoke-virtual {v4, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 36
    .local v9, txtShort:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;->title:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const v11, 0x7f0b002d

    invoke-virtual {v4, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 39
    .local v8, txtLong:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;->description:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v11, 0x7f0b0039

    invoke-virtual {v4, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 43
    .local v1, btnApply:Landroid/widget/Button;
    new-instance v11, Lcom/sprint/dsa/diagnostics/PowerModeDialog$1;

    invoke-direct {v11, v4}, Lcom/sprint/dsa/diagnostics/PowerModeDialog$1;-><init>(Lcom/sprint/dsa/diagnostics/PowerModeDialog;)V

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v11, 0x7f0b002a

    invoke-virtual {v4, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 49
    .local v2, btnCancel:Landroid/widget/Button;
    new-instance v11, Lcom/sprint/dsa/diagnostics/PowerModeDialog$2;

    invoke-direct {v11, v4}, Lcom/sprint/dsa/diagnostics/PowerModeDialog$2;-><init>(Lcom/sprint/dsa/diagnostics/PowerModeDialog;)V

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;->config:Lcom/sprint/dsa/diagnostics/PowerConfig;

    .line 56
    .local v3, config:Lcom/sprint/dsa/diagnostics/PowerConfig;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;->oldConfig:Lcom/sprint/dsa/diagnostics/PowerConfig;

    .line 59
    .local v5, oldConfig:Lcom/sprint/dsa/diagnostics/PowerConfig;
    const/4 v10, 0x0

    .line 60
    .local v10, value:Ljava/lang/String;
    const/4 v7, 0x0

    .line 61
    .local v7, text:Ljava/lang/String;
    iget-boolean v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    iget-boolean v12, v5, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    if-eq v11, v12, :cond_82

    .line 62
    iget-boolean v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->wifiEnabled:Z

    invoke-static {p0, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->onOrOff(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v10

    .line 63
    const v11, 0x7f0800c3

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 64
    const v11, 0x7f0b0032

    invoke-static {v4, v11, v7}, Lcom/sprint/dsa/view/ViewHelper;->setText(Landroid/app/Dialog;ILjava/lang/String;)Landroid/widget/TextView;

    .line 66
    :cond_82
    iget-boolean v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    iget-boolean v12, v5, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    if-eq v11, v12, :cond_a1

    .line 67
    iget-boolean v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->bluetoothEnabled:Z

    invoke-static {p0, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->onOrOff(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v10

    .line 68
    const v11, 0x7f0800c4

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 69
    const v11, 0x7f0b0033

    invoke-static {v4, v11, v7}, Lcom/sprint/dsa/view/ViewHelper;->setText(Landroid/app/Dialog;ILjava/lang/String;)Landroid/widget/TextView;

    .line 75
    :cond_a1
    iget-boolean v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->syncEnabled:Z

    iget-boolean v12, v5, Lcom/sprint/dsa/diagnostics/PowerConfig;->syncEnabled:Z

    if-eq v11, v12, :cond_c0

    .line 76
    iget-boolean v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->syncEnabled:Z

    invoke-static {p0, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->onOrOff(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v10

    .line 77
    const v11, 0x7f0800c5

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 78
    const v11, 0x7f0b0031

    invoke-static {v4, v11, v7}, Lcom/sprint/dsa/view/ViewHelper;->setText(Landroid/app/Dialog;ILjava/lang/String;)Landroid/widget/TextView;

    .line 80
    :cond_c0
    iget v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenBrightness:I

    iget v12, v5, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenBrightness:I

    if-eq v11, v12, :cond_df

    .line 81
    iget v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenBrightness:I

    invoke-static {v11}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getBrightnessString(I)Ljava/lang/String;

    move-result-object v10

    .line 82
    const v11, 0x7f0800c6

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 83
    const v11, 0x7f0b002f

    invoke-static {v4, v11, v7}, Lcom/sprint/dsa/view/ViewHelper;->setText(Landroid/app/Dialog;ILjava/lang/String;)Landroid/widget/TextView;

    .line 85
    :cond_df
    iget-wide v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenTimeout:J

    iget-wide v13, v5, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenTimeout:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_100

    .line 86
    iget-wide v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->screenTimeout:J

    invoke-static {v11, v12}, Lcom/sprint/dsa/diagnostics/ScreenDiagnostic;->getTimeoutString(J)Ljava/lang/String;

    move-result-object v10

    .line 87
    const v11, 0x7f0800c7

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 88
    const v11, 0x7f0b0030

    invoke-static {v4, v11, v7}, Lcom/sprint/dsa/view/ViewHelper;->setText(Landroid/app/Dialog;ILjava/lang/String;)Landroid/widget/TextView;

    .line 91
    :cond_100
    const/4 v6, 0x0

    .line 93
    .local v6, showManualLabel:Z
    iget-boolean v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->wimaxEnabled:Z

    iget-boolean v12, v5, Lcom/sprint/dsa/diagnostics/PowerConfig;->wimaxEnabled:Z

    if-eq v11, v12, :cond_121

    .line 94
    const/4 v6, 0x1

    .line 95
    iget-boolean v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->wimaxEnabled:Z

    invoke-static {p0, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->onOrOff(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v10

    .line 96
    const v11, 0x7f0800c8

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 97
    const v11, 0x7f0b0036

    invoke-static {v4, v11, v7}, Lcom/sprint/dsa/view/ViewHelper;->setText(Landroid/app/Dialog;ILjava/lang/String;)Landroid/widget/TextView;

    .line 99
    :cond_121
    iget-boolean v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    iget-boolean v12, v5, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    if-eq v11, v12, :cond_141

    .line 100
    const/4 v6, 0x1

    .line 101
    iget-boolean v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->gpsEnabled:Z

    invoke-static {p0, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->onOrOff(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v10

    .line 102
    const v11, 0x7f0800c9

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 103
    const v11, 0x7f0b0037

    invoke-static {v4, v11, v7}, Lcom/sprint/dsa/view/ViewHelper;->setText(Landroid/app/Dialog;ILjava/lang/String;)Landroid/widget/TextView;

    .line 105
    :cond_141
    iget-boolean v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->roamingEnabled:Z

    iget-boolean v12, v5, Lcom/sprint/dsa/diagnostics/PowerConfig;->roamingEnabled:Z

    if-eq v11, v12, :cond_161

    .line 106
    const/4 v6, 0x1

    .line 107
    iget-boolean v11, v3, Lcom/sprint/dsa/diagnostics/PowerConfig;->roamingEnabled:Z

    invoke-static {p0, v11}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->onOrOff(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v10

    .line 108
    const v11, 0x7f0800ca

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 109
    const v11, 0x7f0b0038

    invoke-static {v4, v11, v7}, Lcom/sprint/dsa/view/ViewHelper;->setText(Landroid/app/Dialog;ILjava/lang/String;)Landroid/widget/TextView;

    .line 112
    :cond_161
    if-eqz v6, :cond_170

    .line 113
    const v11, 0x7f0800ba

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 114
    const v11, 0x7f0b0034

    invoke-static {v4, v11, v7}, Lcom/sprint/dsa/view/ViewHelper;->setText(Landroid/app/Dialog;ILjava/lang/String;)Landroid/widget/TextView;

    .line 118
    :cond_170
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->mParameters:Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;

    .line 119
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->mCallback:Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;

    .line 122
    invoke-virtual {v4}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->show()V

    .line 124
    return-object v4
.end method


# virtual methods
.method public onApply()V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->mCallback:Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;

    if-eqz v0, :cond_d

    .line 136
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->mCallback:Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;

    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->mParameters:Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;

    iget-object v1, v1, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Parameters;->config:Lcom/sprint/dsa/diagnostics/PowerConfig;

    invoke-interface {v0, v1}, Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;->onApply(Lcom/sprint/dsa/diagnostics/PowerConfig;)V

    .line 138
    :cond_d
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->dismiss()V

    .line 139
    return-void
.end method

.method public onCancel()V
    .registers 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/sprint/dsa/diagnostics/PowerModeDialog;->dismiss()V

    .line 143
    return-void
.end method
