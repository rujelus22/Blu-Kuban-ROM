.class public final Laj;
.super Lai;


# static fields
.field static final c:Laj;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Laj;

    const-string v1, ""

    invoke-direct {v0, v1, v2, v2}, Laj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laj;->c:Laj;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lai;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Laj;->d:I

    return-void
.end method

.method static final b()Laj;
    .registers 1

    sget-object v0, Laj;->c:Laj;

    return-object v0
.end method


# virtual methods
.method public final a(I)Z
    .registers 3

    iget v0, p0, Laj;->d:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final a(II)Z
    .registers 4

    iget v0, p0, Laj;->d:I

    if-ne p1, v0, :cond_8

    if-nez p2, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final a([II)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_b

    aget v2, p1, v1

    iget v3, p0, Laj;->d:I

    if-ne v2, v3, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method
