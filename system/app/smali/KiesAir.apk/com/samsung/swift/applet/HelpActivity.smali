.class public Lcom/samsung/swift/applet/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# instance fields
.field private final TAGNAME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/applet/HelpActivity;->TAGNAME:Ljava/lang/String;

    return-void
.end method

.method private findViewIfExists(Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .parameter "id"

    .prologue
    .line 147
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, viewId:I
    if-eqz v0, :cond_1d

    .line 150
    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 152
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method private fixString(Ljava/lang/String;)V
    .registers 5
    .parameter "textView"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/swift/applet/HelpActivity;->findViewIfExists(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 135
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_1d

    .line 137
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 140
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .end local v0           #s:Ljava/lang/String;
    :cond_1d
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_10

    .line 107
    invoke-virtual {p0}, Lcom/samsung/swift/applet/HelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/swift/Swift;->setApplicationContext(Landroid/content/Context;)V

    .line 109
    :cond_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1b

    .line 110
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/swift/applet/HelpActivity;->requestWindowFeature(I)Z

    .line 114
    :cond_1b
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 116
    const v1, 0x103006e

    invoke-virtual {p0, v1}, Lcom/samsung/swift/applet/HelpActivity;->setTheme(I)V

    .line 117
    invoke-virtual {p0}, Lcom/samsung/swift/applet/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "help_holo_light"

    const-string v3, "layout"

    invoke-virtual {p0}, Lcom/samsung/swift/applet/HelpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, layoutId:I
    :goto_37
    sget v1, Lcom/samsung/swift/R$string;->help:I

    invoke-virtual {p0, v1}, Lcom/samsung/swift/applet/HelpActivity;->setTitle(I)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/HelpActivity;->setContentView(I)V

    .line 127
    const-string v1, "helpText1"

    invoke-direct {p0, v1}, Lcom/samsung/swift/applet/HelpActivity;->fixString(Ljava/lang/String;)V

    .line 128
    const-string v1, "helpText3"

    invoke-direct {p0, v1}, Lcom/samsung/swift/applet/HelpActivity;->fixString(Ljava/lang/String;)V

    .line 129
    const-string v1, "helpText4"

    invoke-direct {p0, v1}, Lcom/samsung/swift/applet/HelpActivity;->fixString(Ljava/lang/String;)V

    .line 130
    return-void

    .line 121
    .end local v0           #layoutId:I
    :cond_4f
    invoke-virtual {p0}, Lcom/samsung/swift/applet/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "help"

    const-string v3, "layout"

    invoke-virtual {p0}, Lcom/samsung/swift/applet/HelpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #layoutId:I
    goto :goto_37
.end method
