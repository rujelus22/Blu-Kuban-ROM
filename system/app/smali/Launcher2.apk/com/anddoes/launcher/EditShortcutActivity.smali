.class public Lcom/anddoes/launcher/EditShortcutActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/content/pm/PackageManager;

.field private h:Landroid/content/Intent;

.field private i:Landroid/content/Intent$ShortcutIconResource;

.field private j:Landroid/content/Intent$ShortcutIconResource;

.field private k:I

.field private l:Lcom/anddoes/launcher/LauncherApplication;

.field private m:Lcom/anddoes/launcher/ec;

.field private n:Landroid/view/LayoutInflater;

.field private o:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->o:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/EditShortcutActivity;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->o:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 230
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->l:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v0, v0, Lcom/anddoes/launcher/LauncherApplication;->h:Landroid/view/View;

    check-cast v0, Lcom/anddoes/launcher/FolderIcon;

    .line 231
    const-string v1, "NONE"

    invoke-virtual {v0}, Lcom/anddoes/launcher/FolderIcon;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 232
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-virtual {p0}, Lcom/anddoes/launcher/EditShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 234
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 235
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 241
    :goto_35
    iput-object v4, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    .line 242
    return-void

    .line 237
    :cond_38
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Lcom/anddoes/launcher/FolderIcon;->c()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 239
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_35
.end method

.method static synthetic a(Lcom/anddoes/launcher/EditShortcutActivity;Landroid/content/Intent$ShortcutIconResource;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/EditShortcutActivity;Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/EditShortcutActivity;Ljava/util/List;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->o:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->g:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic c(Lcom/anddoes/launcher/EditShortcutActivity;)Lcom/anddoes/launcher/ec;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->m:Lcom/anddoes/launcher/ec;

    return-object v0
.end method

.method static synthetic d(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/Intent$ShortcutIconResource;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->j:Landroid/content/Intent$ShortcutIconResource;

    return-object v0
.end method

.method static synthetic e(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/Intent$ShortcutIconResource;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    return-object v0
.end method

.method static synthetic f(Lcom/anddoes/launcher/EditShortcutActivity;)Lcom/anddoes/launcher/LauncherApplication;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->l:Lcom/anddoes/launcher/LauncherApplication;

    return-object v0
.end method

.method static synthetic g(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic h(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic i(Lcom/anddoes/launcher/EditShortcutActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/anddoes/launcher/EditShortcutActivity;->a()V

    return-void
.end method

.method static synthetic j(Lcom/anddoes/launcher/EditShortcutActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->k:I

    return v0
.end method

.method static synthetic k(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->n:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f060026

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v2, 0x0

    .line 246
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 247
    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    .line 248
    packed-switch p1, :pswitch_data_24a

    .line 404
    :cond_10
    :goto_10
    return-void

    .line 250
    :pswitch_11
    const v0, 0x7f06025f

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    const v1, 0x7f06016a

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 253
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    if-eqz v0, :cond_5a

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 257
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 261
    const-string v0, "android.intent.extra.TITLE"

    .line 262
    const v2, 0x7f060269

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/EditShortcutActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 261
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 263
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/EditShortcutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 264
    :cond_5a
    if-eqz v1, :cond_70

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 266
    const-class v1, Lcom/anddoes/launcher/ActPickerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v0, v5}, Lcom/anddoes/launcher/EditShortcutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 268
    :cond_70
    if-eqz v3, :cond_9d

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 269
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 271
    invoke-static {}, Lcom/anddoes/launcher/gg;->a()Lcom/anddoes/launcher/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anddoes/launcher/gg;->b()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 272
    new-instance v2, Lcom/anddoes/launcher/cd;

    invoke-direct {v2, p0, v1}, Lcom/anddoes/launcher/cd;-><init>(Lcom/anddoes/launcher/EditShortcutActivity;Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_10

    .line 290
    :cond_9d
    invoke-virtual {p0, p3, v5}, Lcom/anddoes/launcher/EditShortcutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 294
    :pswitch_a2
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_ad

    .line 295
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 296
    iput-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    .line 298
    :cond_ad
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 301
    :try_start_b1
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->g:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_b7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b1 .. :try_end_b7} :catch_11f

    move-result-object v0

    move-object v1, v0

    .line 304
    :goto_b9
    if-eqz v1, :cond_10

    .line 306
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    if-nez v0, :cond_c9

    .line 308
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 310
    :cond_c9
    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v3, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    .line 311
    iget-object v3, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 313
    :try_start_d6
    iget-object v3, p0, Lcom/anddoes/launcher/EditShortcutActivity;->g:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 314
    iget-object v4, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;
    :try_end_ec
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d6 .. :try_end_ec} :catch_122
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d6 .. :try_end_ec} :catch_126

    .line 321
    :goto_ec
    iput-object p3, p0, Lcom/anddoes/launcher/EditShortcutActivity;->h:Landroid/content/Intent;

    .line 322
    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->a:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/anddoes/launcher/EditShortcutActivity;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 325
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 326
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 327
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->c:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 328
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :catch_11f
    move-exception v0

    move-object v1, v2

    goto :goto_b9

    .line 315
    :catch_122
    move-exception v3

    .line 316
    iput-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    goto :goto_ec

    .line 317
    :catch_126
    move-exception v3

    .line 318
    iput-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    goto :goto_ec

    .line 332
    :pswitch_12a
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_135

    .line 333
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 334
    iput-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    .line 336
    :cond_135
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 337
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 340
    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15c

    .line 341
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    :cond_15c
    iput-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    .line 346
    if-eqz v1, :cond_194

    .line 347
    invoke-static {v1, p0}, Lcom/anddoes/launcher/kw;->a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    .line 348
    new-instance v1, Lcom/anddoes/launcher/cj;

    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/anddoes/launcher/cj;-><init>(Landroid/graphics/Bitmap;)V

    .line 367
    :goto_16d
    if-nez v1, :cond_177

    .line 368
    invoke-virtual {p0}, Lcom/anddoes/launcher/EditShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 370
    :cond_177
    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->h:Landroid/content/Intent;

    .line 371
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 374
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 350
    :cond_194
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 351
    instance-of v4, v1, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v4, :cond_247

    .line 352
    check-cast v1, Landroid/content/Intent$ShortcutIconResource;

    iput-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    .line 355
    :try_start_1a2
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->g:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1ab
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a2 .. :try_end_1ab} :catch_1bd

    move-result-object v1

    .line 359
    :goto_1ac
    if-eqz v1, :cond_247

    .line 360
    iget-object v4, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 361
    if-eqz v4, :cond_247

    .line 362
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_16d

    .line 357
    :catch_1bd
    move-exception v1

    move-object v1, v2

    goto :goto_1ac

    .line 378
    :pswitch_1c0
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    .line 379
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 380
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/anddoes/launcher/kw;->b(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    .line 381
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 382
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 383
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_10

    .line 387
    :pswitch_1ef
    if-eqz p3, :cond_10

    .line 388
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/anddoes/launcher/ia;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    .line 389
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 390
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 391
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 392
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_10

    .line 397
    :pswitch_218
    const-string v0, "icon"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    .line 398
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 399
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/anddoes/launcher/kw;->b(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    .line 400
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 401
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 402
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_10

    :cond_247
    move-object v1, v2

    goto/16 :goto_16d

    .line 248
    :pswitch_data_24a
    .packed-switch 0x1
        :pswitch_1ef
        :pswitch_11
        :pswitch_12a
        :pswitch_a2
        :pswitch_1c0
        :pswitch_218
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f02003b

    .line 413
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->d:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 414
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->l:Lcom/anddoes/launcher/LauncherApplication;

    iput-object v1, v0, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    .line 415
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->l:Lcom/anddoes/launcher/LauncherApplication;

    iput-object v1, v0, Lcom/anddoes/launcher/LauncherApplication;->h:Landroid/view/View;

    .line 416
    invoke-virtual {p0}, Lcom/anddoes/launcher/EditShortcutActivity;->finish()V

    .line 458
    :cond_17
    :goto_17
    return-void

    .line 417
    :cond_18
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 418
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 419
    const-string v1, "android.intent.extra.shortcut.INTENT"

    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->h:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 420
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    if-nez v1, :cond_52

    .line 423
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v1, :cond_4a

    .line 424
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 429
    :cond_4a
    :goto_4a
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/EditShortcutActivity;->setResult(ILandroid/content/Intent;)V

    .line 430
    invoke-virtual {p0}, Lcom/anddoes/launcher/EditShortcutActivity;->finish()V

    goto :goto_17

    .line 427
    :cond_52
    const-string v1, "android.intent.extra.shortcut.ICON"

    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_4a

    .line 431
    :cond_5a
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->a:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 432
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 433
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 434
    const v2, 0x7f06025f

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    const v2, 0x7f06016a

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    const v2, 0x7f060026

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 441
    const v2, 0x7f02007d

    .line 440
    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 448
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    const-string v2, "android.intent.extra.INTENT"

    new-instance v3, Landroid/content/Intent;

    .line 450
    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 451
    const-string v2, "android.intent.extra.TITLE"

    .line 452
    const v3, 0x7f060268

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/EditShortcutActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 451
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 453
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 454
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/EditShortcutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_17

    .line 455
    :cond_d9
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/EditShortcutActivity;->showDialog(I)V

    goto/16 :goto_17
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/EditShortcutActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/EditShortcutActivity;->setResult(I)V

    .line 81
    invoke-virtual {p0}, Lcom/anddoes/launcher/EditShortcutActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->l:Lcom/anddoes/launcher/LauncherApplication;

    .line 83
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/EditShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->a:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/EditShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    .line 86
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 88
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/EditShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->c:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/EditShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->d:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/EditShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->e:Landroid/widget/EditText;

    .line 95
    invoke-virtual {p0}, Lcom/anddoes/launcher/EditShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->g:Landroid/content/pm/PackageManager;

    .line 96
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/EditShortcutActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->n:Landroid/view/LayoutInflater;

    .line 97
    invoke-virtual {p0}, Lcom/anddoes/launcher/EditShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x105

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->k:I

    .line 98
    invoke-virtual {p0}, Lcom/anddoes/launcher/EditShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_d8

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->l:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v0, v0, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    :goto_9f
    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->m:Lcom/anddoes/launcher/ec;

    .line 99
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->m:Lcom/anddoes/launcher/ec;

    if-eqz v0, :cond_d7

    instance-of v2, v0, Lcom/anddoes/launcher/kj;

    if-eqz v2, :cond_15e

    check-cast v0, Lcom/anddoes/launcher/kj;

    iget-object v2, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    iput-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->h:Landroid/content/Intent;

    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->e:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/anddoes/launcher/kj;->a:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/anddoes/launcher/EditShortcutActivity;->l:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v3, v3, Lcom/anddoes/launcher/LauncherApplication;->b:Lcom/anddoes/launcher/ds;

    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/kj;->a(Lcom/anddoes/launcher/ds;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->c:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->h:Landroid/content/Intent;

    if-nez v2, :cond_da

    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->a:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    :cond_d7
    :goto_d7
    return-void

    :cond_d8
    move-object v0, v1

    .line 98
    goto :goto_9f

    .line 99
    :cond_da
    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->h:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_155

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->h:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.anddoes.launcher.ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->a:Landroid/widget/Button;

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_d7

    :cond_109
    :try_start_109
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->g:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_10f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_109 .. :try_end_10f} :catch_14e

    move-result-object v0

    move-object v2, v0

    :goto_111
    if-eqz v2, :cond_d7

    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_121

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_121
    iget-object v3, p0, Lcom/anddoes/launcher/EditShortcutActivity;->a:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->j:Landroid/content/Intent$ShortcutIconResource;

    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->j:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    :try_start_133
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->g:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/anddoes/launcher/EditShortcutActivity;->j:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/anddoes/launcher/EditShortcutActivity;->j:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;
    :try_end_149
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_133 .. :try_end_149} :catch_14a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_133 .. :try_end_149} :catch_151

    goto :goto_d7

    :catch_14a
    move-exception v0

    iput-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->j:Landroid/content/Intent$ShortcutIconResource;

    goto :goto_d7

    :catch_14e
    move-exception v0

    move-object v2, v1

    goto :goto_111

    :catch_151
    move-exception v0

    iput-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->j:Landroid/content/Intent$ShortcutIconResource;

    goto :goto_d7

    :cond_155
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->a:Landroid/widget/Button;

    iget-object v0, v0, Lcom/anddoes/launcher/kj;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d7

    :cond_15e
    instance-of v1, v0, Lcom/anddoes/launcher/dd;

    if-eqz v1, :cond_d7

    const v1, 0x7f06015e

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/EditShortcutActivity;->setTitle(I)V

    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/EditShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_179

    const v2, 0x7f060160

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_179
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->a:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    check-cast v0, Lcom/anddoes/launcher/dd;

    invoke-virtual {v0}, Lcom/anddoes/launcher/dd;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1a6

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_193
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->e:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/anddoes/launcher/dd;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_d7

    :cond_1a6
    invoke-direct {p0}, Lcom/anddoes/launcher/EditShortcutActivity;->a()V

    goto :goto_193
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 462
    packed-switch p1, :pswitch_data_1a

    .line 468
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 464
    :pswitch_6
    new-instance v0, Lcom/anddoes/launcher/ci;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/ci;-><init>(Lcom/anddoes/launcher/EditShortcutActivity;B)V

    invoke-virtual {v0}, Lcom/anddoes/launcher/ci;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_5

    .line 466
    :pswitch_10
    new-instance v0, Lcom/anddoes/launcher/ch;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/ch;-><init>(Lcom/anddoes/launcher/EditShortcutActivity;B)V

    invoke-virtual {v0}, Lcom/anddoes/launcher/ch;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_5

    .line 462
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 124
    if-eqz p1, :cond_65

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_65

    .line 125
    const-string v0, "mBitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    .line 126
    const-string v0, "mIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->h:Landroid/content/Intent;

    .line 127
    const-string v0, "mIconResource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    .line 128
    const-string v0, "mOriginalIconResource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->j:Landroid/content/Intent$ShortcutIconResource;

    .line 129
    const-string v0, "mIconResource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->k:I

    .line 131
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_69

    .line 132
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->a:Landroid/widget/Button;

    const-string v1, "btPickActivity_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    const-string v1, "btPickIcon_enabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->c:Landroid/widget/Button;

    const-string v1, "btOk_enabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    :cond_65
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 147
    return-void

    .line 133
    :cond_69
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_44

    .line 136
    :try_start_6d
    iget-object v0, p0, Lcom/anddoes/launcher/EditShortcutActivity;->g:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_8a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6d .. :try_end_8a} :catch_8b

    goto :goto_44

    :catch_8b
    move-exception v0

    goto :goto_44
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    const-string v0, "mBitmap"

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    const-string v0, "mIntent"

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->h:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    const-string v0, "mIconResource"

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->i:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    const-string v0, "mOriginalIconResource"

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->j:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 116
    const-string v0, "mIconSize"

    iget v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string v0, "btOk_enabled"

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->c:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    const-string v0, "btPickIcon_enabled"

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string v0, "btPickActivity_text"

    iget-object v1, p0, Lcom/anddoes/launcher/EditShortcutActivity;->a:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 106
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/EditShortcut"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    .line 107
    return-void
.end method
