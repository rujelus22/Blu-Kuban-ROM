.class Lo/E;
.super Lat/a;


# instance fields
.field final synthetic a:Lo/B;

.field private final b:Ljava/util/Locale;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lo/C;


# direct methods
.method public constructor <init>(Lo/B;Ljava/util/Locale;ILjava/lang/String;Lo/C;)V
    .registers 6

    iput-object p1, p0, Lo/E;->a:Lo/B;

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p2, p0, Lo/E;->b:Ljava/util/Locale;

    iput p3, p0, Lo/E;->c:I

    iput-object p4, p0, Lo/E;->d:Ljava/lang/String;

    iput-object p5, p0, Lo/E;->e:Lo/C;

    return-void
.end method

.method public constructor <init>(Lo/B;Ljava/util/Locale;ILo/C;)V
    .registers 11

    invoke-static {p3}, Lo/B;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/E;-><init>(Lo/B;Ljava/util/Locale;ILjava/lang/String;Lo/C;)V

    return-void
.end method

.method static synthetic a(Lo/E;)I
    .registers 2

    iget v0, p0, Lo/E;->c:I

    return v0
.end method

.method static synthetic b(Lo/E;)Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lo/E;->b:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic c(Lo/E;)Lo/C;
    .registers 2

    iget-object v0, p0, Lo/E;->e:Lo/C;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x27

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    new-instance v0, Lam/b;

    sget-object v1, LbD/es;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/file/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lo/E;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lo/E;->e:Lo/C;

    if-eqz v1, :cond_2e

    const/4 v1, 0x2

    iget-object v2, p0, Lo/E;->e:Lo/C;

    invoke-virtual {v2}, Lo/C;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    :cond_2e
    invoke-virtual {v0}, Lam/b;->f()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, LbD/es;->b:Lam/e;

    invoke-static {v2, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lam/b;->l(I)I

    move-result v3

    if-nez v3, :cond_2f

    const-string v1, "CannedSpeechManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty response for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lo/E;->b:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " voice bundle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return v0

    :cond_2f
    invoke-virtual {v2, v1, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lam/b;->d(I)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5b

    iget-object v2, p0, Lo/E;->b:Ljava/util/Locale;

    iget v3, p0, Lo/E;->c:I

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lam/b;->e(I)J

    move-result-wide v4

    iget-object v6, p0, Lo/E;->a:Lo/B;

    invoke-static {v6}, Lo/B;->a(Lo/B;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lo/C;->a(Ljava/util/Locale;IJLjava/lang/String;)Lo/C;

    move-result-object v2

    iget-object v3, p0, Lo/E;->a:Lo/B;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lam/b;->c(I)[B

    move-result-object v0

    invoke-static {v3, p0, v2, v0}, Lo/B;->a(Lo/B;Lo/E;Lo/C;[B)V

    :goto_59
    move v0, v1

    goto :goto_2e

    :cond_5b
    const/16 v0, 0x130

    if-ne v2, v0, :cond_74

    iget-object v0, p0, Lo/E;->e:Lo/C;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lo/E;->e:Lo/C;

    invoke-virtual {v0}, Lo/C;->h()V

    iget-object v0, p0, Lo/E;->a:Lo/B;

    invoke-static {v0}, Lo/B;->b(Lo/B;)V

    goto :goto_59

    :cond_6e
    iget-object v0, p0, Lo/E;->a:Lo/B;

    invoke-static {v0, p0}, Lo/B;->a(Lo/B;Lo/E;)V

    goto :goto_59

    :cond_74
    const/16 v0, 0x194

    if-ne v2, v0, :cond_98

    const-string v0, "CannedSpeechManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get voice bundle for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lo/E;->b:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/E;->a:Lo/B;

    invoke-static {v0, p0}, Lo/B;->b(Lo/B;Lo/E;)V

    goto :goto_59

    :cond_98
    const-string v0, "CannedSpeechManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get voice bundle for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lo/E;->b:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/E;->a:Lo/B;

    invoke-static {v0, p0}, Lo/B;->a(Lo/B;Lo/E;)V

    goto :goto_59
.end method
