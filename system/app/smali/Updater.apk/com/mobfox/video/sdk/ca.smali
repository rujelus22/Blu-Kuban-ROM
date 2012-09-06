.class public final Lcom/mobfox/video/sdk/ca;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Lcom/mobfox/video/sdk/cd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobfox/video/sdk/cd;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x4080

    invoke-virtual {p0}, Lcom/mobfox/video/sdk/ca;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput-object p1, p0, Lcom/mobfox/video/sdk/ca;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobfox/video/sdk/ca;->c:Lcom/mobfox/video/sdk/cd;

    invoke-virtual {p0, v2}, Lcom/mobfox/video/sdk/ca;->setOrientation(I)V

    invoke-virtual {p0, v0, v3, v0, v3}, Lcom/mobfox/video/sdk/ca;->setPadding(IIII)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mobfox/video/sdk/ca;->b:Landroid/os/Handler;

    new-instance v0, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/mobfox/video/sdk/ca;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setAdjustViewBounds(Z)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/AspectRatioImageViewWidth;->setVisibility(I)V

    iget-object v1, p2, Lcom/mobfox/video/sdk/cd;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mobfox/video/sdk/cb;

    invoke-direct {v3, p0, v1, v0}, Lcom/mobfox/video/sdk/cb;-><init>(Lcom/mobfox/video/sdk/ca;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0, v0}, Lcom/mobfox/video/sdk/ca;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Lcom/mobfox/video/sdk/ca;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/ca;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-direct {p0, p1}, Lcom/mobfox/video/sdk/ca;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 11

    const/4 v2, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_84
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_4e

    :try_start_c
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_8b

    iget-object v3, p0, Lcom/mobfox/video/sdk/ca;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    int-to-float v7, v4

    invoke-static {v6, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x1

    int-to-float v8, v5

    invoke-static {v7, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    if-ne v6, v4, :cond_36

    if-eq v3, v5, :cond_b6

    :cond_36
    const/4 v4, 0x0

    invoke-static {v1, v6, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v3, v1

    :goto_3c
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/mobfox/video/sdk/ca;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_47} :catch_b4

    if-eqz v0, :cond_4c

    :try_start_49
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_aa

    :cond_4c
    :goto_4c
    move-object v0, v1

    :goto_4d
    return-object v0

    :catch_4e
    move-exception v0

    move-object v0, v2

    :goto_50
    :try_start_50
    const-string v1, "MOBFOX"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, "MOBFOX"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NavIcon cannot load resource "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_50 .. :try_end_6d} :catchall_b0

    :cond_6d
    if-eqz v0, :cond_72

    :try_start_6f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_ac

    :cond_72
    :goto_72
    :try_start_72
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    const-string v1, "src"

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_82} :catch_93

    move-result-object v0

    goto :goto_4d

    :catchall_84
    move-exception v0

    :goto_85
    if-eqz v2, :cond_8a

    :try_start_87
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_ae

    :cond_8a
    :goto_8a
    throw v0

    :cond_8b
    if-eqz v0, :cond_72

    :try_start_8d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_72

    :catch_91
    move-exception v0

    goto :goto_72

    :catch_93
    move-exception v0

    const-string v1, "MOBFOX"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot fetch image:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_4d

    :catch_aa
    move-exception v0

    goto :goto_4c

    :catch_ac
    move-exception v0

    goto :goto_72

    :catch_ae
    move-exception v1

    goto :goto_8a

    :catchall_b0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_85

    :catch_b4
    move-exception v1

    goto :goto_50

    :cond_b6
    move-object v3, v1

    goto :goto_3c
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/ca;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/ca;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/mobfox/video/sdk/ca;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/mobfox/video/sdk/ca;->a:Landroid/content/Context;

    check-cast v0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    iget-object v1, p0, Lcom/mobfox/video/sdk/ca;->c:Lcom/mobfox/video/sdk/cd;

    iget v1, v1, Lcom/mobfox/video/sdk/cd;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/mobfox/video/sdk/ca;->c:Lcom/mobfox/video/sdk/cd;

    iget-object v3, v3, Lcom/mobfox/video/sdk/cd;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->startActivity(Landroid/content/Intent;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v1, p0, Lcom/mobfox/video/sdk/ca;->c:Lcom/mobfox/video/sdk/cd;

    iget-object v1, v1, Lcom/mobfox/video/sdk/cd;->d:Ljava/lang/String;

    const-string v2, "market:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "http://market.android.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "sms:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "voicemail:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "geo:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "google.streetview:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    :cond_68
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_77

    goto :goto_23

    :catch_77
    move-exception v0

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t open URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobfox/video/sdk/ca;->c:Lcom/mobfox/video/sdk/cd;

    iget-object v2, v2, Lcom/mobfox/video/sdk/cd;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_91
    :try_start_91
    const-string v2, "mfox:external:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_23

    :cond_af
    const-string v2, "mfox:replayvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_b4} :catch_77

    move-result v2

    if-eqz v2, :cond_f2

    :try_start_b7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "replayVideo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ca
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b7 .. :try_end_ca} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ca} :catch_df

    goto/16 :goto_23

    :catch_cc
    move-exception v0

    :try_start_cd
    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "MOBFOX"

    const-string v1, "Your activity class has no replayVideo method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    :catch_df
    move-exception v0

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "MOBFOX"

    const-string v1, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    :cond_f2
    const-string v2, "mfox:playvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_f7} :catch_77

    move-result v2

    if-eqz v2, :cond_135

    :try_start_fa
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "playVideo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_fa .. :try_end_10d} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_10d} :catch_122

    goto/16 :goto_23

    :catch_10f
    move-exception v0

    :try_start_110
    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "MOBFOX"

    const-string v1, "Your activity class has no playVideo method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    :catch_122
    move-exception v0

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "MOBFOX"

    const-string v1, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    :cond_135
    const-string v2, "mfox:skip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_142

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->finish()V

    goto/16 :goto_23

    :cond_142
    iget-object v1, p0, Lcom/mobfox/video/sdk/ca;->c:Lcom/mobfox/video/sdk/cd;

    iget-object v1, v1, Lcom/mobfox/video/sdk/cd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a(Ljava/lang/String;)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_149} :catch_77

    goto/16 :goto_23
.end method
