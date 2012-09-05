.class public Lcom/google/android/finsky/activities/FirstRunActivity;
.super Landroid/app/Activity;
.source "FirstRunActivity.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/FirstRunActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    return-object v0
.end method

.method public static requiresFirstRun()Z
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->viewedFirstRunDialog:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FirstRunActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v2, 0x7f040069

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->setContentView(I)V

    .line 32
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->setResult(I)V

    .line 34
    const v2, 0x7f0800ff

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 37
    .local v1, pinstripe:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FirstRunActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 39
    .local v0, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 40
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    const v2, 0x7f080100

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FirstRunActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p0, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v2, 0x7f080101

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/activities/FirstRunActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/FirstRunActivity$1;-><init>(Lcom/google/android/finsky/activities/FirstRunActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v2, 0x7f080103

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/activities/FirstRunActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/FirstRunActivity$2;-><init>(Lcom/google/android/finsky/activities/FirstRunActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
