.class public Lcom/google/googlenav/ui/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LS/f;

.field public final b:Lcom/google/googlenav/ui/view/J;

.field public final c:Lcom/google/googlenav/ui/ag;

.field public final d:Lcom/google/googlenav/ui/af;


# direct methods
.method private constructor <init>(LS/f;Lcom/google/googlenav/ui/ag;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/ui/view/J;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p4, p0, Lcom/google/googlenav/ui/bf;->b:Lcom/google/googlenav/ui/view/J;

    .line 455
    iput-object p1, p0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    .line 456
    iput-object p2, p0, Lcom/google/googlenav/ui/bf;->c:Lcom/google/googlenav/ui/ag;

    .line 457
    iput-object p3, p0, Lcom/google/googlenav/ui/bf;->d:Lcom/google/googlenav/ui/af;

    .line 458
    return-void
.end method

.method public static a(LS/f;)Lcom/google/googlenav/ui/bf;
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 481
    if-eqz p0, :cond_9

    new-instance v0, Lcom/google/googlenav/ui/bf;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/google/googlenav/ui/bf;-><init>(LS/f;Lcom/google/googlenav/ui/ag;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/ui/view/J;)V

    :goto_8
    return-object v0

    :cond_9
    move-object v0, v1

    goto :goto_8
.end method

.method public static a(LS/f;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/bf;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 486
    if-eqz p0, :cond_9

    new-instance v0, Lcom/google/googlenav/ui/bf;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/google/googlenav/ui/bf;-><init>(LS/f;Lcom/google/googlenav/ui/ag;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/ui/view/J;)V

    :goto_8
    return-object v0

    :cond_9
    move-object v0, v1

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;LS/g;)Lcom/google/googlenav/ui/bf;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 470
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/google/googlenav/ui/bf;

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/bf;->b(Ljava/lang/String;LS/g;)LS/f;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/google/googlenav/ui/bf;-><init>(LS/f;Lcom/google/googlenav/ui/ag;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/ui/view/J;)V

    :goto_10
    return-object v0

    :cond_11
    move-object v0, v1

    goto :goto_10
.end method

.method private static b(Ljava/lang/String;LS/g;)LS/f;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 475
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 476
    :goto_c
    invoke-interface {p1, v0}, LS/g;->e(C)LS/f;

    move-result-object v0

    return-object v0

    .line 475
    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_c
.end method
