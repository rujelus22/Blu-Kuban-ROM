.class public Le/H;
.super Le/x;


# static fields
.field public static final j:Le/H;

.field public static final k:Le/w;


# instance fields
.field public final h:I

.field public final i:Le/J;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v1, 0x0

    new-instance v0, Le/H;

    const/4 v3, -0x2

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Le/H;-><init>(IIIII)V

    sput-object v0, Le/H;->j:Le/H;

    new-instance v0, Le/I;

    invoke-direct {v0}, Le/I;-><init>()V

    sput-object v0, Le/H;->k:Le/w;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 10

    const/16 v4, 0x55

    const v5, 0x9c40

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Le/H;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Le/x;-><init>(IIII)V

    iput p5, p0, Le/H;->h:I

    invoke-virtual {p0, p4}, Le/H;->a(I)Le/J;

    move-result-object v0

    iput-object v0, p0, Le/H;->i:Le/J;

    return-void
.end method

.method public static a(Ljava/io/PrintWriter;Le/H;)V
    .registers 3

    if-nez p1, :cond_8

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0, p1}, Le/x;->a(Ljava/io/PrintWriter;Le/x;)V

    const-string v0, ", Uncert="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Le/H;->h:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "mm, "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Le/H;->i:Le/J;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static a(Ljava/lang/StringBuilder;Le/H;)V
    .registers 3

    if-nez p1, :cond_8

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    return-void

    :cond_8
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Le/x;->a(Ljava/lang/StringBuilder;Le/x;)V

    const-string v0, ", Uncert="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Le/H;->h:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "mm, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Le/H;->i:Le/J;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method


# virtual methods
.method protected a(I)Le/J;
    .registers 3

    const/16 v0, 0x50

    if-lt p1, v0, :cond_b

    const/16 v0, 0x54

    if-gt p1, v0, :cond_b

    sget-object v0, Le/J;->b:Le/J;

    :goto_a
    return-object v0

    :cond_b
    const/16 v0, 0x55

    if-lt p1, v0, :cond_16

    const/16 v0, 0x59

    if-gt p1, v0, :cond_16

    sget-object v0, Le/J;->c:Le/J;

    goto :goto_a

    :cond_16
    const/16 v0, 0x5a

    if-lt p1, v0, :cond_21

    const/16 v0, 0x5e

    if-gt p1, v0, :cond_21

    sget-object v0, Le/J;->d:Le/J;

    goto :goto_a

    :cond_21
    sget-object v0, Le/J;->a:Le/J;

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiApPosition ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Le/x;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", horizontalUncertaintyMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/H;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/H;->i:Le/J;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
