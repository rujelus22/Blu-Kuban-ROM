.class public LaP/g;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LaE/h;LaJ/B;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {p0}, LaP/g;->a(LaE/h;)LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1, p1}, Lcom/google/googlenav/ui/w;->a(LaJ/B;LaJ/B;)I

    move-result v0

    goto :goto_5
.end method

.method private static a(LaE/h;)LaJ/B;
    .registers 2

    invoke-virtual {p0}, LaE/h;->m()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    goto :goto_7
.end method

.method public static a(Lcom/google/googlenav/ui/bm;LaJ/B;I)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/bm;->a(LaJ/B;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    goto :goto_2
.end method
