.class public Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/AutoCompleteTextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/google/googlenav/appwidget/gohome/e;

.field private d:Landroid/widget/Gallery;

.field private e:Landroid/widget/CheckBox;

.field private f:Lcom/google/googlenav/K;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    return-void
.end method

.method private a()I
    .registers 2

    .prologue
    .line 64
    const v0, 0x7f10016c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 65
    const/4 v0, 0x1

    .line 73
    :goto_10
    return v0

    .line 67
    :cond_11
    const v0, 0x7f10016e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 68
    const/4 v0, 0x2

    goto :goto_10

    .line 70
    :cond_22
    const v0, 0x7f10016d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 71
    const/4 v0, 0x3

    goto :goto_10

    .line 73
    :cond_33
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->g()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 88
    const-string v0, "d"

    :goto_9
    return-object v0

    .line 79
    :pswitch_a
    const-string v0, "w"

    goto :goto_9

    .line 81
    :pswitch_d
    const-string v0, "r"

    goto :goto_9

    .line 83
    :pswitch_10
    const-string v0, "d"

    goto :goto_9

    .line 85
    :pswitch_13
    const-string v0, "b"

    goto :goto_9

    .line 77
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method

.method private c()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 110
    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_12
    return-object v0

    .line 94
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_12

    .line 97
    :pswitch_1f
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_12

    .line 100
    :pswitch_2b
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_12

    .line 103
    :pswitch_37
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_12

    .line 92
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_37
        :pswitch_2b
        :pswitch_13
        :pswitch_1f
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Lcom/google/googlenav/appwidget/gohome/e;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c:Lcom/google/googlenav/appwidget/gohome/e;

    return-object v0
.end method

.method private d()Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c:Lcom/google/googlenav/appwidget/gohome/e;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d:Landroid/widget/Gallery;

    invoke-virtual {v2}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/appwidget/gohome/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 120
    const/high16 v2, 0x105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 121
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 122
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 126
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 127
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 128
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 129
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 130
    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 133
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_5a

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 136
    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 139
    :cond_5a
    return-object v2
.end method

.method static synthetic d(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/Gallery;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private e()Z
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->f:Lcom/google/googlenav/K;

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ak()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic f(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->h()V

    return-void
.end method

.method private f()Z
    .registers 3

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a()I

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private g()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 153
    return-void
.end method

.method private h()V
    .registers 7

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b()Ljava/lang/String;

    move-result-object v2

    .line 160
    const-string v3, "http://maps.google.com/maps"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "myl"

    const-string v5, "saddr"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "daddr"

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "dirflg"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 165
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_84

    const/4 v0, 0x1

    .line 166
    :goto_43
    if-eqz v0, :cond_4c

    .line 167
    const-string v3, "nav"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 171
    :cond_4c
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 173
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    if-eqz v0, :cond_86

    .line 177
    const-string v0, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.driveabout.app.NavigationActivity"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    :goto_60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 187
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->setResult(ILandroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->finish()V

    .line 193
    return-void

    .line 165
    :cond_84
    const/4 v0, 0x0

    goto :goto_43

    .line 181
    :cond_86
    const-string v0, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_60
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 337
    if-nez p1, :cond_3

    .line 354
    :cond_2
    :goto_2
    return-void

    .line 341
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_1a

    .line 347
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :cond_1a
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "destination"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_2

    .line 352
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f10016d

    const v6, 0x7f1000c3

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->setContentView(I)V

    .line 200
    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 203
    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    .line 205
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->f:Lcom/google/googlenav/K;

    .line 207
    const v0, 0x7f1000c1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 208
    const/16 v1, 0x1ce

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const v0, 0x7f1000c4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 210
    const/16 v1, 0x5e1

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const v0, 0x7f1000c6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    const/16 v1, 0x1cf

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 214
    const/16 v1, 0x1cc

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const v0, 0x7f1000ca

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 217
    const/16 v1, 0x1cd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 219
    const v1, 0x7f1000c7

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b:Landroid/widget/TextView;

    .line 220
    const v1, 0x7f1000c2

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    .line 221
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    const/16 v4, 0x1cb

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 223
    const v1, 0x7f1000c5

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e:Landroid/widget/CheckBox;

    .line 224
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e:Landroid/widget/CheckBox;

    const/16 v4, 0x1d0

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->g()V

    .line 228
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->f:Lcom/google/googlenav/K;

    invoke-virtual {v1}, Lcom/google/googlenav/K;->ak()Z

    move-result v1

    if-nez v1, :cond_c5

    .line 229
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 232
    :cond_c5
    invoke-virtual {p0, v6}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    new-instance v4, Lcom/google/googlenav/appwidget/gohome/a;

    invoke-direct {v4, p0}, Lcom/google/googlenav/appwidget/gohome/a;-><init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 240
    invoke-virtual {p0, v7}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 241
    invoke-static {}, Lcom/google/googlenav/K;->C()Z

    move-result v4

    if-eqz v4, :cond_e0

    move v2, v3

    :cond_e0
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 244
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a(Landroid/content/Intent;)V

    .line 246
    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/bY;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/bY;

    move-result-object v2

    .line 247
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bZ;->H()I

    move-result v1

    .line 251
    packed-switch v1, :pswitch_data_17c

    .line 265
    :goto_fa
    invoke-virtual {p0, v6}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/j;->a(Landroid/view/View;)V

    .line 267
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/google/googlenav/appwidget/gohome/b;

    invoke-direct {v4, p0, v2}, Lcom/google/googlenav/appwidget/gohome/b;-><init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;Lcom/google/googlenav/ui/view/android/bY;)V

    invoke-virtual {v1, v4}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 292
    new-instance v1, Lcom/google/googlenav/appwidget/gohome/c;

    invoke-direct {v1, p0}, Lcom/google/googlenav/appwidget/gohome/c;-><init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V

    .line 309
    iget-object v2, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 310
    iget-object v2, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 312
    new-instance v1, Lcom/google/googlenav/appwidget/gohome/e;

    invoke-direct {v1, p0}, Lcom/google/googlenav/appwidget/gohome/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c:Lcom/google/googlenav/appwidget/gohome/e;

    .line 314
    const v1, 0x7f1000c8

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    iput-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d:Landroid/widget/Gallery;

    .line 315
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c:Lcom/google/googlenav/appwidget/gohome/e;

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 316
    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c:Lcom/google/googlenav/appwidget/gohome/e;

    invoke-virtual {v2}, Lcom/google/googlenav/appwidget/gohome/e;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setSelection(I)V

    .line 318
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 319
    new-instance v1, Lcom/google/googlenav/appwidget/gohome/d;

    invoke-direct {v1, p0}, Lcom/google/googlenav/appwidget/gohome/d;-><init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    return-void

    .line 253
    :pswitch_14a
    const v1, 0x7f10016b

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_fa

    .line 256
    :pswitch_157
    const v1, 0x7f10016e

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_fa

    .line 259
    :pswitch_164
    invoke-virtual {p0, v7}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_fa

    .line 262
    :pswitch_16e
    const v1, 0x7f10016c

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_fa

    .line 251
    nop

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_14a
        :pswitch_16e
        :pswitch_157
        :pswitch_164
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 333
    invoke-static {}, Lcom/google/googlenav/android/c;->f()V

    .line 334
    return-void
.end method
