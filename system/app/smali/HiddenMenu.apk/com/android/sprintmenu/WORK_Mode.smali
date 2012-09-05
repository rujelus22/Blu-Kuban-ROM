.class public Lcom/android/sprintmenu/WORK_Mode;
.super Landroid/app/Activity;
.source "WORK_Mode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cdma_mode:Landroid/widget/RadioButton;

.field private default_mode:Landroid/widget/RadioButton;

.field private mSprintExtension:Lcom/sprint/internal/SystemProperties;

.field radio_listener:Landroid/view/View$OnClickListener;

.field private wimax_cdma_mode:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/WORK_Mode;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    .line 27
    new-instance v0, Lcom/android/sprintmenu/WORK_Mode$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/WORK_Mode$1;-><init>(Lcom/android/sprintmenu/WORK_Mode;)V

    iput-object v0, p0, Lcom/android/sprintmenu/WORK_Mode;->radio_listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sprintmenu/WORK_Mode;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/WORK_Mode;->setDefaultMode(I)V

    return-void
.end method

.method private defaultSelection()V
    .registers 7

    .prologue
    .line 72
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 73
    .local v2, selectedMode:Ljava/lang/String;
    const/4 v1, 0x0

    .line 78
    .local v1, mode:I
    if-eqz v2, :cond_c

    .line 79
    :try_start_8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 81
    :cond_c
    packed-switch v1, :pswitch_data_42

    .line 100
    :goto_f
    return-void

    .line 83
    :pswitch_10
    iget-object v3, p0, Lcom/android/sprintmenu/WORK_Mode;->default_mode:Landroid/widget/RadioButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_f

    .line 92
    :catch_17
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "WORK_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 86
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :pswitch_33
    :try_start_33
    iget-object v3, p0, Lcom/android/sprintmenu/WORK_Mode;->cdma_mode:Landroid/widget/RadioButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_f

    .line 89
    :pswitch_3a
    iget-object v3, p0, Lcom/android/sprintmenu/WORK_Mode;->wimax_cdma_mode:Landroid/widget/RadioButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_40} :catch_17

    goto :goto_f

    .line 81
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_10
        :pswitch_33
        :pswitch_3a
    .end packed-switch
.end method

.method private setDefaultMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 59
    const-string v0, "WORK_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 114
    :goto_7
    return-void

    .line 106
    :pswitch_8
    const-string v0, "WORK_MODE"

    const-string v1, "cancel BTN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v0, "Cancel!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 104
    nop

    :pswitch_data_1e
    .packed-switch 0x7f070003
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const-string v1, "WORK_MODE"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/WORK_Mode;->setContentView(I)V

    .line 123
    new-instance v1, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v1, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/sprintmenu/WORK_Mode;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    .line 125
    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/WORK_Mode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/sprintmenu/WORK_Mode;->default_mode:Landroid/widget/RadioButton;

    .line 126
    const v1, 0x7f070032

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/WORK_Mode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/sprintmenu/WORK_Mode;->cdma_mode:Landroid/widget/RadioButton;

    .line 127
    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/WORK_Mode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/sprintmenu/WORK_Mode;->wimax_cdma_mode:Landroid/widget/RadioButton;

    .line 129
    iget-object v1, p0, Lcom/android/sprintmenu/WORK_Mode;->default_mode:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/sprintmenu/WORK_Mode;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/android/sprintmenu/WORK_Mode;->cdma_mode:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/sprintmenu/WORK_Mode;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/sprintmenu/WORK_Mode;->wimax_cdma_mode:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/sprintmenu/WORK_Mode;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/WORK_Mode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-direct {p0}, Lcom/android/sprintmenu/WORK_Mode;->defaultSelection()V

    .line 138
    return-void
.end method
