.class public final Lcom/cooliris/media/PopupMenu$Option;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Option"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/Runnable;

.field private mBottom:I

.field private mDrawable:Lcom/cooliris/media/IconTitleDrawable;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private mRight:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 5
    .parameter "title"
    .parameter "icon"
    .parameter "action"

    .prologue
    .line 411
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/PopupMenu$Option;->mDrawable:Lcom/cooliris/media/IconTitleDrawable;

    .line 412
    iput-object p1, p0, Lcom/cooliris/media/PopupMenu$Option;->mTitle:Ljava/lang/String;

    .line 413
    iput-object p2, p0, Lcom/cooliris/media/PopupMenu$Option;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 414
    iput-object p3, p0, Lcom/cooliris/media/PopupMenu$Option;->mAction:Ljava/lang/Runnable;

    .line 415
    return-void
.end method

.method static synthetic access$200(Lcom/cooliris/media/PopupMenu$Option;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu$Option;->mAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cooliris/media/PopupMenu$Option;)Lcom/cooliris/media/IconTitleDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu$Option;->mDrawable:Lcom/cooliris/media/IconTitleDrawable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/cooliris/media/PopupMenu$Option;Lcom/cooliris/media/IconTitleDrawable;)Lcom/cooliris/media/IconTitleDrawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/cooliris/media/PopupMenu$Option;->mDrawable:Lcom/cooliris/media/IconTitleDrawable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/cooliris/media/PopupMenu$Option;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu$Option;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cooliris/media/PopupMenu$Option;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/cooliris/media/PopupMenu$Option;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cooliris/media/PopupMenu$Option;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 398
    iget v0, p0, Lcom/cooliris/media/PopupMenu$Option;->mBottom:I

    return v0
.end method

.method static synthetic access$602(Lcom/cooliris/media/PopupMenu$Option;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    iput p1, p0, Lcom/cooliris/media/PopupMenu$Option;->mBottom:I

    return p1
.end method

.method static synthetic access$700(Lcom/cooliris/media/PopupMenu$Option;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 398
    iget v0, p0, Lcom/cooliris/media/PopupMenu$Option;->mRight:I

    return v0
.end method

.method static synthetic access$702(Lcom/cooliris/media/PopupMenu$Option;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    iput p1, p0, Lcom/cooliris/media/PopupMenu$Option;->mRight:I

    return p1
.end method

.method static synthetic access$712(Lcom/cooliris/media/PopupMenu$Option;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    iget v0, p0, Lcom/cooliris/media/PopupMenu$Option;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/cooliris/media/PopupMenu$Option;->mRight:I

    return v0
.end method
