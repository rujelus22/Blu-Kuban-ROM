.class Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewCaptionListener;
.super Ljava/lang/Object;
.source "ItemContextMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ItemContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewCaptionListener"
.end annotation


# instance fields
.field private final mAlt:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mSrc:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "src"
    .parameter "title"
    .parameter "alt"

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    if-nez p1, :cond_b

    .line 249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 251
    :cond_b
    if-nez p2, :cond_13

    .line 252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 254
    :cond_13
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewCaptionListener;->mContext:Landroid/content/Context;

    .line 255
    iput-object p2, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewCaptionListener;->mSrc:Ljava/lang/String;

    .line 256
    iput-object p3, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewCaptionListener;->mTitle:Ljava/lang/String;

    .line 257
    iput-object p4, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewCaptionListener;->mAlt:Ljava/lang/String;

    .line 258
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewCaptionListener;->mContext:Landroid/content/Context;

    .line 265
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewCaptionListener;->mSrc:Ljava/lang/String;

    .line 266
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewCaptionListener;->mTitle:Ljava/lang/String;

    .line 267
    iget-object v3, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$ViewCaptionListener;->mAlt:Ljava/lang/String;

    .line 268
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    move v4, v6

    .line 269
    :goto_11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45

    move v5, v6

    .line 270
    :goto_18
    if-nez v4, :cond_1c

    if-eqz v5, :cond_4b

    .line 271
    :cond_1c
    if-eqz v5, :cond_47

    if-eqz v4, :cond_47

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    move v5, v6

    .line 272
    :goto_27
    if-eqz v5, :cond_2a

    move-object v1, v3

    .line 273
    :cond_2a
    if-eqz v4, :cond_49

    .line 274
    :goto_2c
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 276
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 277
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 278
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 279
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v0, v6

    .line 282
    :goto_42
    return v0

    :cond_43
    move v4, v7

    .line 268
    goto :goto_11

    :cond_45
    move v5, v7

    .line 269
    goto :goto_18

    :cond_47
    move v5, v7

    .line 271
    goto :goto_27

    :cond_49
    move-object v2, v3

    .line 273
    goto :goto_2c

    :cond_4b
    move v0, v7

    .line 282
    goto :goto_42
.end method
