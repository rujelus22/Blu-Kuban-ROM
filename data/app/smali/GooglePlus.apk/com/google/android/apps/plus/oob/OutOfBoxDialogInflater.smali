.class public final Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;
.super Ljava/lang/Object;
.source "OutOfBoxDialogInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater$1;
    }
.end annotation


# instance fields
.field private final mActionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;

.field private final mActivity:Landroid/support/v4/app/FragmentActivity;

.field private final mOutOfBoxView:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/ViewGroup;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Lcom/google/android/apps/plus/oob/ActionCallback;)V
    .registers 5
    .parameter "activity"
    .parameter "parent"
    .parameter "outOfBoxView"
    .parameter "actionCallback"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 49
    iput-object p2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mParent:Landroid/view/ViewGroup;

    .line 50
    iput-object p3, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mOutOfBoxView:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 51
    iput-object p4, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mActionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;

    .line 52
    return-void
.end method

.method private alertDialogTheme()Landroid/content/Context;
    .registers 3

    .prologue
    .line 67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .registers 12

    .prologue
    .line 74
    iget-object v8, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mOutOfBoxView:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDialog()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v7

    .line 75
    .local v7, oobDialog:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    invoke-direct {p0}, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->alertDialogTheme()Landroid/content/Context;

    move-result-object v3

    .line 76
    .local v3, context:Landroid/content/Context;
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 77
    .local v4, dialog:Landroid/app/Dialog;
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->hasHeader()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 78
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    :goto_1c
    const v8, 0x7f030076

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 85
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->hasText()Z

    move-result v8

    if-eqz v8, :cond_38

    .line 86
    const v8, 0x7f09006c

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 87
    .local v6, messageView:Landroid/widget/TextView;
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .end local v6           #messageView:Landroid/widget/TextView;
    :cond_38
    const v8, 0x7f090173

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 91
    .local v2, buttonPanel:Landroid/view/ViewGroup;
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getActionList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 92
    .local v0, action:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030077

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 94
    .local v1, button:Landroid/widget/Button;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_49

    .line 80
    .end local v0           #action:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .end local v1           #button:Landroid/widget/Button;
    .end local v2           #buttonPanel:Landroid/view/ViewGroup;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_74
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_1c

    .line 100
    .restart local v2       #buttonPanel:Landroid/view/ViewGroup;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_79
    return-object v4
.end method

.method private createOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 7
    .parameter "action"

    .prologue
    .line 133
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    .line 136
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    iget-object v3, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mOutOfBoxView:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getFieldList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    .line 137
    .local v1, field:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasInput()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 138
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->addInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    goto :goto_e

    .line 143
    .end local v1           #field:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    :cond_28
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    .line 145
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public inflate()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mParent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->createDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 109
    .local v0, action:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    sget-object v1, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$OutOfBoxAction$Type:[I

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_42

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mActionCallback:Lcom/google/android/apps/plus/oob/ActionCallback;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->createOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/plus/oob/ActionCallback;->sendOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V

    .line 126
    :cond_1e
    :goto_1e
    return-void

    .line 111
    :pswitch_1f
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 116
    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1e

    .line 120
    :pswitch_37
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->viewUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1e

    .line 109
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2b
        :pswitch_37
    .end packed-switch
.end method
