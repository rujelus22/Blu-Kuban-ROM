.class public Lk/E;
.super LA/j;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;


# instance fields
.field private final b:[Landroid/view/KeyEvent;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 622
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/E;->a:Ljava/util/HashMap;

    .line 624
    sget-object v0, Lk/E;->a:Ljava/util/HashMap;

    const-string v1, "keyDown"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lk/E;->a:Ljava/util/HashMap;

    const-string v1, "keyUp"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lk/E;->a:Ljava/util/HashMap;

    const-string v1, "keyMulti"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 664
    invoke-direct {p0}, LA/j;-><init>()V

    .line 665
    iput-object p1, p0, Lk/E;->c:Ljava/lang/String;

    .line 666
    invoke-static {p1, p2, p3}, Lk/E;->a(Ljava/lang/String;II)[Landroid/view/KeyEvent;

    move-result-object v0

    iput-object v0, p0, Lk/E;->b:[Landroid/view/KeyEvent;

    .line 667
    iput-object v1, p0, Lk/E;->d:Ljava/lang/String;

    .line 668
    iput-object v1, p0, Lk/E;->e:Ljava/lang/String;

    .line 669
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 5
    .parameter

    .prologue
    .line 672
    invoke-direct {p0, p1}, LA/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 673
    const-string v0, "action"

    invoke-static {p1, v0}, Lk/E;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/E;->c:Ljava/lang/String;

    .line 674
    const-string v0, "keycode"

    invoke-static {p1, v0}, Lk/E;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 675
    const/4 v0, 0x1

    .line 676
    const-string v2, "times"

    invoke-static {p1, v2}, Lk/E;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 677
    if-eqz v2, :cond_22

    .line 678
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 680
    :cond_22
    iget-object v2, p0, Lk/E;->c:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lk/E;->a(Ljava/lang/String;II)[Landroid/view/KeyEvent;

    move-result-object v0

    iput-object v0, p0, Lk/E;->b:[Landroid/view/KeyEvent;

    .line 681
    const-string v0, "dialog"

    invoke-static {p1, v0}, Lk/E;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/E;->d:Ljava/lang/String;

    .line 682
    const-string v0, "id"

    invoke-static {p1, v0}, Lk/E;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/E;->e:Ljava/lang/String;

    .line 683
    return-void
.end method

.method private static a(Ljava/lang/String;II)[Landroid/view/KeyEvent;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 642
    sget-object v0, Lk/E;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 644
    if-eqz v0, :cond_1d

    .line 645
    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 646
    new-array v0, p2, [Landroid/view/KeyEvent;

    .line 647
    :goto_16
    if-ge v1, p2, :cond_5a

    .line 648
    aput-object v2, v0, v1

    .line 647
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 650
    :cond_1d
    const-string v0, "keyDownUp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 651
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 652
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v0, 0x1

    invoke-direct {v3, v0, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 653
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [Landroid/view/KeyEvent;

    .line 654
    :goto_34
    mul-int/lit8 v4, p2, 0x2

    if-ge v1, v4, :cond_5a

    .line 655
    aput-object v2, v0, v1

    .line 656
    add-int/lit8 v4, v1, 0x1

    aput-object v3, v0, v4

    .line 654
    add-int/lit8 v1, v1, 0x2

    goto :goto_34

    .line 659
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_5a
    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/Writer;)V
    .registers 4
    .parameter

    .prologue
    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<key action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/E;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keycode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lk/E;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public a()[Landroid/view/KeyEvent;
    .registers 2

    .prologue
    .line 685
    iget-object v0, p0, Lk/E;->b:[Landroid/view/KeyEvent;

    return-object v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 687
    iget-object v0, p0, Lk/E;->b:[Landroid/view/KeyEvent;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 689
    iget-object v0, p0, Lk/E;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 690
    iget-object v0, p0, Lk/E;->e:Ljava/lang/String;

    return-object v0
.end method
