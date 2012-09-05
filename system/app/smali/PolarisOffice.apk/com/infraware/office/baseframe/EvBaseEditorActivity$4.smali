.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 2084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 16
    .parameter "s"

    .prologue
    .line 2093
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v10

    if-eqz v10, :cond_232

    .line 2094
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v10

    const v11, 0x7f0c000e

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 2095
    .local v9, widthEditText:Landroid/widget/EditText;
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v10

    const v11, 0x7f0c000f

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 2096
    .local v5, heightEditText:Landroid/widget/EditText;
    const/4 v8, 0x2

    .line 2097
    .local v8, width:I
    const/4 v4, 0x2

    .line 2099
    .local v4, height:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v10

    if-eqz v10, :cond_209

    .line 2100
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v10

    const v11, 0x7f0c0010

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2101
    .local v0, checkBox:Landroid/widget/CheckBox;
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v10, v10, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v7

    .line 2102
    .local v7, maxWidth:I
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v10, v10, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v6

    .line 2103
    .local v6, maxHeight:I
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_a3

    .line 2104
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    if-ge v10, v11, :cond_233

    .line 2106
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v11, v11, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v11

    mul-int/2addr v10, v11

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    div-int v7, v10, v11

    .line 2107
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v10, v10, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2108
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    mul-int/2addr v10, v7

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    div-int v6, v10, v11

    .line 2118
    :cond_a3
    :goto_a3
    invoke-virtual {v9}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v10

    if-eqz v10, :cond_156

    .line 2120
    :try_start_a9
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_b4} :catch_271

    move-result v8

    .line 2124
    :goto_b5
    if-lez v8, :cond_b9

    if-le v8, v7, :cond_106

    .line 2125
    :cond_b9
    const/4 v10, 0x2

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2126
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2127
    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2128
    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 2130
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08026e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2131
    .local v2, formattedString:Ljava/lang/String;
    if-eqz v2, :cond_106

    .line 2132
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onToastMessage(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$1(Lcom/infraware/office/baseframe/EvBaseEditorActivity;Ljava/lang/String;)V

    .line 2134
    .end local v2           #formattedString:Ljava/lang/String;
    :cond_106
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_27a

    .line 2135
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    mul-int/2addr v10, v8

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    div-int v4, v10, v11

    .line 2136
    const/4 v10, 0x2

    if-ge v4, v10, :cond_123

    .line 2137
    const/4 v4, 0x2

    .line 2138
    :cond_123
    const/4 v3, 0x0

    .line 2140
    .local v3, getHeight:I
    :try_start_124
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12f
    .catch Ljava/lang/NumberFormatException; {:try_start_124 .. :try_end_12f} :catch_276

    move-result v3

    .line 2144
    :goto_130
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    if-eqz v10, :cond_13c

    if-eq v3, v4, :cond_156

    .line 2145
    :cond_13c
    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2146
    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 2158
    .end local v3           #getHeight:I
    :cond_156
    :goto_156
    invoke-virtual {v5}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v10

    if-eqz v10, :cond_209

    .line 2160
    :try_start_15c
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_167
    .catch Ljava/lang/NumberFormatException; {:try_start_15c .. :try_end_167} :catch_28c

    move-result v4

    .line 2164
    :goto_168
    if-lez v4, :cond_16c

    if-le v4, v6, :cond_1b9

    .line 2165
    :cond_16c
    const/4 v10, 0x2

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2166
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2167
    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2168
    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 2170
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08026e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2171
    .restart local v2       #formattedString:Ljava/lang/String;
    if-eqz v2, :cond_1b9

    .line 2172
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onToastMessage(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$1(Lcom/infraware/office/baseframe/EvBaseEditorActivity;Ljava/lang/String;)V

    .line 2174
    .end local v2           #formattedString:Ljava/lang/String;
    :cond_1b9
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_295

    .line 2175
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    mul-int/2addr v10, v4

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    div-int v8, v10, v11

    .line 2176
    const/4 v10, 0x2

    if-ge v8, v10, :cond_1d6

    .line 2177
    const/4 v8, 0x2

    .line 2178
    :cond_1d6
    const/4 v3, 0x0

    .line 2180
    .restart local v3       #getHeight:I
    :try_start_1d7
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_1e2} :catch_291

    move-result v3

    .line 2184
    :goto_1e3
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    if-eqz v10, :cond_1ef

    if-eq v3, v8, :cond_209

    .line 2185
    :cond_1ef
    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2186
    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 2200
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v3           #getHeight:I
    .end local v6           #maxHeight:I
    .end local v7           #maxWidth:I
    :cond_209
    :goto_209
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    if-eqz v10, :cond_223

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    if-eqz v10, :cond_223

    const/4 v10, 0x2

    if-lt v8, v10, :cond_223

    const/4 v10, 0x2

    if-ge v4, v10, :cond_2a7

    .line 2201
    :cond_223
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2205
    .end local v4           #height:I
    .end local v5           #heightEditText:Landroid/widget/EditText;
    .end local v8           #width:I
    .end local v9           #widthEditText:Landroid/widget/EditText;
    :cond_232
    :goto_232
    return-void

    .line 2112
    .restart local v0       #checkBox:Landroid/widget/CheckBox;
    .restart local v4       #height:I
    .restart local v5       #heightEditText:Landroid/widget/EditText;
    .restart local v6       #maxHeight:I
    .restart local v7       #maxWidth:I
    .restart local v8       #width:I
    .restart local v9       #widthEditText:Landroid/widget/EditText;
    :cond_233
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v11, v11, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v11

    mul-int/2addr v10, v11

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    div-int v6, v10, v11

    .line 2113
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v10, v10, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/infraware/office/evengine/EvInterface;->IGetImageMaxSize(I)I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2114
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    mul-int/2addr v10, v6

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mImageSize:Landroid/graphics/Point;
    invoke-static {v11}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    div-int v7, v10, v11

    goto/16 :goto_a3

    .line 2121
    :catch_271
    move-exception v1

    .line 2122
    .local v1, e:Ljava/lang/NumberFormatException;
    add-int/lit8 v8, v7, 0x1

    goto/16 :goto_b5

    .line 2141
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #getHeight:I
    :catch_276
    move-exception v1

    .line 2142
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x2

    goto/16 :goto_130

    .line 2152
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #getHeight:I
    :cond_27a
    :try_start_27a
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_285
    .catch Ljava/lang/NumberFormatException; {:try_start_27a .. :try_end_285} :catch_288

    move-result v4

    goto/16 :goto_156

    .line 2153
    :catch_288
    move-exception v1

    .line 2154
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x1

    goto/16 :goto_156

    .line 2161
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_28c
    move-exception v1

    .line 2162
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    add-int/lit8 v4, v6, 0x1

    goto/16 :goto_168

    .line 2181
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #getHeight:I
    :catch_291
    move-exception v1

    .line 2182
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x2

    goto/16 :goto_1e3

    .line 2192
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #getHeight:I
    :cond_295
    :try_start_295
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2a0
    .catch Ljava/lang/NumberFormatException; {:try_start_295 .. :try_end_2a0} :catch_2a3

    move-result v8

    goto/16 :goto_209

    .line 2193
    :catch_2a3
    move-exception v1

    .line 2194
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v8, 0x1

    goto/16 :goto_209

    .line 2203
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v6           #maxHeight:I
    .end local v7           #maxWidth:I
    :cond_2a7
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$4;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_232
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2089
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2086
    return-void
.end method
