.class public final Lcom/acquariusoft/UpdateMe/b/k;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->a:I

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->b:I

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->c:I

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->d:I

    if-eqz p1, :cond_18

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_18
    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->a:I

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->b:I

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->c:I

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const/16 v0, 0x20

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_39

    const/4 v1, 0x0

    :try_start_31
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->a:I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_65

    :cond_39
    :goto_39
    array-length v1, v0

    if-lt v1, v2, :cond_45

    const/4 v1, 0x1

    :try_start_3d
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->b:I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_45} :catch_63

    :cond_45
    :goto_45
    array-length v1, v0

    if-lt v1, v3, :cond_51

    const/4 v1, 0x2

    :try_start_49
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->c:I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_51} :catch_61

    :cond_51
    :goto_51
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1e

    const/4 v1, 0x3

    :try_start_56
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/b/k;->c:I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5e} :catch_5f

    goto :goto_1e

    :catch_5f
    move-exception v0

    goto :goto_1e

    :catch_61
    move-exception v1

    goto :goto_51

    :catch_63
    move-exception v1

    goto :goto_45

    :catch_65
    move-exception v1

    goto :goto_39
.end method


# virtual methods
.method public final a(Lcom/acquariusoft/UpdateMe/b/k;)Z
    .registers 4

    iget v0, p1, Lcom/acquariusoft/UpdateMe/b/k;->a:I

    iget v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->a:I

    if-gt v0, v1, :cond_3c

    iget v0, p1, Lcom/acquariusoft/UpdateMe/b/k;->a:I

    iget v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->a:I

    if-ne v0, v1, :cond_12

    iget v0, p1, Lcom/acquariusoft/UpdateMe/b/k;->b:I

    iget v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->b:I

    if-gt v0, v1, :cond_3c

    :cond_12
    iget v0, p1, Lcom/acquariusoft/UpdateMe/b/k;->a:I

    iget v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->a:I

    if-ne v0, v1, :cond_24

    iget v0, p1, Lcom/acquariusoft/UpdateMe/b/k;->b:I

    iget v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->b:I

    if-ne v0, v1, :cond_24

    iget v0, p1, Lcom/acquariusoft/UpdateMe/b/k;->c:I

    iget v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->c:I

    if-gt v0, v1, :cond_3c

    :cond_24
    iget v0, p1, Lcom/acquariusoft/UpdateMe/b/k;->a:I

    iget v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->a:I

    if-ne v0, v1, :cond_3e

    iget v0, p1, Lcom/acquariusoft/UpdateMe/b/k;->b:I

    iget v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->b:I

    if-ne v0, v1, :cond_3e

    iget v0, p1, Lcom/acquariusoft/UpdateMe/b/k;->c:I

    iget v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->c:I

    if-ne v0, v1, :cond_3e

    iget v0, p1, Lcom/acquariusoft/UpdateMe/b/k;->d:I

    iget v1, p0, Lcom/acquariusoft/UpdateMe/b/k;->d:I

    if-le v0, v1, :cond_3e

    :cond_3c
    const/4 v0, 0x1

    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method
