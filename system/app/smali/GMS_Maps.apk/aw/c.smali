.class public Law/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# instance fields
.field final b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final d:I

.field final e:I

.field volatile f:I

.field final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Law/c;->a:I

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .registers 7

    invoke-static {p1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4, p5}, Law/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {p2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Law/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Law/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law/c;->b:Ljava/lang/String;

    iput p2, p0, Law/c;->e:I

    iput p3, p0, Law/c;->d:I

    iput-object p4, p0, Law/c;->g:Ljava/lang/String;

    sget v0, Law/c;->a:I

    iput v0, p0, Law/c;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Law/c;->d:I

    return v0
.end method

.method public a(I)V
    .registers 4

    iget v0, p0, Law/c;->f:I

    if-eq v0, p1, :cond_17

    iput p1, p0, Law/c;->f:I

    invoke-static {p1}, Law/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Law/c;->c:Ljava/lang/String;

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    invoke-virtual {v0}, Law/g;->c()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    sget v0, Law/c;->a:I

    if-le p1, v0, :cond_16

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    invoke-virtual {v0}, Law/g;->b()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Law/b;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Law/g;->a(Ljava/lang/CharSequence;I)V

    goto :goto_16
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Law/c;->g:Ljava/lang/String;

    return-object v0
.end method
