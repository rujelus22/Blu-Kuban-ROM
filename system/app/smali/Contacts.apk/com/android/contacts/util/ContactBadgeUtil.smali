.class public Lcom/android/contacts/util/ContactBadgeUtil;
.super Ljava/lang/Object;
.source "ContactBadgeUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSocialDate(Lcom/android/contacts/util/StreamItemEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 21
    .parameter "streamItem"
    .parameter "context"

    .prologue
    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/StreamItemEntry;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 45
    .local v17, statusTimestamp:Ljava/lang/Long;
    if-eqz v17, :cond_79

    .line 48
    const/high16 v7, 0x4

    .line 50
    .local v7, flags:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v18

    .line 58
    .end local v7           #flags:I
    .local v18, timestampDisplayValue:Ljava/lang/CharSequence;
    :goto_1b
    const/4 v11, 0x0

    .line 60
    .local v11, labelDisplayValue:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/StreamItemEntry;->getLabelRes()Ljava/lang/String;

    move-result-object v15

    .line 61
    .local v15, statusLabelRes:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/StreamItemEntry;->getResPackage()Ljava/lang/String;

    move-result-object v16

    .line 64
    .local v16, statusResPackage:Ljava/lang/String;
    move-object/from16 v10, v16

    .line 65
    .local v10, identiferPackage:Ljava/lang/String;
    if-eqz v15, :cond_62

    .line 67
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 70
    .local v14, resources:Landroid/content/res/Resources;
    const-string v10, "android"

    .line 82
    :goto_34
    if-eqz v14, :cond_62

    .line 83
    const-string v1, "string"

    invoke-virtual {v14, v15, v1, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 85
    .local v13, resId:I
    if-nez v13, :cond_a4

    .line 86
    const-string v1, "ContactBadgeUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact status update resource not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v13           #resId:I
    .end local v14           #resources:Landroid/content/res/Resources;
    :cond_62
    :goto_62
    if-eqz v18, :cond_a9

    if-eqz v11, :cond_a9

    .line 96
    const v1, 0x7f0a0192

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v18, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, attribution:Ljava/lang/CharSequence;
    :goto_78
    return-object v8

    .line 54
    .end local v8           #attribution:Ljava/lang/CharSequence;
    .end local v10           #identiferPackage:Ljava/lang/String;
    .end local v11           #labelDisplayValue:Ljava/lang/String;
    .end local v15           #statusLabelRes:Ljava/lang/String;
    .end local v16           #statusResPackage:Ljava/lang/String;
    .end local v18           #timestampDisplayValue:Ljava/lang/CharSequence;
    :cond_79
    const/16 v18, 0x0

    .restart local v18       #timestampDisplayValue:Ljava/lang/CharSequence;
    goto :goto_1b

    .line 72
    .restart local v10       #identiferPackage:Ljava/lang/String;
    .restart local v11       #labelDisplayValue:Ljava/lang/String;
    .restart local v15       #statusLabelRes:Ljava/lang/String;
    .restart local v16       #statusResPackage:Ljava/lang/String;
    :cond_7c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 74
    .local v12, pm:Landroid/content/pm/PackageManager;
    :try_start_80
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_85
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_85} :catch_87

    move-result-object v14

    .restart local v14       #resources:Landroid/content/res/Resources;
    goto :goto_34

    .line 75
    .end local v14           #resources:Landroid/content/res/Resources;
    :catch_87
    move-exception v9

    .line 76
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "ContactBadgeUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact status update resource package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v14, 0x0

    .restart local v14       #resources:Landroid/content/res/Resources;
    goto :goto_34

    .line 89
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12           #pm:Landroid/content/pm/PackageManager;
    .restart local v13       #resId:I
    :cond_a4
    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_62

    .line 99
    .end local v13           #resId:I
    .end local v14           #resources:Landroid/content/res/Resources;
    :cond_a9
    if-nez v18, :cond_bd

    if-eqz v11, :cond_bd

    .line 100
    const v1, 0x7f0a0191

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #attribution:Ljava/lang/CharSequence;
    goto :goto_78

    .line 103
    .end local v8           #attribution:Ljava/lang/CharSequence;
    :cond_bd
    if-eqz v18, :cond_c2

    .line 104
    move-object/from16 v8, v18

    .restart local v8       #attribution:Ljava/lang/CharSequence;
    goto :goto_78

    .line 106
    .end local v8           #attribution:Ljava/lang/CharSequence;
    :cond_c2
    const/4 v8, 0x0

    .restart local v8       #attribution:Ljava/lang/CharSequence;
    goto :goto_78
.end method

.method public static loadDefaultAvatarPhoto(Landroid/content/Context;ZZJ)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "context"
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "contactId"

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
