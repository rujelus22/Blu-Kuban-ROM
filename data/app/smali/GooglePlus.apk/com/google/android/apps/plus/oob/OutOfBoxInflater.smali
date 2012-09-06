.class public Lcom/google/android/apps/plus/oob/OutOfBoxInflater;
.super Ljava/lang/Object;
.source "OutOfBoxInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/oob/OutOfBoxInflater$2;
    }
.end annotation


# instance fields
.field private final mBottomActionBar:Lcom/google/android/apps/plus/views/BottomActionBar;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mOuterLayout:Landroid/view/ViewGroup;

.field private final mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/google/android/apps/plus/views/BottomActionBar;)V
    .registers 5
    .parameter "outerLayout"
    .parameter "viewGroup"
    .parameter "bottomActionBar"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mOuterLayout:Landroid/view/ViewGroup;

    .line 49
    iput-object p2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    .line 50
    iput-object p3, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mBottomActionBar:Lcom/google/android/apps/plus/views/BottomActionBar;

    .line 51
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    return-void
.end method

.method private addField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    .registers 6
    .parameter "field"
    .parameter "id"
    .parameter "actionCallback"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->newViewFromField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    move-result-object v0

    .line 134
    .local v0, view:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->needsCallback(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 137
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->bindToField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)V

    .line 143
    :goto_d
    invoke-virtual {v0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getChildCount()I

    move-result v1

    add-int/2addr p2, v1

    .line 144
    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->setId(I)V

    .line 146
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    return-object v0

    .line 140
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

    .line 186
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasText()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasAction()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 191
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

    .line 158
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasInput()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 159
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->newViewFromInputField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    move-result-object v0

    .line 174
    :goto_f
    return-object v0

    .line 160
    :cond_10
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasText()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d4

    iget-object v2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    goto :goto_f

    .line 163
    :cond_24
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasError()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d0

    iget-object v2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    goto :goto_f

    .line 166
    :cond_38
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ce

    iget-object v2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    goto :goto_f

    .line 169
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d2

    iget-object v2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    goto :goto_f

    .line 173
    :cond_60
    const-string v0, "OutOfBoxInflater"

    const-string v1, "Field doesn\'t have content."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private newViewFromInputField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    .registers 6
    .parameter "field"

    .prologue
    .line 203
    sget-object v1, Lcom/google/android/apps/plus/oob/OutOfBoxInflater$2;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$OutOfBoxInputField$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    .line 230
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

    .line 231
    const/4 v1, 0x0

    .line 235
    :goto_2c
    return-object v1

    .line 205
    :pswitch_2d
    const v0, 0x7f0300d5

    .line 235
    .local v0, layoutId:I
    :goto_30
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    goto :goto_2c

    .line 210
    .end local v0           #layoutId:I
    :pswitch_3c
    const v0, 0x7f0300d3

    .line 211
    .restart local v0       #layoutId:I
    goto :goto_30

    .line 215
    .end local v0           #layoutId:I
    :pswitch_40
    const v0, 0x7f0300cf

    .line 216
    .restart local v0       #layoutId:I
    goto :goto_30

    .line 220
    .end local v0           #layoutId:I
    :pswitch_44
    const v0, 0x7f0300d1

    .line 221
    .restart local v0       #layoutId:I
    goto :goto_30

    .line 225
    .end local v0           #layoutId:I
    :pswitch_48
    const v0, 0x7f0300cd

    .line 226
    .restart local v0       #layoutId:I
    goto :goto_30

    .line 203
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
    .registers 22
    .parameter "outOfBoxView"
    .parameter "actionCallback"

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->hasTitle()Z

    move-result v16

    if-eqz v16, :cond_25

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mOuterLayout:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const v17, 0x7f090044

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 66
    .local v15, textView:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getTitle()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .end local v15           #textView:Landroid/widget/TextView;
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->hasHeader()Z

    move-result v16

    if-eqz v16, :cond_41

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mOuterLayout:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const v17, 0x7f090174

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 71
    .restart local v15       #textView:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getHeader()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .end local v15           #textView:Landroid/widget/TextView;
    :cond_41
    const/4 v12, 0x0

    .line 75
    .local v12, lastTextField:Landroid/widget/EditText;
    const v13, 0x7f090006

    .line 76
    .local v13, nextId:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getFieldList()Ljava/util/List;

    move-result-object v9

    .line 77
    .local v9, fieldList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 81
    .local v8, fieldCount:I
    move v4, v8

    .line 82
    .local v4, bodyFieldCount:I
    add-int/lit8 v10, v8, -0x1

    .local v10, i:I
    :goto_50
    if-ltz v10, :cond_5e

    .line 83
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    .line 84
    .local v7, field:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasAction()Z

    move-result v16

    if-nez v16, :cond_9c

    .line 91
    .end local v7           #field:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    :cond_5e
    const/4 v10, 0x0

    :goto_5f
    if-ge v10, v4, :cond_a1

    .line 92
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    .line 93
    .restart local v7       #field:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v13, v1}, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->addField(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;ILcom/google/android/apps/plus/oob/ActionCallback;)Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    move-result-object v6

    .line 94
    .local v6, curView:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getId()I

    move-result v16

    add-int/lit8 v13, v16, 0x1

    .line 95
    invoke-virtual {v6}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getInputView()Landroid/view/View;

    move-result-object v11

    .line 96
    .local v11, inputView:Landroid/view/View;
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasInput()Z

    move-result v16

    if-eqz v16, :cond_99

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    move-result-object v16

    sget-object v17, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;->TEXT_INPUT:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_99

    move-object v12, v11

    .line 97
    check-cast v12, Landroid/widget/EditText;

    .line 98
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 91
    :cond_99
    add-int/lit8 v10, v10, 0x1

    goto :goto_5f

    .line 88
    .end local v6           #curView:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    .end local v11           #inputView:Landroid/view/View;
    :cond_9c
    add-int/lit8 v4, v4, -0x1

    .line 82
    add-int/lit8 v10, v10, -0x1

    goto :goto_50

    .line 102
    .end local v7           #field:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    :cond_a1
    if-eqz v12, :cond_aa

    .line 103
    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 106
    :cond_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mBottomActionBar:Lcom/google/android/apps/plus/views/BottomActionBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/apps/plus/views/BottomActionBar;->removeAllViews()V

    .line 107
    move v10, v4

    move v14, v13

    .end local v13           #nextId:I
    .local v14, nextId:I
    :goto_b5
    if-ge v10, v8, :cond_e9

    .line 108
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    .line 109
    .restart local v7       #field:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v3

    .line 110
    .local v3, action:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->mBottomActionBar:Lcom/google/android/apps/plus/views/BottomActionBar;

    move-object/from16 v16, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14           #nextId:I
    .restart local v13       #nextId:I
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getText()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lcom/google/android/apps/plus/oob/OutOfBoxInflater$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/oob/OutOfBoxInflater$1;-><init>(Lcom/google/android/apps/plus/oob/OutOfBoxInflater;Lcom/google/android/apps/plus/oob/ActionCallback;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v14, v1, v2}, Lcom/google/android/apps/plus/views/BottomActionBar;->addButton(ILjava/lang/String;Landroid/view/View$OnClickListener;)Lcom/google/android/apps/plus/views/ActionButton;

    move-result-object v5

    .line 119
    .local v5, button:Lcom/google/android/apps/plus/views/ActionButton;
    invoke-virtual {v5, v3}, Lcom/google/android/apps/plus/views/ActionButton;->setTag(Ljava/lang/Object;)V

    .line 107
    add-int/lit8 v10, v10, 0x1

    move v14, v13

    .end local v13           #nextId:I
    .restart local v14       #nextId:I
    goto :goto_b5

    .line 121
    .end local v3           #action:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .end local v5           #button:Lcom/google/android/apps/plus/views/ActionButton;
    .end local v7           #field:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    :cond_e9
    return-void
.end method
