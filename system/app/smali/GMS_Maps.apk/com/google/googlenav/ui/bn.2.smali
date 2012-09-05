.class public Lcom/google/googlenav/ui/bn;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lah/f;

.field public final b:Lbb/E;

.field public final c:Lcom/google/googlenav/ui/aj;

.field public final d:Lcom/google/googlenav/ui/ai;


# direct methods
.method private constructor <init>(Lah/f;Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;Lbb/E;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/googlenav/ui/bn;->b:Lbb/E;

    iput-object p1, p0, Lcom/google/googlenav/ui/bn;->a:Lah/f;

    iput-object p2, p0, Lcom/google/googlenav/ui/bn;->c:Lcom/google/googlenav/ui/aj;

    iput-object p3, p0, Lcom/google/googlenav/ui/bn;->d:Lcom/google/googlenav/ui/ai;

    return-void
.end method

.method public static a(Lah/f;)Lcom/google/googlenav/ui/bn;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    new-instance v0, Lcom/google/googlenav/ui/bn;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/google/googlenav/ui/bn;-><init>(Lah/f;Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;Lbb/E;)V

    :goto_8
    return-object v0

    :cond_9
    move-object v0, v1

    goto :goto_8
.end method

.method public static a(Lah/f;Lbb/E;)Lcom/google/googlenav/ui/bn;
    .registers 4

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    new-instance v0, Lcom/google/googlenav/ui/bn;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/google/googlenav/ui/bn;-><init>(Lah/f;Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;Lbb/E;)V

    :goto_8
    return-object v0

    :cond_9
    move-object v0, v1

    goto :goto_8
.end method

.method public static a(Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;)Lcom/google/googlenav/ui/bn;
    .registers 4

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    new-instance v0, Lcom/google/googlenav/ui/bn;

    invoke-direct {v0, v1, p0, p1, v1}, Lcom/google/googlenav/ui/bn;-><init>(Lah/f;Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;Lbb/E;)V

    :goto_8
    return-object v0

    :cond_9
    move-object v0, v1

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;Lah/g;)Lcom/google/googlenav/ui/bn;
    .registers 5

    const/4 v1, 0x0

    invoke-static {p0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/google/googlenav/ui/bn;

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/String;Lah/g;)Lah/f;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/google/googlenav/ui/bn;-><init>(Lah/f;Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;Lbb/E;)V

    :goto_10
    return-object v0

    :cond_11
    move-object v0, v1

    goto :goto_10
.end method

.method public static a(Ljava/lang/String;Lah/g;Lbb/E;)Lcom/google/googlenav/ui/bn;
    .registers 6

    const/4 v1, 0x0

    invoke-static {p0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/google/googlenav/ui/bn;

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/String;Lah/g;)Lah/f;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1, p2}, Lcom/google/googlenav/ui/bn;-><init>(Lah/f;Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;Lbb/E;)V

    :goto_10
    return-object v0

    :cond_11
    move-object v0, v1

    goto :goto_10
.end method

.method private static b(Ljava/lang/String;Lah/g;)Lah/f;
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_c
    invoke-interface {p1, v0}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_c
.end method
