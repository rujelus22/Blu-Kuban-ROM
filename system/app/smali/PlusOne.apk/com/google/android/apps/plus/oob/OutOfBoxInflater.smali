.class public Lcom/google/android/apps/plus/oob/OutOfBoxInflater;
.super Ljava/lang/Object;
.source "OutOfBoxInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/oob/OutOfBoxInflater$1;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mOuterLayout:Landroid/view/ViewGroup;

.field private final mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 4
    .parameter "outerLayout"
    .parameter "viewGroup"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mOuterLayout:Landroid/view/ViewGroup;

    .line 40
    iput-object p2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    .line 41
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method

.method private addField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    .registers 6
    .parameter "field"
    .parameter "id"
    .parameter "actionCallback"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->newViewFromField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    move-result-object v0

    .line 109
    .local v0, view:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->needsCallback(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 112
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V

    .line 118
    :goto_d
    invoke-virtual {v0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getChildCount()I

    move-result v1

    add-int/2addr p2, v1

    .line 119
    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->setId(I)V

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    return-object v0

    .line 115
    :cond_1b
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V

    goto :goto_d
.end method

.method private needsCallback(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Z
    .registers 4
    .parameter "field"

    .prologue
    const/4 v0, 0x1

    .line 161
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasText()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasAction()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 166
    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasInput()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getMandatory()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_1e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private newViewFromField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    .registers 6
    .parameter "field"

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasInput()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 134
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->newViewFromInputField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    move-result-object v0

    .line 149
    :goto_f
    return-object v0

    .line 135
    :cond_10
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasText()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a1

    iget-object v2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    goto :goto_f

    .line 138
    :cond_24
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasError()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03009d

    iget-object v2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    goto :goto_f

    .line 141
    :cond_38
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03009b

    iget-object v2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    goto :goto_f

    .line 144
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03009f

    iget-object v2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    goto :goto_f

    .line 148
    :cond_60
    const-string v0, "OutOfBoxInflater"

    const-string v1, "Field doesn\'t have content."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private newViewFromInputField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    .registers 6
    .parameter "field"

    .prologue
    .line 178
    sget-object v1, Lcom/google/android/apps/plus/oob/OutOfBoxInflater$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$OutOfBoxInputField$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    .line 205
    const-string v1, "OutOfBoxInflater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input field has unsupported type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, 0x0

    .line 210
    :goto_2c
    return-object v1

    .line 180
    :pswitch_2d
    const v0, 0x7f0300a2

    .line 210
    .local v0, layoutId:I
    :goto_30
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    goto :goto_2c

    .line 185
    .end local v0           #layoutId:I
    :pswitch_3c
    const v0, 0x7f0300a0

    .line 186
    .restart local v0       #layoutId:I
    goto :goto_30

    .line 190
    .end local v0           #layoutId:I
    :pswitch_40
    const v0, 0x7f03009c

    .line 191
    .restart local v0       #layoutId:I
    goto :goto_30

    .line 195
    .end local v0           #layoutId:I
    :pswitch_44
    const v0, 0x7f03009e

    .line 196
    .restart local v0       #layoutId:I
    goto :goto_30

    .line 200
    .end local v0           #layoutId:I
    :pswitch_48
    const v0, 0x7f03009a

    .line 201
    .restart local v0       #layoutId:I
    goto :goto_30

    .line 178
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_3c
        :pswitch_40
        :pswitch_44
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method public inflateFromResponse(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Lcom/google/android/apps/plus/oob/ActionCallback;)V
    .registers 12
    .parameter "outOfBoxView"
    .parameter "actionCallback"

    .prologue
    .line 51
    iget-object v7, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 53
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->hasTitle()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 54
    iget-object v7, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mOuterLayout:Landroid/view/ViewGroup;

    const v8, 0x7f0d0033

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 55
    .local v6, textView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_1d
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->hasHeader()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 59
    iget-object v7, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mOuterLayout:Landroid/view/ViewGroup;

    const v8, 0x7f0d00fc

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 60
    .restart local v6       #textView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getHeader()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_35
    const/4 v4, 0x0

    .line 64
    .local v4, lastTextField:Landroid/widget/EditText;
    const/high16 v5, 0x7f0d

    .line 65
    .local v5, nextId:I
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getFieldList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_40
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    .line 66
    .local v1, field:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    invoke-direct {p0, v1, v5, p2}, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->addField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    move-result-object v0

    .line 67
    .local v0, curView:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getId()I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    .line 68
    invoke-virtual {v0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getInputView()Landroid/view/View;

    move-result-object v3

    .line 69
    .local v3, inputView:Landroid/view/View;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasInput()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    move-result-object v7

    sget-object v8, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    if-ne v7, v8, :cond_40

    move-object v4, v3

    .line 70
    check-cast v4, Landroid/widget/EditText;

    .line 71
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_40

    .line 75
    .end local v0           #curView:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    .end local v1           #field:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    .end local v3           #inputView:Landroid/view/View;
    :cond_74
    if-eqz v4, :cond_7a

    .line 76
    const/4 v7, 0x6

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 78
    :cond_7a
    return-void
.end method
