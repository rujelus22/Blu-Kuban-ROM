.class public abstract Lcom/infraware/common/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static alertMessageId:I

.field public static alertTitleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 570
    sput v0, Lcom/infraware/common/util/Utils;->alertTitleId:I

    .line 571
    sput v0, Lcom/infraware/common/util/Utils;->alertMessageId:I

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static CheckNumber(C)Z
    .registers 2
    .parameter "check"

    .prologue
    .line 882
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x3a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected static GetNumber(Ljava/lang/String;I)I
    .registers 8
    .parameter "str"
    .parameter "nStartIndex"

    .prologue
    .line 886
    const/4 v2, 0x0

    .line 887
    .local v2, nNum:I
    const/4 v3, -0x1

    .local v3, nStart:I
    const/4 v1, -0x1

    .line 888
    .local v1, nEnd:I
    move v0, p1

    .local v0, n:I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_19

    .line 900
    :goto_a
    if-lez v3, :cond_18

    if-lez v1, :cond_18

    .line 902
    add-int/lit8 v1, v1, 0x1

    .line 903
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 904
    .local v4, strNum:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 907
    .end local v4           #strNum:Ljava/lang/String;
    :cond_18
    return v2

    .line 890
    :cond_19
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/infraware/common/util/Utils;->CheckNumber(C)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 892
    const/4 v5, -0x1

    if-ne v3, v5, :cond_27

    .line 893
    move v3, v0

    .line 894
    :cond_27
    move v1, v0

    .line 888
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 896
    :cond_2b
    if-lez v3, :cond_28

    goto :goto_a
.end method

.method protected static GetNumberLastPos(Ljava/lang/String;I)I
    .registers 7
    .parameter "str"
    .parameter "nStartIndex"

    .prologue
    .line 911
    move v2, p1

    .line 912
    .local v2, nNum:I
    const/4 v3, -0x1

    .local v3, nStart:I
    const/4 v1, -0x1

    .line 913
    .local v1, nEnd:I
    move v0, p1

    .local v0, n:I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_10

    .line 925
    :goto_a
    if-lez v3, :cond_f

    if-lez v1, :cond_f

    .line 926
    move v2, v1

    .line 928
    :cond_f
    return v2

    .line 915
    :cond_10
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/infraware/common/util/Utils;->CheckNumber(C)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 917
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1e

    .line 918
    move v3, v0

    .line 919
    :cond_1e
    move v1, v0

    .line 913
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 921
    :cond_22
    if-lez v3, :cond_1f

    goto :goto_a
.end method

.method public static GetSystemFontSize(Landroid/content/Context;)I
    .registers 7
    .parameter "context"

    .prologue
    .line 813
    const/16 v2, 0x14

    .line 814
    .local v2, nFontSize:I
    const/high16 v1, 0x3f80

    .line 815
    .local v1, fontScale:F
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 816
    .local v3, osVer:Ljava/lang/String;
    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 818
    const/16 v2, 0x11

    .line 820
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "font_scale"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    :try_end_19
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_10 .. :try_end_19} :catch_1e

    move-result v1

    .line 827
    :cond_1a
    :goto_1a
    int-to-float v4, v2

    mul-float/2addr v4, v1

    float-to-int v4, v4

    return v4

    .line 821
    :catch_1e
    move-exception v0

    .line 823
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1a
.end method

.method public static NaturalOrderComparator(Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 833
    move-object v2, p0

    .line 834
    .local v2, cmp1:Ljava/lang/String;
    move-object v3, p1

    .line 836
    .local v3, cmp2:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 837
    .local v6, nLength:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 838
    .local v7, nMinLen:I
    const/4 v8, 0x0

    .line 840
    .local v8, nNumber:I
    :goto_1b
    if-lt v8, v7, :cond_35

    .line 862
    :cond_1d
    if-ne v8, v7, :cond_82

    if-eq v6, v7, :cond_82

    .line 864
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-le v11, v12, :cond_6a

    .line 866
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-ne v11, v12, :cond_74

    .line 867
    const/4 v11, -0x1

    .line 878
    :goto_34
    return v11

    .line 842
    :cond_35
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 843
    .local v0, chr1:C
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 844
    .local v1, chr2:C
    invoke-static {v0}, Lcom/infraware/common/util/Utils;->CheckNumber(C)Z

    move-result v11

    if-eqz v11, :cond_65

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->CheckNumber(C)Z

    move-result v11

    if-eqz v11, :cond_65

    .line 846
    invoke-static {v2, v8}, Lcom/infraware/common/util/Utils;->GetNumber(Ljava/lang/String;I)I

    move-result v4

    .line 847
    .local v4, n1:I
    invoke-static {v3, v8}, Lcom/infraware/common/util/Utils;->GetNumber(Ljava/lang/String;I)I

    move-result v5

    .line 848
    .local v5, n2:I
    invoke-static {v2, v8}, Lcom/infraware/common/util/Utils;->GetNumberLastPos(Ljava/lang/String;I)I

    move-result v9

    .line 849
    .local v9, nPos1:I
    invoke-static {v3, v8}, Lcom/infraware/common/util/Utils;->GetNumberLastPos(Ljava/lang/String;I)I

    move-result v10

    .line 850
    .local v10, nPos2:I
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 852
    if-eq v4, v5, :cond_67

    .line 855
    if-ge v4, v5, :cond_63

    const/4 v11, -0x1

    goto :goto_34

    :cond_63
    const/4 v11, 0x1

    goto :goto_34

    .line 858
    .end local v4           #n1:I
    .end local v5           #n2:I
    .end local v9           #nPos1:I
    .end local v10           #nPos2:I
    :cond_65
    if-ne v0, v1, :cond_1d

    .line 840
    :cond_67
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    .line 871
    .end local v0           #chr1:C
    .end local v1           #chr2:C
    :cond_6a
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-ne v11, v12, :cond_74

    .line 872
    const/4 v11, 0x1

    goto :goto_34

    .line 875
    :cond_74
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_80

    const/4 v11, -0x1

    goto :goto_34

    :cond_80
    const/4 v11, 0x1

    goto :goto_34

    .line 878
    :cond_82
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    goto :goto_34
.end method

.method public static dipToPx(Landroid/content/Context;F)F
    .registers 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 679
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static getANSICharSet(I)Ljava/lang/String;
    .registers 3
    .parameter "locale"

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, charSet:Ljava/lang/String;
    packed-switch p0, :pswitch_data_90

    .line 305
    :pswitch_4
    :try_start_4
    sget-object v1, Lcom/infraware/common/define/CMModelDefine;->default_char_set:Ljava/lang/String;

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/infraware/common/define/CMModelDefine;->default_char_set:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 307
    sget-object v1, Lcom/infraware/common/define/CMModelDefine;->default_char_set:Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 308
    sget-object v0, Lcom/infraware/common/define/CMModelDefine;->default_char_set:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_4 .. :try_end_1a} :catch_8d

    .line 314
    :cond_1a
    :goto_1a
    if-nez v0, :cond_24

    .line 315
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_24
    :goto_24
    return-object v0

    .line 222
    :pswitch_25
    new-instance v0, Ljava/lang/String;

    .end local v0           #charSet:Ljava/lang/String;
    const-string v1, "windows-932"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 223
    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_24

    .line 225
    :pswitch_2d
    new-instance v0, Ljava/lang/String;

    .end local v0           #charSet:Ljava/lang/String;
    const-string v1, "windows-936"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 226
    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_24

    .line 228
    :pswitch_35
    new-instance v0, Ljava/lang/String;

    .end local v0           #charSet:Ljava/lang/String;
    const-string v1, "windows-949"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 229
    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_24

    .line 232
    :pswitch_3d
    new-instance v0, Ljava/lang/String;

    .end local v0           #charSet:Ljava/lang/String;
    const-string v1, "windows-950"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_24

    .line 242
    :pswitch_45
    new-instance v0, Ljava/lang/String;

    .end local v0           #charSet:Ljava/lang/String;
    const-string v1, "windows-950"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 243
    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_24

    .line 249
    :pswitch_4d
    new-instance v0, Ljava/lang/String;

    .end local v0           #charSet:Ljava/lang/String;
    const-string v1, "windows-1251"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 250
    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_24

    .line 273
    :pswitch_55
    new-instance v0, Ljava/lang/String;

    .end local v0           #charSet:Ljava/lang/String;
    const-string v1, "windows-1252"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 274
    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_24

    .line 276
    :pswitch_5d
    new-instance v0, Ljava/lang/String;

    .end local v0           #charSet:Ljava/lang/String;
    const-string v1, "windows-1253"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 277
    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_24

    .line 279
    :pswitch_65
    new-instance v0, Ljava/lang/String;

    .end local v0           #charSet:Ljava/lang/String;
    const-string v1, "windows-1254"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_24

    .line 283
    :pswitch_6d
    new-instance v0, Ljava/lang/String;

    .end local v0           #charSet:Ljava/lang/String;
    const-string v1, "windows-1255"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 284
    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_24

    .line 288
    :pswitch_75
    new-instance v0, Ljava/lang/String;

    .end local v0           #charSet:Ljava/lang/String;
    const-string v1, "windows-1256"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 289
    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_24

    .line 293
    :pswitch_7d
    new-instance v0, Ljava/lang/String;

    .end local v0           #charSet:Ljava/lang/String;
    const-string v1, "windows-1257"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 294
    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_24

    .line 296
    :pswitch_85
    new-instance v0, Ljava/lang/String;

    .end local v0           #charSet:Ljava/lang/String;
    const-string v1, "windows-1258"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 297
    .restart local v0       #charSet:Ljava/lang/String;
    goto :goto_24

    .line 311
    :catch_8d
    move-exception v1

    goto :goto_1a

    .line 219
    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_35
        :pswitch_4d
        :pswitch_45
        :pswitch_45
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_5d
        :pswitch_45
        :pswitch_55
        :pswitch_55
        :pswitch_4d
        :pswitch_55
        :pswitch_45
        :pswitch_55
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_55
        :pswitch_55
        :pswitch_65
        :pswitch_4d
        :pswitch_75
        :pswitch_6d
        :pswitch_2d
        :pswitch_3d
        :pswitch_3d
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_4
        :pswitch_55
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_4d
        :pswitch_25
        :pswitch_4d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_85
        :pswitch_6d
        :pswitch_4
        :pswitch_55
        :pswitch_55
        :pswitch_75
        :pswitch_4
        :pswitch_55
        :pswitch_75
    .end packed-switch
.end method

.method public static getCurrentLocaleType(Landroid/content/res/Resources;)I
    .registers 2
    .parameter "res"

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static getDensityDpi(Landroid/app/Activity;)I
    .registers 3
    .parameter "activity"

    .prologue
    .line 704
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 705
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 706
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v1
.end method

.method public static getDensityDpiForEvEngine(Landroid/app/Activity;)I
    .registers 4
    .parameter "activity"

    .prologue
    .line 710
    const/16 v0, 0xc8

    .line 712
    .local v0, dpi:I
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->getDensityDpi(Landroid/app/Activity;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f54cccd

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 714
    return v0
.end method

.method public static getLocaleType(Ljava/util/Locale;)I
    .registers 6
    .parameter "locale"

    .prologue
    .line 53
    const/16 v0, 0x22

    .line 54
    .local v0, nLocale:I
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, strLocaleCode:Ljava/lang/String;
    const/4 v0, 0x0

    .line 59
    if-eqz v2, :cond_18

    .line 61
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, strKey:Ljava/lang/String;
    const-string v3, "ko"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_19

    .line 65
    const/4 v0, 0x1

    .line 214
    .end local v1           #strKey:Ljava/lang/String;
    :cond_18
    :goto_18
    return v0

    .line 67
    .restart local v1       #strKey:Ljava/lang/String;
    :cond_19
    const-string v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3a

    .line 69
    const-string v3, "zh_TW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2c

    .line 70
    const/16 v0, 0x1d

    goto :goto_18

    .line 71
    :cond_2c
    const-string v3, "zh_HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_37

    .line 72
    const/16 v0, 0x1e

    goto :goto_18

    .line 74
    :cond_37
    const/16 v0, 0x1c

    goto :goto_18

    .line 76
    :cond_3a
    const-string v3, "pt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_50

    .line 78
    const-string v3, "pt_BR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4d

    .line 79
    const/16 v0, 0x1f

    goto :goto_18

    .line 81
    :cond_4d
    const/16 v0, 0x11

    goto :goto_18

    .line 83
    :cond_50
    const-string v3, "es"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_71

    .line 85
    const-string v3, "es_MX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_63

    .line 86
    const/16 v0, 0x20

    goto :goto_18

    .line 87
    :cond_63
    const-string v3, "es_SA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6e

    .line 88
    const/16 v0, 0x38

    goto :goto_18

    .line 90
    :cond_6e
    const/16 v0, 0x16

    goto :goto_18

    .line 92
    :cond_71
    const-string v3, "fr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9f

    .line 94
    const-string v3, "fr_CA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_84

    .line 95
    const/16 v0, 0x21

    goto :goto_18

    .line 96
    :cond_84
    const-string v3, "fr_CH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8f

    .line 97
    const/16 v0, 0x27

    goto :goto_18

    .line 98
    :cond_8f
    const-string v3, "fr_BE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9b

    .line 99
    const/16 v0, 0x28

    goto/16 :goto_18

    .line 101
    :cond_9b
    const/16 v0, 0x8

    goto/16 :goto_18

    .line 103
    :cond_9f
    const-string v3, "nl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b6

    .line 105
    const-string v3, "nl_BE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b3

    .line 106
    const/16 v0, 0x23

    goto/16 :goto_18

    .line 108
    :cond_b3
    const/4 v0, 0x6

    goto/16 :goto_18

    .line 110
    :cond_b6
    const-string v3, "de"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_ce

    .line 112
    const-string v3, "de_CH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_ca

    .line 113
    const/16 v0, 0x29

    goto/16 :goto_18

    .line 115
    :cond_ca
    const/16 v0, 0x9

    goto/16 :goto_18

    .line 117
    :cond_ce
    const-string v3, "it"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e6

    .line 119
    const-string v3, "it_CH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e2

    .line 120
    const/16 v0, 0x2a

    goto/16 :goto_18

    .line 122
    :cond_e2
    const/16 v0, 0xd

    goto/16 :goto_18

    .line 124
    :cond_e6
    const-string v3, "ru"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_fe

    .line 126
    const-string v3, "ru_IL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_fa

    .line 127
    const/16 v0, 0x2b

    goto/16 :goto_18

    .line 129
    :cond_fa
    const/16 v0, 0x19

    goto/16 :goto_18

    .line 131
    :cond_fe
    const-string v3, "en"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_136

    .line 133
    const-string v3, "en_US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_112

    .line 134
    const/16 v0, 0x22

    goto/16 :goto_18

    .line 135
    :cond_112
    const-string v3, "en_AU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_11e

    .line 136
    const/16 v0, 0x24

    goto/16 :goto_18

    .line 137
    :cond_11e
    const-string v3, "en_CA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_12a

    .line 138
    const/16 v0, 0x25

    goto/16 :goto_18

    .line 139
    :cond_12a
    const-string v3, "en_IE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_18

    .line 140
    const/16 v0, 0x26

    goto/16 :goto_18

    .line 142
    :cond_136
    const-string v3, "ja"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_142

    .line 143
    const/16 v0, 0x2c

    goto/16 :goto_18

    .line 144
    :cond_142
    const-string v3, "bg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_14d

    .line 145
    const/4 v0, 0x2

    goto/16 :goto_18

    .line 146
    :cond_14d
    const-string v3, "hr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_158

    .line 147
    const/4 v0, 0x3

    goto/16 :goto_18

    .line 148
    :cond_158
    const-string v3, "cs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_163

    .line 149
    const/4 v0, 0x4

    goto/16 :goto_18

    .line 150
    :cond_163
    const-string v3, "da"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_16e

    .line 151
    const/4 v0, 0x5

    goto/16 :goto_18

    .line 152
    :cond_16e
    const-string v3, "fi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_179

    .line 153
    const/4 v0, 0x7

    goto/16 :goto_18

    .line 154
    :cond_179
    const-string v3, "el_GR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_185

    .line 155
    const/16 v0, 0xa

    goto/16 :goto_18

    .line 156
    :cond_185
    const-string v3, "hu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_191

    .line 157
    const/16 v0, 0xb

    goto/16 :goto_18

    .line 158
    :cond_191
    const-string v3, "is"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_19d

    .line 159
    const/16 v0, 0xc

    goto/16 :goto_18

    .line 160
    :cond_19d
    const-string v3, "mk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1a9

    .line 161
    const/16 v0, 0xe

    goto/16 :goto_18

    .line 162
    :cond_1a9
    const-string v3, "no"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1b5

    .line 163
    const/16 v0, 0xf

    goto/16 :goto_18

    .line 164
    :cond_1b5
    const-string v3, "pl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1c1

    .line 165
    const/16 v0, 0x10

    goto/16 :goto_18

    .line 166
    :cond_1c1
    const-string v3, "sr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1cd

    .line 167
    const/16 v0, 0x13

    goto/16 :goto_18

    .line 168
    :cond_1cd
    const-string v3, "sk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1d9

    .line 169
    const/16 v0, 0x14

    goto/16 :goto_18

    .line 170
    :cond_1d9
    const-string v3, "sl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1e5

    .line 171
    const/16 v0, 0x15

    goto/16 :goto_18

    .line 172
    :cond_1e5
    const-string v3, "sv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1f1

    .line 173
    const/16 v0, 0x17

    goto/16 :goto_18

    .line 174
    :cond_1f1
    const-string v3, "tr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1fd

    .line 175
    const/16 v0, 0x18

    goto/16 :goto_18

    .line 176
    :cond_1fd
    const-string v3, "ar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_209

    .line 177
    const/16 v0, 0x1a

    goto/16 :goto_18

    .line 178
    :cond_209
    const-string v3, "iw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_215

    .line 179
    const/16 v0, 0x1b

    goto/16 :goto_18

    .line 180
    :cond_215
    const-string v3, "kk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_221

    .line 181
    const/16 v0, 0x2d

    goto/16 :goto_18

    .line 182
    :cond_221
    const-string v3, "lt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_22d

    .line 183
    const/16 v0, 0x2e

    goto/16 :goto_18

    .line 184
    :cond_22d
    const-string v3, "lv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_239

    .line 185
    const/16 v0, 0x2f

    goto/16 :goto_18

    .line 186
    :cond_239
    const-string v3, "et"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_245

    .line 187
    const/16 v0, 0x30

    goto/16 :goto_18

    .line 188
    :cond_245
    const-string v3, "vi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_251

    .line 189
    const/16 v0, 0x31

    goto/16 :goto_18

    .line 190
    :cond_251
    const-string v3, "he"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_25d

    .line 191
    const/16 v0, 0x32

    goto/16 :goto_18

    .line 192
    :cond_25d
    const-string v3, "th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_269

    .line 193
    const/16 v0, 0x33

    goto/16 :goto_18

    .line 194
    :cond_269
    const-string v3, "in"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_279

    const-string v3, "id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_27d

    .line 195
    :cond_279
    const/16 v0, 0x34

    goto/16 :goto_18

    .line 196
    :cond_27d
    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_289

    .line 197
    const/16 v0, 0x35

    goto/16 :goto_18

    .line 198
    :cond_289
    const-string v3, "fa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_295

    .line 199
    const/16 v0, 0x36

    goto/16 :goto_18

    .line 200
    :cond_295
    const-string v3, "uk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2a1

    .line 201
    const/16 v0, 0x37

    goto/16 :goto_18

    .line 202
    :cond_2a1
    const-string v3, "ro"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2ad

    .line 203
    const/16 v0, 0x12

    goto/16 :goto_18

    .line 204
    :cond_2ad
    const-string v3, "ur"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_18

    .line 205
    const/16 v0, 0x39

    goto/16 :goto_18
.end method

.method public static getMimeInfo(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/infraware/common/define/CMDefine$MimeInfo;
    .registers 15
    .parameter "resolver"
    .parameter "fileName"
    .parameter "mediaType"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 412
    const/4 v8, 0x0

    .line 413
    .local v8, info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    const/4 v6, 0x0

    .line 415
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 418
    .local v7, index:I
    packed-switch p2, :pswitch_data_1da

    .line 520
    :cond_8
    if-eqz v6, :cond_13

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_13
    :goto_13
    move-object v9, v10

    .line 524
    :goto_14
    return-object v9

    .line 421
    :pswitch_15
    :try_start_15
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_data = \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 422
    if-eqz v6, :cond_8

    .line 424
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 425
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 427
    :cond_41
    if-eq v7, v11, :cond_8

    .line 429
    new-instance v9, Lcom/infraware/common/define/CMDefine$MimeInfo;

    invoke-direct {v9, p1}, Lcom/infraware/common/define/CMDefine$MimeInfo;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_15 .. :try_end_48} :catchall_1c6
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_48} :catch_1b8

    .line 430
    .end local v8           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .local v9, info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    :try_start_48
    iput v7, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->id:I

    .line 431
    const/4 v0, 0x1

    iput v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaType:I

    .line 432
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    .line 433
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaUri:Landroid/net/Uri;

    .line 434
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, v7

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->contentUri:Landroid/net/Uri;

    .line 436
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 437
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catchall {:try_start_48 .. :try_end_6f} :catchall_1d3
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6f} :catch_1d6

    .line 520
    :cond_6f
    if-eqz v6, :cond_7a

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7a
    move-object v8, v9

    .line 439
    .end local v9           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .restart local v8       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    goto :goto_14

    .line 444
    :pswitch_7c
    :try_start_7c
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_data = \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 445
    if-eqz v6, :cond_8

    .line 447
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 448
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 450
    :cond_a8
    if-eq v7, v11, :cond_8

    .line 452
    new-instance v9, Lcom/infraware/common/define/CMDefine$MimeInfo;

    invoke-direct {v9, p1}, Lcom/infraware/common/define/CMDefine$MimeInfo;-><init>(Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_7c .. :try_end_af} :catchall_1c6
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_af} :catch_1b8

    .line 453
    .end local v8           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .restart local v9       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    :try_start_af
    iput v7, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->id:I

    .line 454
    const/4 v0, 0x2

    iput v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaType:I

    .line 455
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    .line 456
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaUri:Landroid/net/Uri;

    .line 457
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, v7

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->contentUri:Landroid/net/Uri;

    .line 459
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_d6
    .catchall {:try_start_af .. :try_end_d6} :catchall_1d3
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_d6} :catch_1d6

    .line 520
    :cond_d6
    if-eqz v6, :cond_e1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e1
    move-object v8, v9

    .line 462
    .end local v9           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .restart local v8       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    goto/16 :goto_14

    .line 467
    :pswitch_e4
    :try_start_e4
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_data = \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 468
    if-eqz v6, :cond_8

    .line 470
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 471
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 473
    :cond_110
    if-eq v7, v11, :cond_8

    .line 475
    new-instance v9, Lcom/infraware/common/define/CMDefine$MimeInfo;

    invoke-direct {v9, p1}, Lcom/infraware/common/define/CMDefine$MimeInfo;-><init>(Ljava/lang/String;)V
    :try_end_117
    .catchall {:try_start_e4 .. :try_end_117} :catchall_1c6
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_117} :catch_1b8

    .line 476
    .end local v8           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .restart local v9       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    :try_start_117
    iput v7, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->id:I

    .line 477
    const/4 v0, 0x3

    iput v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaType:I

    .line 478
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    .line 479
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaUri:Landroid/net/Uri;

    .line 480
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, v7

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->contentUri:Landroid/net/Uri;

    .line 482
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13e

    .line 483
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_13e
    .catchall {:try_start_117 .. :try_end_13e} :catchall_1d3
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_13e} :catch_1d6

    .line 520
    :cond_13e
    if-eqz v6, :cond_149

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_149

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_149
    move-object v8, v9

    .line 485
    .end local v9           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .restart local v8       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    goto/16 :goto_14

    .line 490
    :pswitch_14c
    :try_start_14c
    sget-object v0, Lcom/infraware/common/define/CMModelDefine;->DocumentsURI:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 493
    sget-object v1, Lcom/infraware/common/define/CMModelDefine;->DocumentsURI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_data = \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 494
    if-eqz v6, :cond_8

    .line 496
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 497
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 499
    :cond_17c
    if-eq v7, v11, :cond_8

    .line 501
    new-instance v9, Lcom/infraware/common/define/CMDefine$MimeInfo;

    invoke-direct {v9, p1}, Lcom/infraware/common/define/CMDefine$MimeInfo;-><init>(Ljava/lang/String;)V
    :try_end_183
    .catchall {:try_start_14c .. :try_end_183} :catchall_1c6
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_183} :catch_1b8

    .line 502
    .end local v8           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .restart local v9       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    :try_start_183
    iput v7, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->id:I

    .line 503
    const/4 v0, 0x4

    iput v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaType:I

    .line 504
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    .line 505
    sget-object v0, Lcom/infraware/common/define/CMModelDefine;->DocumentsURI:Landroid/net/Uri;

    iput-object v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaUri:Landroid/net/Uri;

    .line 506
    sget-object v0, Lcom/infraware/common/define/CMModelDefine;->DocumentsURI:Landroid/net/Uri;

    int-to-long v1, v7

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/infraware/common/define/CMDefine$MimeInfo;->contentUri:Landroid/net/Uri;

    .line 508
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1aa

    .line 509
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1aa
    .catchall {:try_start_183 .. :try_end_1aa} :catchall_1d3
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_1aa} :catch_1d6

    .line 520
    :cond_1aa
    if-eqz v6, :cond_1b5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1b5

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1b5
    move-object v8, v9

    .line 511
    .end local v9           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .restart local v8       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    goto/16 :goto_14

    .line 517
    :catch_1b8
    move-exception v0

    .line 520
    :goto_1b9
    if-eqz v6, :cond_13

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_13

    .line 519
    :catchall_1c6
    move-exception v0

    .line 520
    :goto_1c7
    if-eqz v6, :cond_1d2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1d2

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_1d2
    throw v0

    .line 519
    .end local v8           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .restart local v9       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    :catchall_1d3
    move-exception v0

    move-object v8, v9

    .end local v9           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .restart local v8       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    goto :goto_1c7

    .line 517
    .end local v8           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .restart local v9       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    :catch_1d6
    move-exception v0

    move-object v8, v9

    .end local v9           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .restart local v8       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    goto :goto_1b9

    .line 418
    nop

    :pswitch_data_1da
    .packed-switch 0x1
        :pswitch_15
        :pswitch_7c
        :pswitch_e4
        :pswitch_14c
    .end packed-switch
.end method

.method public static getMimeInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/infraware/common/define/CMDefine$MimeInfo;
    .registers 10
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 329
    const/4 v3, 0x0

    .line 330
    .local v3, info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    invoke-static {}, Lcom/infraware/filemanager/porting/DRM;->getInstance()Lcom/infraware/filemanager/porting/DRM;

    move-result-object v0

    .line 332
    .local v0, drm:Lcom/infraware/filemanager/porting/DRM;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 334
    .local v5, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x1

    invoke-static {v5, p1, v7}, Lcom/infraware/common/util/Utils;->getMimeInfo(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/infraware/common/define/CMDefine$MimeInfo;

    move-result-object v3

    .line 335
    if-eqz v3, :cond_12

    move-object v4, v3

    .line 375
    .end local v3           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .local v4, info:Ljava/lang/Object;
    :goto_11
    return-object v4

    .line 338
    .end local v4           #info:Ljava/lang/Object;
    .restart local v3       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    :cond_12
    const/4 v7, 0x2

    invoke-static {v5, p1, v7}, Lcom/infraware/common/util/Utils;->getMimeInfo(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/infraware/common/define/CMDefine$MimeInfo;

    move-result-object v3

    .line 339
    if-eqz v3, :cond_1b

    move-object v4, v3

    .line 340
    .restart local v4       #info:Ljava/lang/Object;
    goto :goto_11

    .line 342
    .end local v4           #info:Ljava/lang/Object;
    :cond_1b
    const/4 v7, 0x3

    invoke-static {v5, p1, v7}, Lcom/infraware/common/util/Utils;->getMimeInfo(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/infraware/common/define/CMDefine$MimeInfo;

    move-result-object v3

    .line 343
    if-eqz v3, :cond_24

    move-object v4, v3

    .line 344
    .restart local v4       #info:Ljava/lang/Object;
    goto :goto_11

    .line 346
    .end local v4           #info:Ljava/lang/Object;
    :cond_24
    sget-object v7, Lcom/infraware/common/define/CMModelDefine;->DocumentsURI:Landroid/net/Uri;

    if-eqz v7, :cond_31

    .line 348
    const/4 v7, 0x4

    invoke-static {v5, p1, v7}, Lcom/infraware/common/util/Utils;->getMimeInfo(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/infraware/common/define/CMDefine$MimeInfo;

    move-result-object v3

    .line 349
    if-eqz v3, :cond_31

    move-object v4, v3

    .line 350
    .restart local v4       #info:Ljava/lang/Object;
    goto :goto_11

    .line 353
    .end local v4           #info:Ljava/lang/Object;
    :cond_31
    if-eqz v0, :cond_52

    invoke-virtual {v0, p1, p0}, Lcom/infraware/filemanager/porting/DRM;->isDRM(Ljava/lang/String;Landroid/content/Context;)I

    move-result v7

    if-lez v7, :cond_52

    .line 355
    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/porting/DRM;->getContentType(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/infraware/filemanager/porting/DRM;->getDrmContentJudge(I)I

    move-result v6

    .line 356
    .local v6, right:I
    if-nez v6, :cond_45

    move-object v4, v3

    .line 358
    .restart local v4       #info:Ljava/lang/Object;
    goto :goto_11

    .line 360
    .end local v4           #info:Ljava/lang/Object;
    :cond_45
    new-instance v3, Lcom/infraware/common/define/CMDefine$MimeInfo;

    .end local v3           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    invoke-direct {v3, p1}, Lcom/infraware/common/define/CMDefine$MimeInfo;-><init>(Ljava/lang/String;)V

    .line 361
    .restart local v3       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/porting/DRM;->getContentMimeTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    move-object v4, v3

    .line 362
    .restart local v4       #info:Ljava/lang/Object;
    goto :goto_11

    .line 365
    .end local v4           #info:Ljava/lang/Object;
    .end local v6           #right:I
    :cond_52
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 367
    .local v2, idx_ext:I
    if-gez v2, :cond_69

    .line 368
    const-string v1, ""

    .line 372
    .local v1, ext:Ljava/lang/String;
    :goto_5c
    new-instance v3, Lcom/infraware/common/define/CMDefine$MimeInfo;

    .end local v3           #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    invoke-direct {v3, p1}, Lcom/infraware/common/define/CMDefine$MimeInfo;-><init>(Ljava/lang/String;)V

    .line 373
    .restart local v3       #info:Lcom/infraware/common/define/CMDefine$MimeInfo;
    invoke-static {p0, v1}, Lcom/infraware/common/util/Utils;->getMimeTypeInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    move-object v4, v3

    .line 375
    .restart local v4       #info:Ljava/lang/Object;
    goto :goto_11

    .line 370
    .end local v1           #ext:Ljava/lang/String;
    .end local v4           #info:Ljava/lang/Object;
    :cond_69
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #ext:Ljava/lang/String;
    goto :goto_5c
.end method

.method public static getMimeTypeInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "ext"

    .prologue
    .line 380
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, type:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08030e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "- FV03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2f

    .line 382
    if-nez v0, :cond_7d

    .line 383
    const-string v1, "mp2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 384
    const-string v0, "audio/mpeg"

    .line 407
    :cond_2f
    :goto_2f
    return-object v0

    .line 385
    :cond_30
    const-string v1, "mkv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 386
    const-string v0, "video/mkv"

    goto :goto_2f

    .line 387
    :cond_3b
    const-string v1, "m4v"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 388
    const-string v0, "video/x-m4v"

    goto :goto_2f

    .line 389
    :cond_46
    const-string v1, "flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 390
    const-string v0, "video/flv"

    goto :goto_2f

    .line 391
    :cond_51
    const-string v1, "vts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 392
    const-string v0, "text/x-vtodo"

    goto :goto_2f

    .line 393
    :cond_5c
    const-string v1, "ics"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 394
    const-string v0, "text/x-vCalendar"

    goto :goto_2f

    .line 395
    :cond_67
    const-string v1, "webm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 396
    const-string v0, "video/webm"

    goto :goto_2f

    .line 397
    :cond_72
    const-string v1, "vnt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 398
    const-string v0, "text/x-vnote"

    goto :goto_2f

    .line 399
    :cond_7d
    const-string v1, "text/richtext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 400
    const-string v1, "rtx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 401
    const-string v0, "audio/midi"

    goto :goto_2f

    .line 402
    :cond_90
    const-string v1, "text/calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 403
    const-string v1, "ics"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 404
    const-string v0, "text/x-vCalendar"

    goto :goto_2f
.end method

.method public static getUnknownIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 11
    .parameter "context"
    .parameter "fileName"
    .parameter "drmMime"

    .prologue
    const/4 v5, 0x0

    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08030e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "- FV03"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_22

    .line 531
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 533
    .local v2, idx_ext:I
    if-gez v2, :cond_31

    .line 534
    const-string v1, ""

    .line 539
    .end local v2           #idx_ext:I
    :cond_22
    :goto_22
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v3, intent:Landroid/content/Intent;
    invoke-static {p0, p1}, Lcom/infraware/common/util/Utils;->getMimeInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/infraware/common/define/CMDefine$MimeInfo;

    move-result-object v4

    .line 541
    .local v4, mimeInfo:Lcom/infraware/common/define/CMDefine$MimeInfo;
    if-nez v4, :cond_37

    move-object v3, v5

    .line 567
    .end local v3           #intent:Landroid/content/Intent;
    :cond_30
    :goto_30
    return-object v3

    .line 536
    .end local v4           #mimeInfo:Lcom/infraware/common/define/CMDefine$MimeInfo;
    .restart local v2       #idx_ext:I
    :cond_31
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_22

    .line 544
    .end local v2           #idx_ext:I
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #mimeInfo:Lcom/infraware/common/define/CMDefine$MimeInfo;
    :cond_37
    iget v6, v4, Lcom/infraware/common/define/CMDefine$MimeInfo;->mediaType:I

    if-eqz v6, :cond_4d

    .line 546
    if-eqz p2, :cond_45

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_45

    .line 547
    iput-object p2, v4, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    .line 555
    :cond_45
    iget-object v5, v4, Lcom/infraware/common/define/CMDefine$MimeInfo;->contentUri:Landroid/net/Uri;

    iget-object v6, v4, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_30

    .line 561
    :cond_4d
    iget-object v6, v4, Lcom/infraware/common/define/CMDefine$MimeInfo;->fileUri:Landroid/net/Uri;

    iget-object v7, v4, Lcom/infraware/common/define/CMDefine$MimeInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x1

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 563
    .local v0, Apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_30

    move-object v3, v5

    .line 564
    goto :goto_30
.end method

.method public static getVersionCode(Landroid/app/Activity;)Ljava/lang/String;
    .registers 6
    .parameter "activity"

    .prologue
    .line 774
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 777
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_14

    move-result-object v1

    .line 781
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_13
    return-object v3

    .line 778
    :catch_14
    move-exception v0

    .line 779
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "UnKnown"

    goto :goto_13
.end method

.method public static getVersionName(Landroid/app/Activity;)Ljava/lang/String;
    .registers 6
    .parameter "activity"

    .prologue
    .line 763
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 766
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_10

    move-result-object v1

    .line 770
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_f
    return-object v3

    .line 767
    :catch_10
    move-exception v0

    .line 768
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "UnKnown"

    goto :goto_f
.end method

.method public static haveHardWareKeyboard(Landroid/content/Context;)Z
    .registers 7
    .parameter "context"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 750
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 752
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08030e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, vendor:Ljava/lang/String;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v3, v5, :cond_26

    const-string v3, "- FV03"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_26

    .line 759
    :cond_25
    :goto_25
    return v2

    .line 756
    :cond_26
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v3, v5, :cond_2e

    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v3, v2, :cond_25

    .line 759
    :cond_2e
    const/4 v2, 0x0

    goto :goto_25
.end method

.method public static haveSdcard()Z
    .registers 2

    .prologue
    .line 795
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, stateSd:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 798
    const/4 v1, 0x1

    .line 800
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isICS()Z
    .registers 3

    .prologue
    .line 744
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 745
    .local v1, osVer:Ljava/lang/String;
    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 746
    .local v0, bResult:Z
    return v0
.end method

.method public static isInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 786
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_b

    .line 787
    const/4 v1, 0x1

    .line 790
    :goto_a
    return v1

    .line 788
    :catch_b
    move-exception v0

    .line 790
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_a
.end method

.method public static isLocalStorage(I)Z
    .registers 3
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 805
    if-eq p0, v0, :cond_6

    const/4 v1, -0x1

    if-ne p0, v1, :cond_7

    .line 808
    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 667
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 668
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_18

    .line 670
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 671
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 672
    const/4 v2, 0x1

    .line 675
    .end local v1           #ni:Landroid/net/NetworkInfo;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public static isRtolLocaleType(I)Z
    .registers 2
    .parameter "locale"

    .prologue
    .line 727
    sparse-switch p0, :sswitch_data_8

    .line 737
    const/4 v0, 0x0

    .line 739
    .local v0, isRtolLocale:Z
    :goto_4
    return v0

    .line 734
    .end local v0           #isRtolLocale:Z
    :sswitch_5
    const/4 v0, 0x1

    .line 735
    .restart local v0       #isRtolLocale:Z
    goto :goto_4

    .line 727
    nop

    :sswitch_data_8
    .sparse-switch
        0x1a -> :sswitch_5
        0x1b -> :sswitch_5
        0x32 -> :sswitch_5
        0x36 -> :sswitch_5
        0x39 -> :sswitch_5
    .end sparse-switch
.end method

.method public static isRtolLocaleType(Landroid/content/res/Resources;)Z
    .registers 3
    .parameter "res"

    .prologue
    .line 719
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 720
    .local v0, locale:I
    invoke-static {v0}, Lcom/infraware/common/util/Utils;->isRtolLocaleType(I)Z

    move-result v1

    return v1
.end method

.method public static isSystemKey(I)Z
    .registers 2
    .parameter "keyCode"

    .prologue
    .line 684
    sparse-switch p0, :sswitch_data_8

    .line 693
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 690
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 684
    nop

    :sswitch_data_8
    .sparse-switch
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x4f -> :sswitch_5
        0x5b -> :sswitch_5
    .end sparse-switch
.end method

.method public static onChangeScreen(Landroid/view/Window;I)V
    .registers 5
    .parameter "window"
    .parameter "nType"

    .prologue
    const/16 v2, 0x800

    const/16 v1, 0x400

    .line 654
    const/4 v0, 0x2

    if-ne p1, v0, :cond_15

    .line 656
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isShowLandscapeStatusbar()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 657
    invoke-virtual {p0, v2, v1}, Landroid/view/Window;->setFlags(II)V

    .line 663
    :goto_10
    return-void

    .line 659
    :cond_11
    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_10

    .line 662
    :cond_15
    invoke-virtual {p0, v2, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_10
.end method

.method public static onLocaleChanged(Landroid/content/Context;Landroid/app/AlertDialog;)V
    .registers 6
    .parameter "context"
    .parameter "dialog"

    .prologue
    .line 575
    if-nez p1, :cond_3

    .line 602
    :cond_2
    :goto_2
    return-void

    .line 578
    :cond_3
    instance-of v2, p1, Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 581
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 584
    sget v2, Lcom/infraware/common/util/Utils;->alertTitleId:I

    if-gtz v2, :cond_19

    sget v2, Lcom/infraware/common/util/Utils;->alertMessageId:I

    if-gtz v2, :cond_19

    .line 586
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_2

    .line 590
    :cond_19
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 591
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_26

    .line 592
    const v2, 0x7f080043

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 594
    :cond_26
    sget v2, Lcom/infraware/common/util/Utils;->alertTitleId:I

    if-lez v2, :cond_2f

    .line 595
    sget v2, Lcom/infraware/common/util/Utils;->alertTitleId:I

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 597
    :cond_2f
    sget v2, Lcom/infraware/common/util/Utils;->alertMessageId:I

    if-lez v2, :cond_2

    .line 599
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/infraware/common/util/Utils;->alertMessageId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public static playKeyClickSoundEffect(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 698
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 699
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_e

    .line 700
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 701
    :cond_e
    return-void
.end method

.method public static showAlert(Landroid/content/Context;II)Landroid/app/AlertDialog;
    .registers 7
    .parameter "context"
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 606
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 608
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-lez p1, :cond_a

    .line 610
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 614
    :cond_a
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 615
    const v2, 0x7f080043

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 617
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 618
    .local v1, dialog:Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 619
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 621
    sput p1, Lcom/infraware/common/util/Utils;->alertTitleId:I

    .line 622
    sput p2, Lcom/infraware/common/util/Utils;->alertMessageId:I

    .line 624
    return-object v1
.end method

.method public static showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .registers 8
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 629
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 631
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    .line 633
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 637
    :cond_11
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1c

    .line 638
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 640
    :cond_1c
    const v2, 0x7f080043

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 642
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 643
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 644
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 646
    sput v4, Lcom/infraware/common/util/Utils;->alertTitleId:I

    .line 647
    sput v4, Lcom/infraware/common/util/Utils;->alertMessageId:I

    .line 649
    return-object v1
.end method
