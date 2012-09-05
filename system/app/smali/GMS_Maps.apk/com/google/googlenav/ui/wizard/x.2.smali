.class public Lcom/google/googlenav/ui/wizard/x;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/googlenav/ui/wizard/y;


# instance fields
.field private b:Ljava/util/Vector;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/wizard/y;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/y;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/x;->b:Ljava/util/Vector;

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/googlenav/ui/wizard/x;->c:I

    return-void
.end method

.method private b(I)Lcom/google/googlenav/ui/wizard/y;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/x;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/y;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/x;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public a(I)V
    .registers 6

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/x;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_1f

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/x;->b(I)Lcom/google/googlenav/ui/wizard/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v3

    if-ne v3, p1, :cond_1c

    :goto_14
    if-ltz v0, :cond_1b

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/x;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    :cond_1b
    return-void

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1f
    move v0, v1

    goto :goto_14
.end method

.method public a(Lcom/google/googlenav/ui/wizard/y;)V
    .registers 5

    const/16 v2, 0x10

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    const/16 v1, 0x8

    if-eq v0, v1, :cond_21

    const/4 v1, 0x7

    if-eq v0, v1, :cond_21

    const/4 v1, 0x6

    if-eq v0, v1, :cond_21

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    if-eq v0, v2, :cond_21

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_24

    :cond_21
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/x;->a(I)V

    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/x;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v2, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The back action stack growing too long: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/x;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_44
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/x;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/x;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()Lcom/google/googlenav/ui/wizard/y;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/x;->b()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/x;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/x;->b(I)Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    goto :goto_8
.end method

.method public d()Lcom/google/googlenav/ui/wizard/y;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/x;->c()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/x;->b()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/x;->b:Ljava/util/Vector;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/x;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_17
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/x;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    if-lez v0, :cond_15

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/x;->b(I)Lcom/google/googlenav/ui/wizard/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
