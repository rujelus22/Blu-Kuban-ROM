.class public Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
.super Ljava/lang/Object;
.source "SimpleTextIconItem.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;


# instance fields
.field private final mEnabled:Z

.field private final mId:I

.field private final mImage:Landroid/graphics/drawable/Drawable;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V
    .registers 5
    .parameter "id"
    .parameter "text"
    .parameter "image"
    .parameter "enabled"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mId:I

    .line 30
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mText:Ljava/lang/CharSequence;

    .line 31
    iput-object p3, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 32
    iput-boolean p4, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mEnabled:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIZ)V
    .registers 7
    .parameter "res"
    .parameter "id"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "enabled"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p2, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mId:I

    .line 66
    const-string v0, "???"

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mText:Ljava/lang/CharSequence;

    .line 67
    if-nez p4, :cond_15

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 71
    :goto_12
    iput-boolean p5, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mEnabled:Z

    .line 72
    return-void

    .line 70
    :cond_15
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mImage:Landroid/graphics/drawable/Drawable;

    goto :goto_12
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIZ)V
    .registers 11
    .parameter "res"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "enabled"

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIIZ)V

    .line 49
    return-void
.end method


# virtual methods
.method public getId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mEnabled:Z

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "aText"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->mText:Ljava/lang/CharSequence;

    .line 88
    return-void
.end method
