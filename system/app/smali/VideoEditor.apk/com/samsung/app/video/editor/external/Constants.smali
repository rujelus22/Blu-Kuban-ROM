.class public Lcom/samsung/app/video/editor/external/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/video/editor/external/Constants$AudioVideoStrip;,
        Lcom/samsung/app/video/editor/external/Constants$ElementType;,
        Lcom/samsung/app/video/editor/external/Constants$ImageFormat;,
        Lcom/samsung/app/video/editor/external/Constants$ImageSize;,
        Lcom/samsung/app/video/editor/external/Constants$OperationMaintype;,
        Lcom/samsung/app/video/editor/external/Constants$OperationSubType;,
        Lcom/samsung/app/video/editor/external/Constants$Priority;,
        Lcom/samsung/app/video/editor/external/Constants$SplitReplace;,
        Lcom/samsung/app/video/editor/external/Constants$Theme;,
        Lcom/samsung/app/video/editor/external/Constants$VTError;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThemeInt(Ljava/lang/String;)I
    .registers 3
    .parameter "themeName"

    .prologue
    const/4 v0, -0x1

    .line 242
    if-nez p0, :cond_4

    .line 261
    :cond_3
    :goto_3
    return v0

    .line 245
    :cond_4
    const-string v1, "NoTheme"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 246
    const/4 v0, 0x0

    goto :goto_3

    .line 247
    :cond_e
    const-string v1, "Conference"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 248
    const/4 v0, 0x1

    goto :goto_3

    .line 249
    :cond_18
    const-string v1, "HomeVideo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 250
    const/4 v0, 0x2

    goto :goto_3

    .line 251
    :cond_22
    const-string v1, "Movie"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 252
    const/4 v0, 0x3

    goto :goto_3

    .line 253
    :cond_2c
    const-string v1, "Party"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 254
    const/4 v0, 0x4

    goto :goto_3

    .line 255
    :cond_36
    const-string v1, "Stage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 256
    const/4 v0, 0x5

    goto :goto_3

    .line 257
    :cond_40
    const-string v1, "Travel"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    const/4 v0, 0x6

    goto :goto_3
.end method

.method public static getThemeString(I)Ljava/lang/String;
    .registers 3
    .parameter "theme"

    .prologue
    .line 266
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_9

    .line 267
    const-string v0, ""

    .line 286
    :goto_8
    return-object v0

    .line 269
    :cond_9
    packed-switch p0, :pswitch_data_80

    .line 286
    const-string v0, ""

    goto :goto_8

    .line 271
    :pswitch_f
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 273
    :pswitch_1f
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 275
    :pswitch_2f
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 277
    :pswitch_3f
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 279
    :pswitch_4f
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 281
    :pswitch_5f
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 283
    :pswitch_6f
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 269
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1f
        :pswitch_2f
        :pswitch_3f
        :pswitch_4f
        :pswitch_5f
        :pswitch_6f
    .end packed-switch
.end method
