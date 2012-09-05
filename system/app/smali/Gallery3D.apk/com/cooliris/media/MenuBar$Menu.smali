.class public final Lcom/cooliris/media/MenuBar$Menu;
.super Ljava/lang/Object;
.source "MenuBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/MenuBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Menu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/MenuBar$Menu$Builder;
    }
.end annotation


# instance fields
.field public final config:Lcom/cooliris/media/StringTexture$Config;

.field public final icon:I

.field private mWidth:I

.field public final onDeselect:Ljava/lang/Runnable;

.field public final onSelect:Ljava/lang/Runnable;

.field public final onSingleTapUp:Ljava/lang/Runnable;

.field public options:[Lcom/cooliris/media/PopupMenu$Option;

.field public final resizeToAccomodate:Z

.field public final title:Ljava/lang/String;

.field public titleTexture:Lcom/cooliris/media/StringTexture;

.field public titleWidth:I

.field private x:I


# direct methods
.method private constructor <init>(Lcom/cooliris/media/MenuBar$Menu$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    .line 583
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/MenuBar$Menu;->titleTexture:Lcom/cooliris/media/StringTexture;

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/MenuBar$Menu;->titleWidth:I

    .line 584
    #getter for: Lcom/cooliris/media/MenuBar$Menu$Builder;->config:Lcom/cooliris/media/StringTexture$Config;
    invoke-static {p1}, Lcom/cooliris/media/MenuBar$Menu$Builder;->access$400(Lcom/cooliris/media/MenuBar$Menu$Builder;)Lcom/cooliris/media/StringTexture$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/MenuBar$Menu;->config:Lcom/cooliris/media/StringTexture$Config;

    .line 585
    #getter for: Lcom/cooliris/media/MenuBar$Menu$Builder;->title:Ljava/lang/String;
    invoke-static {p1}, Lcom/cooliris/media/MenuBar$Menu$Builder;->access$500(Lcom/cooliris/media/MenuBar$Menu$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/MenuBar$Menu;->title:Ljava/lang/String;

    .line 586
    #getter for: Lcom/cooliris/media/MenuBar$Menu$Builder;->icon:I
    invoke-static {p1}, Lcom/cooliris/media/MenuBar$Menu$Builder;->access$600(Lcom/cooliris/media/MenuBar$Menu$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cooliris/media/MenuBar$Menu;->icon:I

    .line 587
    #getter for: Lcom/cooliris/media/MenuBar$Menu$Builder;->onSelect:Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/cooliris/media/MenuBar$Menu$Builder;->access$700(Lcom/cooliris/media/MenuBar$Menu$Builder;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/MenuBar$Menu;->onSelect:Ljava/lang/Runnable;

    .line 588
    #getter for: Lcom/cooliris/media/MenuBar$Menu$Builder;->onDeselect:Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/cooliris/media/MenuBar$Menu$Builder;->access$800(Lcom/cooliris/media/MenuBar$Menu$Builder;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/MenuBar$Menu;->onDeselect:Ljava/lang/Runnable;

    .line 589
    #getter for: Lcom/cooliris/media/MenuBar$Menu$Builder;->onSingleTapUp:Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/cooliris/media/MenuBar$Menu$Builder;->access$900(Lcom/cooliris/media/MenuBar$Menu$Builder;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/MenuBar$Menu;->onSingleTapUp:Ljava/lang/Runnable;

    .line 590
    #getter for: Lcom/cooliris/media/MenuBar$Menu$Builder;->options:[Lcom/cooliris/media/PopupMenu$Option;
    invoke-static {p1}, Lcom/cooliris/media/MenuBar$Menu$Builder;->access$1000(Lcom/cooliris/media/MenuBar$Menu$Builder;)[Lcom/cooliris/media/PopupMenu$Option;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 591
    #getter for: Lcom/cooliris/media/MenuBar$Menu$Builder;->resizeToAccomodate:Z
    invoke-static {p1}, Lcom/cooliris/media/MenuBar$Menu$Builder;->access$1100(Lcom/cooliris/media/MenuBar$Menu$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cooliris/media/MenuBar$Menu;->resizeToAccomodate:Z

    .line 592
    return-void
.end method

.method synthetic constructor <init>(Lcom/cooliris/media/MenuBar$Menu$Builder;Lcom/cooliris/media/MenuBar$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/cooliris/media/MenuBar$Menu;-><init>(Lcom/cooliris/media/MenuBar$Menu$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/MenuBar$Menu;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 494
    iget v0, p0, Lcom/cooliris/media/MenuBar$Menu;->x:I

    return v0
.end method

.method static synthetic access$002(Lcom/cooliris/media/MenuBar$Menu;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 494
    iput p1, p0, Lcom/cooliris/media/MenuBar$Menu;->x:I

    return p1
.end method

.method static synthetic access$100(Lcom/cooliris/media/MenuBar$Menu;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 494
    iget v0, p0, Lcom/cooliris/media/MenuBar$Menu;->mWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/cooliris/media/MenuBar$Menu;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 494
    iput p1, p0, Lcom/cooliris/media/MenuBar$Menu;->mWidth:I

    return p1
.end method


# virtual methods
.method public computeRequiredWidth()I
    .registers 6

    .prologue
    const/high16 v4, 0x3f00

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, width:I
    iget v1, p0, Lcom/cooliris/media/MenuBar$Menu;->icon:I

    if-eqz v1, :cond_10

    .line 597
    int-to-float v1, v0

    const/high16 v2, 0x4204

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 599
    :cond_10
    iget-object v1, p0, Lcom/cooliris/media/MenuBar$Menu;->title:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 600
    iget-object v1, p0, Lcom/cooliris/media/MenuBar$Menu;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/cooliris/media/MenuBar$Menu;->config:Lcom/cooliris/media/StringTexture$Config;

    invoke-static {v1, v2}, Lcom/cooliris/media/StringTexture;->computeTextWidthForConfig(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)I

    move-result v1

    add-int/2addr v0, v1

    .line 603
    :cond_1d
    const/high16 v1, 0x40a0

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 606
    return v0
.end method
