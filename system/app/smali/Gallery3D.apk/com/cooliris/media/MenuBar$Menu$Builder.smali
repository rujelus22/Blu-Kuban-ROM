.class public final Lcom/cooliris/media/MenuBar$Menu$Builder;
.super Ljava/lang/Object;
.source "MenuBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/MenuBar$Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private config:Lcom/cooliris/media/StringTexture$Config;

.field private icon:I

.field private onDeselect:Ljava/lang/Runnable;

.field private onSelect:Ljava/lang/Runnable;

.field private onSingleTapUp:Ljava/lang/Runnable;

.field private options:[Lcom/cooliris/media/PopupMenu$Option;

.field private resizeToAccomodate:Z

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 538
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 526
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon:I

    .line 528
    iput-object v1, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSelect:Ljava/lang/Runnable;

    .line 530
    iput-object v1, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->onDeselect:Ljava/lang/Runnable;

    .line 532
    iput-object v1, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSingleTapUp:Ljava/lang/Runnable;

    .line 534
    iput-object v1, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 539
    iput-object p1, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->title:Ljava/lang/String;

    .line 540
    invoke-static {}, Lcom/cooliris/media/MenuBar;->access$200()Lcom/cooliris/media/StringTexture$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->config:Lcom/cooliris/media/StringTexture$Config;

    .line 541
    return-void
.end method

.method static synthetic access$1000(Lcom/cooliris/media/MenuBar$Menu$Builder;)[Lcom/cooliris/media/PopupMenu$Option;
    .registers 2
    .parameter "x0"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->options:[Lcom/cooliris/media/PopupMenu$Option;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/cooliris/media/MenuBar$Menu$Builder;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->resizeToAccomodate:Z

    return v0
.end method

.method static synthetic access$400(Lcom/cooliris/media/MenuBar$Menu$Builder;)Lcom/cooliris/media/StringTexture$Config;
    .registers 2
    .parameter "x0"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->config:Lcom/cooliris/media/StringTexture$Config;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cooliris/media/MenuBar$Menu$Builder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cooliris/media/MenuBar$Menu$Builder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 521
    iget v0, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon:I

    return v0
.end method

.method static synthetic access$700(Lcom/cooliris/media/MenuBar$Menu$Builder;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSelect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cooliris/media/MenuBar$Menu$Builder;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->onDeselect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/cooliris/media/MenuBar$Menu$Builder;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSingleTapUp:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/cooliris/media/MenuBar$Menu;
    .registers 3

    .prologue
    .line 579
    new-instance v0, Lcom/cooliris/media/MenuBar$Menu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cooliris/media/MenuBar$Menu;-><init>(Lcom/cooliris/media/MenuBar$Menu$Builder;Lcom/cooliris/media/MenuBar$1;)V

    return-object v0
.end method

.method public config(Lcom/cooliris/media/StringTexture$Config;)Lcom/cooliris/media/MenuBar$Menu$Builder;
    .registers 2
    .parameter "config"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->config:Lcom/cooliris/media/StringTexture$Config;

    .line 545
    return-object p0
.end method

.method public icon(I)Lcom/cooliris/media/MenuBar$Menu$Builder;
    .registers 2
    .parameter "icon"

    .prologue
    .line 554
    iput p1, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->icon:I

    .line 555
    return-object p0
.end method

.method public onSelect(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;
    .registers 2
    .parameter "onSelect"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSelect:Ljava/lang/Runnable;

    .line 560
    return-object p0
.end method

.method public onSingleTapUp(Ljava/lang/Runnable;)Lcom/cooliris/media/MenuBar$Menu$Builder;
    .registers 2
    .parameter "onSingleTapUp"

    .prologue
    .line 569
    iput-object p1, p0, Lcom/cooliris/media/MenuBar$Menu$Builder;->onSingleTapUp:Ljava/lang/Runnable;

    .line 570
    return-object p0
.end method
