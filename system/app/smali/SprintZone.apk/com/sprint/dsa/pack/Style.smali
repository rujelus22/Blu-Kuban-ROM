.class public Lcom/sprint/dsa/pack/Style;
.super Ljava/lang/Object;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/pack/Style$ViewX;
    }
.end annotation


# instance fields
.field protected attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/dsa/pack/Style;->id:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/pack/Style;->tag:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/pack/Style;->attrs:Ljava/util/Map;

    .line 19
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .registers 15
    .parameter "view"

    .prologue
    .line 41
    const-string v11, "backgroundColor"

    invoke-virtual {p0, v11}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    .local v0, backgroundColor:Ljava/lang/Integer;
    const-string v11, "gradStartColor"

    invoke-virtual {p0, v11}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 43
    .local v6, gradStartColor:Ljava/lang/Integer;
    const-string v11, "gradEndColor"

    invoke-virtual {p0, v11}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 44
    .local v4, gradEndColor:Ljava/lang/Integer;
    const-string v11, "gradOrientation"

    invoke-virtual {p0, v11}, Lcom/sprint/dsa/pack/Style;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, gradOrientation:Ljava/lang/String;
    const-string v11, "pressedColor"

    invoke-virtual {p0, v11}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 47
    .local v8, pressedColor:Ljava/lang/Integer;
    const-string v11, "selectedColor"

    invoke-virtual {p0, v11}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 48
    .local v9, selectedColor:Ljava/lang/Integer;
    const-string v11, "focusedColor"

    invoke-virtual {p0, v11}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 50
    .local v2, focusedColor:Ljava/lang/Integer;
    if-eqz v0, :cond_33

    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p1, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    :cond_33
    if-eqz v6, :cond_56

    if-eqz v4, :cond_56

    if-eqz v5, :cond_56

    .line 56
    invoke-static {v5}, Landroid/graphics/drawable/GradientDrawable$Orientation;->valueOf(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v7

    .line 57
    .local v7, or:Landroid/graphics/drawable/GradientDrawable$Orientation;
    const/4 v11, 0x2

    new-array v1, v11, [I

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v1, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v1, v11

    .line 58
    .local v1, colors:[I
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3, v7, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 59
    .local v3, grad:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .end local v1           #colors:[I
    .end local v3           #grad:Landroid/graphics/drawable/GradientDrawable;
    .end local v7           #or:Landroid/graphics/drawable/GradientDrawable$Orientation;
    :cond_56
    if-nez v8, :cond_5c

    if-nez v9, :cond_5c

    if-eqz v2, :cond_63

    .line 63
    :cond_5c
    invoke-virtual {p0}, Lcom/sprint/dsa/pack/Style;->createStateDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    .line 64
    .local v10, states:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .end local v10           #states:Landroid/graphics/drawable/StateListDrawable;
    :cond_63
    instance-of v11, p1, Landroid/widget/TextView;

    if-eqz v11, :cond_6d

    .line 68
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/pack/Style;->apply(Landroid/widget/TextView;)V

    .line 73
    :cond_6c
    :goto_6c
    return-void

    .line 70
    .restart local p1
    :cond_6d
    instance-of v11, p1, Landroid/widget/ListView;

    if-eqz v11, :cond_6c

    .line 71
    check-cast p1, Landroid/widget/ListView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/pack/Style;->apply(Landroid/widget/ListView;)V

    goto :goto_6c
.end method

.method public apply(Landroid/widget/ListView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 77
    return-void
.end method

.method public apply(Landroid/widget/TextView;)V
    .registers 16
    .parameter "view"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 81
    const-string v10, "textColor"

    invoke-virtual {p0, v10}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 82
    .local v4, textColor:Ljava/lang/Integer;
    const-string v10, "textSize"

    invoke-virtual {p0, v10}, Lcom/sprint/dsa/pack/Style;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .line 83
    .local v5, textSize:Ljava/lang/Float;
    const-string v10, "textSizeUnit"

    invoke-virtual {p0, v10}, Lcom/sprint/dsa/pack/Style;->getIntegerAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 85
    .local v6, textSizeUnit:Ljava/lang/Integer;
    const-string v10, "textStyle"

    invoke-virtual {p0, v10}, Lcom/sprint/dsa/pack/Style;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, textStyle:Ljava/lang/String;
    const-string v10, "fontFamily"

    invoke-virtual {p0, v10}, Lcom/sprint/dsa/pack/Style;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, fontFamily:Ljava/lang/String;
    const/4 v8, 0x0

    .line 88
    .local v8, typeface:Landroid/graphics/Typeface;
    const/4 v9, 0x0

    .line 90
    .local v9, typefaceStyle:Ljava/lang/Integer;
    const-string v10, "highlightColor"

    invoke-virtual {p0, v10}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 91
    .local v1, highlightColor:Ljava/lang/Integer;
    const-string v10, "hintTextColor"

    invoke-virtual {p0, v10}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 92
    .local v2, hintTextColor:Ljava/lang/Integer;
    const-string v10, "linkTextColor"

    invoke-virtual {p0, v10}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 94
    .local v3, linkTextColor:Ljava/lang/Integer;
    if-eqz v4, :cond_3d

    .line 95
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_3d
    if-eqz v5, :cond_85

    if-eqz v6, :cond_85

    .line 99
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    :cond_4c
    :goto_4c
    if-eqz v7, :cond_b7

    .line 106
    const-string v10, "normal"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8f

    .line 107
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 123
    :cond_5a
    :goto_5a
    if-nez v0, :cond_5e

    if-eqz v9, :cond_69

    .line 125
    :cond_5e
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v0, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    .line 127
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    :cond_69
    if-eqz v1, :cond_72

    .line 131
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 134
    :cond_72
    if-eqz v2, :cond_7b

    .line 135
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 138
    :cond_7b
    if-eqz v3, :cond_84

    .line 139
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 141
    :cond_84
    return-void

    .line 101
    :cond_85
    if-eqz v5, :cond_4c

    .line 102
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_4c

    .line 109
    :cond_8f
    const-string v10, "bold"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9c

    .line 110
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_5a

    .line 112
    :cond_9c
    const-string v10, "italic"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a9

    .line 113
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_5a

    .line 115
    :cond_a9
    const-string v10, "bolditalic"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5a

    .line 116
    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_5a

    .line 120
    :cond_b7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_5a
.end method

.method protected createStateDrawable()Landroid/graphics/drawable/StateListDrawable;
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 203
    const-string v10, "backgroundColor"

    invoke-virtual {p0, v10}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 204
    .local v0, backgroundColor:Ljava/lang/Integer;
    const-string v10, "pressedColor"

    invoke-virtual {p0, v10}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 205
    .local v7, pressedColor:Ljava/lang/Integer;
    const-string v10, "selectedColor"

    invoke-virtual {p0, v10}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 206
    .local v8, selectedColor:Ljava/lang/Integer;
    const-string v10, "focusedColor"

    invoke-virtual {p0, v10}, Lcom/sprint/dsa/pack/Style;->getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 208
    .local v6, focusedColor:Ljava/lang/Integer;
    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 209
    .local v1, colorBackground:I
    :goto_20
    if-eqz v7, :cond_71

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 210
    .local v3, colorPressed:I
    :goto_26
    if-eqz v6, :cond_73

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 211
    .local v2, colorFocused:I
    :goto_2c
    if-eqz v8, :cond_75

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 213
    .local v4, colorSelected:I
    :goto_32
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 214
    .local v5, d:Landroid/graphics/drawable/StateListDrawable;
    new-array v10, v12, [I

    const v11, 0x10100a7

    aput v11, v10, v9

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 215
    new-array v10, v12, [I

    const v11, 0x101009c

    aput v11, v10, v9

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 216
    new-array v10, v12, [I

    const v11, 0x10100a1

    aput v11, v10, v9

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 217
    new-array v9, v9, [I

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v9, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 219
    return-object v5

    .end local v1           #colorBackground:I
    .end local v2           #colorFocused:I
    .end local v3           #colorPressed:I
    .end local v4           #colorSelected:I
    .end local v5           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_6f
    move v1, v9

    .line 208
    goto :goto_20

    .restart local v1       #colorBackground:I
    :cond_71
    move v3, v1

    .line 209
    goto :goto_26

    .restart local v3       #colorPressed:I
    :cond_73
    move v2, v1

    .line 210
    goto :goto_2c

    .restart local v2       #colorFocused:I
    :cond_75
    move v4, v1

    .line 211
    goto :goto_32
.end method

.method public forView(Landroid/view/View;)Z
    .registers 5
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    .line 29
    iget v1, p0, Lcom/sprint/dsa/pack/Style;->id:I

    if-lez v1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-lez v1, :cond_14

    iget v1, p0, Lcom/sprint/dsa/pack/Style;->id:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_14

    .line 36
    :cond_13
    :goto_13
    return v0

    .line 33
    :cond_14
    iget-object v1, p0, Lcom/sprint/dsa/pack/Style;->tag:Ljava/lang/String;

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/sprint/dsa/pack/Style;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 36
    :cond_2a
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getAttr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sprint/dsa/pack/Style;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAttrs()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sprint/dsa/pack/Style;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public getColorAttr(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5
    .parameter "name"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/sprint/dsa/pack/Style;->attrs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 167
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_21
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 170
    :goto_29
    return-object v1

    :cond_2a
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;
    .registers 4
    .parameter "name"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/sprint/dsa/pack/Style;->attrs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 159
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 161
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getIntegerAttr(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .parameter "name"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/sprint/dsa/pack/Style;->attrs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 153
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public setAttr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/sprint/dsa/pack/Style;->attrs:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :try_start_5
    const-string v1, "id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 185
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sprint/dsa/pack/Style;->id:I

    .line 198
    :cond_13
    :goto_13
    return-void

    .line 187
    :cond_14
    const-string v1, "tag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 188
    iput-object p2, p0, Lcom/sprint/dsa/pack/Style;->tag:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_1f

    goto :goto_13

    .line 194
    :catch_1f
    move-exception v0

    .line 195
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error style name/value pair: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_13
.end method
