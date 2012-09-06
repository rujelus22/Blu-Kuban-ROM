.class public Lcom/android/inputmethod/keyboard/KeyboardId;
.super Ljava/lang/Object;
.source "KeyboardId.java"


# static fields
.field public static final F2KEY_MODE_NONE:I = 0x0

.field public static final F2KEY_MODE_SETTINGS:I = 0x1

.field public static final F2KEY_MODE_SHORTCUT_IME:I = 0x2

.field public static final F2KEY_MODE_SHORTCUT_IME_OR_SETTINGS:I = 0x3

.field public static final MODE_EMAIL:I = 0x2

.field public static final MODE_IM:I = 0x3

.field public static final MODE_NUMBER:I = 0x5

.field public static final MODE_PHONE:I = 0x4

.field public static final MODE_TEXT:I = 0x0

.field public static final MODE_URL:I = 0x1


# instance fields
.field public final mAttribute:Landroid/view/inputmethod/EditorInfo;

.field public final mClobberSettingsKey:Z

.field public final mF2KeyMode:I

.field public final mHasSettingsKey:Z

.field public final mHasShortcutKey:Z

.field private final mHashCode:I

.field public final mImeAction:I

.field public final mLocale:Ljava/util/Locale;

.field public final mMode:I

.field public final mNavigateAction:Z

.field public final mOrientation:I

.field public final mPasswordInput:Z

.field public final mShortcutKeyEnabled:Z

.field public final mWidth:I

.field public final mXmlId:I

.field public final mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/Locale;IIILandroid/view/inputmethod/EditorInfo;ZIZZZ)V
    .registers 19
    .parameter "xmlName"
    .parameter "xmlId"
    .parameter "locale"
    .parameter "orientation"
    .parameter "width"
    .parameter "mode"
    .parameter "attribute"
    .parameter "hasSettingsKey"
    .parameter "f2KeyMode"
    .parameter "clobberSettingsKey"
    .parameter "shortcutKeyEnabled"
    .parameter "hasShortcutKey"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p7, :cond_b1

    iget v2, p7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 69
    .local v2, inputType:I
    :goto_7
    if-eqz p7, :cond_b4

    iget v1, p7, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 70
    .local v1, imeOptions:I
    :goto_b
    iput-object p3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    .line 71
    iput p4, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    .line 72
    iput p5, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    .line 73
    iput p6, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    .line 74
    iput p2, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    .line 76
    invoke-static {v2}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isWebInputType(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    .line 79
    invoke-static {v2}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v3

    if-nez v3, :cond_b7

    .line 80
    invoke-static {v2}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isVisiblePasswordInputType(I)Z

    move-result v3

    if-nez v3, :cond_b7

    const/4 v3, 0x0

    .line 79
    :goto_28
    iput-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    .line 81
    iput-boolean p8, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    .line 82
    iput p9, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    .line 83
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    .line 84
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    .line 85
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    .line 88
    const v3, 0x400000ff

    and-int/2addr v3, v1

    iput v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    .line 91
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlName:Ljava/lang/String;

    .line 92
    iput-object p7, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 94
    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 95
    aput-object p3, v3, v4

    const/4 v4, 0x1

    .line 96
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 97
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 98
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 100
    iget-boolean v5, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 101
    iget-boolean v5, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 102
    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 103
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    .line 104
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    .line 105
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    .line 106
    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    .line 107
    iget v5, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 94
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHashCode:I

    .line 109
    return-void

    .line 68
    .end local v1           #imeOptions:I
    .end local v2           #inputType:I
    :cond_b1
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 69
    .restart local v2       #inputType:I
    :cond_b4
    const/4 v1, 0x0

    goto/16 :goto_b

    .line 80
    .restart local v1       #imeOptions:I
    :cond_b7
    const/4 v3, 0x1

    goto/16 :goto_28
.end method

.method private equals(Lcom/android/inputmethod/keyboard/KeyboardId;)Z
    .registers 4
    .parameter "other"

    .prologue
    .line 150
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 151
    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v0, v1, :cond_54

    .line 152
    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    if-ne v0, v1, :cond_54

    .line 153
    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    if-ne v0, v1, :cond_54

    .line 154
    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    if-ne v0, v1, :cond_54

    .line 155
    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    if-ne v0, v1, :cond_54

    .line 156
    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    if-ne v0, v1, :cond_54

    .line 157
    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    if-ne v0, v1, :cond_54

    .line 158
    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    if-ne v0, v1, :cond_54

    .line 159
    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    if-ne v0, v1, :cond_54

    .line 160
    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    if-ne v0, v1, :cond_54

    .line 161
    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    if-ne v0, v1, :cond_54

    .line 162
    iget v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    if-ne v0, v1, :cond_54

    const/4 v0, 0x1

    :goto_53
    return v0

    :cond_54
    const/4 v0, 0x0

    .line 150
    goto :goto_53
.end method

.method public static f2KeyModeName(I)Ljava/lang/String;
    .registers 2
    .parameter "f2KeyMode"

    .prologue
    .line 201
    packed-switch p0, :pswitch_data_12

    .line 206
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 202
    :pswitch_5
    const-string v0, "none"

    goto :goto_4

    .line 203
    :pswitch_8
    const-string v0, "settings"

    goto :goto_4

    .line 204
    :pswitch_b
    const-string v0, "shortcutIme"

    goto :goto_4

    .line 205
    :pswitch_e
    const-string v0, "shortcutImeOrSettings"

    goto :goto_4

    .line 201
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static modeName(I)Ljava/lang/String;
    .registers 2
    .parameter "mode"

    .prologue
    .line 189
    packed-switch p0, :pswitch_data_18

    .line 196
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 190
    :pswitch_5
    const-string v0, "text"

    goto :goto_4

    .line 191
    :pswitch_8
    const-string v0, "url"

    goto :goto_4

    .line 192
    :pswitch_b
    const-string v0, "email"

    goto :goto_4

    .line 193
    :pswitch_e
    const-string v0, "im"

    goto :goto_4

    .line 194
    :pswitch_11
    const-string v0, "phone"

    goto :goto_4

    .line 195
    :pswitch_14
    const-string v0, "number"

    goto :goto_4

    .line 189
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public cloneWithNewXml(Ljava/lang/String;I)Lcom/android/inputmethod/keyboard/KeyboardId;
    .registers 16
    .parameter "xmlName"
    .parameter "xmlId"

    .prologue
    const/4 v8, 0x0

    .line 112
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    iget v4, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    iget v5, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    iget v6, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    iget-object v7, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    move-object v1, p1

    move v2, p2

    move v9, v8

    move v10, v8

    move v11, v8

    move v12, v8

    invoke-direct/range {v0 .. v12}, Lcom/android/inputmethod/keyboard/KeyboardId;-><init>(Ljava/lang/String;ILjava/util/Locale;IIILandroid/view/inputmethod/EditorInfo;ZIZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "other"

    .prologue
    .line 146
    instance-of v0, p1, Lcom/android/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/android/inputmethod/keyboard/KeyboardId;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Lcom/android/inputmethod/keyboard/KeyboardId;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getXmlId()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHashCode:I

    return v0
.end method

.method public isAlphabetKeyboard()Z
    .registers 3

    .prologue
    .line 121
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05000c

    if-eq v0, v1, :cond_24

    .line 122
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const/high16 v1, 0x7f05

    if-eq v0, v1, :cond_24

    .line 123
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050005

    if-eq v0, v1, :cond_24

    .line 124
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050001

    if-eq v0, v1, :cond_24

    .line 125
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050012

    if-eq v0, v1, :cond_24

    const/4 v0, 0x0

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    .line 121
    goto :goto_23
.end method

.method public isNumberKeyboard()Z
    .registers 3

    .prologue
    .line 141
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isPhoneKeyboard()Z
    .registers 3

    .prologue
    .line 133
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isPhoneShiftKeyboard()Z
    .registers 3

    .prologue
    .line 137
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05000b

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSymbolsKeyboard()Z
    .registers 3

    .prologue
    .line 129
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f050028

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlId:I

    const v1, 0x7f05002b

    if-eq v0, v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 172
    const-string v1, "[%s.xml %s %s%d %s %s %s%s%s%s%s%s%s]"

    const/16 v0, 0xd

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 173
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mXmlName:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 174
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    aput-object v0, v2, v4

    const/4 v3, 0x2

    .line 175
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mOrientation:I

    if-ne v0, v4, :cond_7d

    const-string v0, "port"

    :goto_17
    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 176
    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/KeyboardId;->modeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 177
    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    invoke-static {v3}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->imeOptionsName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    .line 178
    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/KeyboardId;->f2KeyModeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x7

    .line 179
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    if-eqz v0, :cond_80

    const-string v0, " clobberSettingsKey"

    :goto_44
    aput-object v0, v2, v3

    const/16 v3, 0x8

    .line 180
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mNavigateAction:Z

    if-eqz v0, :cond_83

    const-string v0, " navigateAction"

    :goto_4e
    aput-object v0, v2, v3

    const/16 v3, 0x9

    .line 181
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    if-eqz v0, :cond_86

    const-string v0, " passwordInput"

    :goto_58
    aput-object v0, v2, v3

    const/16 v3, 0xa

    .line 182
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    if-eqz v0, :cond_89

    const-string v0, " hasSettingsKey"

    :goto_62
    aput-object v0, v2, v3

    const/16 v3, 0xb

    .line 183
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mShortcutKeyEnabled:Z

    if-eqz v0, :cond_8c

    const-string v0, " shortcutKeyEnabled"

    :goto_6c
    aput-object v0, v2, v3

    const/16 v3, 0xc

    .line 184
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasShortcutKey:Z

    if-eqz v0, :cond_8f

    const-string v0, " hasShortcutKey"

    :goto_76
    aput-object v0, v2, v3

    .line 172
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_7d
    const-string v0, "land"

    goto :goto_17

    .line 179
    :cond_80
    const-string v0, ""

    goto :goto_44

    .line 180
    :cond_83
    const-string v0, ""

    goto :goto_4e

    .line 181
    :cond_86
    const-string v0, ""

    goto :goto_58

    .line 182
    :cond_89
    const-string v0, ""

    goto :goto_62

    .line 183
    :cond_8c
    const-string v0, ""

    goto :goto_6c

    .line 184
    :cond_8f
    const-string v0, ""

    goto :goto_76
.end method
