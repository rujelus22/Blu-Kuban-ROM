.class public Ln/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Ln/aj;


# instance fields
.field private final a:I

.field private final b:Ln/af;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    new-instance v0, Ln/aj;

    const/4 v1, 0x0

    invoke-static {}, Ln/af;->a()Ln/af;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln/aj;-><init>(ILn/af;)V

    sput-object v0, Ln/aj;->c:Ln/aj;

    return-void
.end method

.method public constructor <init>(ILn/af;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Ln/aj;->a:I

    .line 31
    iput-object p2, p0, Ln/aj;->b:Ln/af;

    .line 32
    return-void
.end method

.method public static a()Ln/aj;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Ln/aj;->c:Ln/aj;

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;I)Ln/aj;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 36
    invoke-static {p0, p1}, Ln/af;->a(Ljava/io/DataInput;I)Ln/af;

    move-result-object v1

    .line 37
    new-instance v2, Ln/aj;

    invoke-direct {v2, v0, v1}, Ln/aj;-><init>(ILn/af;)V

    return-object v2
.end method


# virtual methods
.method public b()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Ln/aj;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    if-ne p0, p1, :cond_5

    .line 88
    :cond_4
    :goto_4
    return v0

    .line 71
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 72
    goto :goto_4

    .line 74
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 75
    goto :goto_4

    .line 77
    :cond_15
    check-cast p1, Ln/aj;

    .line 78
    iget v2, p0, Ln/aj;->a:I

    iget v3, p1, Ln/aj;->a:I

    if-eq v2, v3, :cond_1f

    move v0, v1

    .line 79
    goto :goto_4

    .line 81
    :cond_1f
    iget-object v2, p0, Ln/aj;->b:Ln/af;

    if-nez v2, :cond_29

    .line 82
    iget-object v2, p1, Ln/aj;->b:Ln/af;

    if-eqz v2, :cond_4

    move v0, v1

    .line 83
    goto :goto_4

    .line 85
    :cond_29
    iget-object v2, p0, Ln/aj;->b:Ln/af;

    iget-object v3, p1, Ln/aj;->b:Ln/af;

    invoke-virtual {v2, v3}, Ln/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 86
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 59
    .line 61
    iget v0, p0, Ln/aj;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 62
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Ln/aj;->b:Ln/af;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_b
    add-int/2addr v0, v1

    .line 63
    return v0

    .line 62
    :cond_d
    iget-object v0, p0, Ln/aj;->b:Ln/af;

    invoke-virtual {v0}, Ln/af;->hashCode()I

    move-result v0

    goto :goto_b
.end method
