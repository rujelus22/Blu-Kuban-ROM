.class public LBg;
.super Ljava/lang/Object;
.source "ParagraphSpanStyle.java"

# interfaces
.implements LBj;


# instance fields
.field private final a:D

.field private final a:I

.field private final a:LBm;

.field private final a:Landroid/text/Layout$Alignment;

.field private final a:Ljava/lang/String;

.field private final a:LwF;

.field private final a:LwH;

.field private final a:Z

.field private final b:D

.field private final b:Z

.field private final c:D

.field private final d:D

.field private final e:D


# direct methods
.method public constructor <init>(Lwi;LwH;Ljava/lang/String;Lwk;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-interface {p1}, Lwi;->a()Z

    move-result v0

    iput-boolean v0, p0, LBg;->b:Z

    .line 66
    invoke-interface {p1}, Lwi;->a()I

    move-result v0

    iput v0, p0, LBg;->a:I

    .line 67
    iget v0, p0, LBg;->a:I

    packed-switch v0, :pswitch_data_8c

    .line 97
    iput-boolean v1, p0, LBg;->a:Z

    .line 98
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, LBg;->a:Landroid/text/Layout$Alignment;

    .line 100
    :goto_1b
    invoke-interface {p1}, Lwi;->c()D

    move-result-wide v0

    iput-wide v0, p0, LBg;->c:D

    .line 101
    invoke-interface {p1}, Lwi;->d()D

    move-result-wide v0

    iput-wide v0, p0, LBg;->b:D

    .line 102
    invoke-interface {p1}, Lwi;->e()D

    move-result-wide v0

    iput-wide v0, p0, LBg;->a:D

    .line 103
    invoke-interface {p1}, Lwi;->b()D

    move-result-wide v0

    iput-wide v0, p0, LBg;->d:D

    .line 104
    invoke-interface {p1}, Lwi;->a()D

    move-result-wide v0

    iput-wide v0, p0, LBg;->e:D

    .line 105
    invoke-interface {p1}, Lwi;->b()I

    move-result v0

    invoke-static {v0}, LwF;->a(I)LwF;

    move-result-object v0

    iput-object v0, p0, LBg;->a:LwF;

    .line 106
    iput-object p3, p0, LBg;->a:Ljava/lang/String;

    .line 107
    iput-object p2, p0, LBg;->a:LwH;

    .line 108
    if-eqz p4, :cond_89

    new-instance v0, LBm;

    invoke-direct {v0, p4, p2}, LBm;-><init>(Lwk;LwH;)V

    :goto_4e
    iput-object v0, p0, LBg;->a:LBm;

    .line 110
    return-void

    .line 69
    :pswitch_51
    iget-boolean v0, p0, LBg;->b:Z

    if-eqz v0, :cond_5c

    .line 70
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, LBg;->a:Landroid/text/Layout$Alignment;

    .line 74
    :goto_59
    iput-boolean v1, p0, LBg;->a:Z

    goto :goto_1b

    .line 72
    :cond_5c
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    iput-object v0, p0, LBg;->a:Landroid/text/Layout$Alignment;

    goto :goto_59

    .line 77
    :pswitch_61
    iget-boolean v0, p0, LBg;->b:Z

    if-eqz v0, :cond_6d

    .line 78
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, LBg;->a:Landroid/text/Layout$Alignment;

    .line 82
    :goto_69
    const/4 v0, 0x1

    iput-boolean v0, p0, LBg;->a:Z

    goto :goto_1b

    .line 80
    :cond_6d
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    iput-object v0, p0, LBg;->a:Landroid/text/Layout$Alignment;

    goto :goto_69

    .line 85
    :pswitch_72
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v0, p0, LBg;->a:Landroid/text/Layout$Alignment;

    .line 86
    iput-boolean v1, p0, LBg;->a:Z

    goto :goto_1b

    .line 89
    :pswitch_79
    iget-boolean v0, p0, LBg;->b:Z

    if-eqz v0, :cond_84

    .line 90
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    iput-object v0, p0, LBg;->a:Landroid/text/Layout$Alignment;

    .line 94
    :goto_81
    iput-boolean v1, p0, LBg;->a:Z

    goto :goto_1b

    .line 92
    :cond_84
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, LBg;->a:Landroid/text/Layout$Alignment;

    goto :goto_81

    .line 108
    :cond_89
    const/4 v0, 0x0

    goto :goto_4e

    .line 67
    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_51
        :pswitch_72
        :pswitch_79
        :pswitch_61
    .end packed-switch
.end method

.method static synthetic a(LBg;)D
    .registers 3
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, LBg;->d:D

    return-wide v0
.end method

.method static synthetic a(LBg;)LBm;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, LBg;->a:LBm;

    return-object v0
.end method

.method static synthetic a(LBg;)Landroid/text/Layout$Alignment;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, LBg;->a:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method static synthetic a(LBg;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, LBg;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(LBg;)LwH;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, LBg;->a:LwH;

    return-object v0
.end method

.method static synthetic a(LBg;)Z
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, LBg;->a:Z

    return v0
.end method

.method static synthetic b(LBg;)D
    .registers 3
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, LBg;->e:D

    return-wide v0
.end method

.method static synthetic b(LBg;)Z
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, LBg;->b:Z

    return v0
.end method

.method static synthetic c(LBg;)D
    .registers 3
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, LBg;->a:D

    return-wide v0
.end method

.method static synthetic d(LBg;)D
    .registers 3
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, LBg;->b:D

    return-wide v0
.end method

.method static synthetic e(LBg;)D
    .registers 3
    .parameter

    .prologue
    .line 30
    iget-wide v0, p0, LBg;->c:D

    return-wide v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, LBg;->a:I

    return v0
.end method

.method public a()LwF;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, LBg;->a:LwF;

    return-object v0
.end method

.method public a()LyD;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LyD",
            "<",
            "LBg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, LBh;

    invoke-direct {v0, p0}, LBh;-><init>(LBg;)V

    return-object v0
.end method

.method public a(LBj;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 114
    instance-of v1, p1, LBg;

    if-eqz v1, :cond_64

    .line 115
    check-cast p1, LBg;

    .line 116
    iget-object v1, p1, LBg;->a:Landroid/text/Layout$Alignment;

    iget-object v2, p0, LBg;->a:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_64

    iget-boolean v1, p1, LBg;->a:Z

    iget-boolean v2, p0, LBg;->a:Z

    if-ne v1, v2, :cond_64

    iget-wide v1, p1, LBg;->a:D

    iget-wide v3, p0, LBg;->a:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_64

    iget-wide v1, p1, LBg;->b:D

    iget-wide v3, p0, LBg;->b:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_64

    iget-wide v1, p1, LBg;->c:D

    iget-wide v3, p0, LBg;->c:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_64

    iget-wide v1, p1, LBg;->d:D

    iget-wide v3, p0, LBg;->d:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_64

    iget-wide v1, p1, LBg;->e:D

    iget-wide v3, p0, LBg;->e:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_64

    iget-object v1, p1, LBg;->a:LwF;

    iget-object v2, p0, LBg;->a:LwF;

    if-ne v1, v2, :cond_64

    iget-boolean v1, p1, LBg;->b:Z

    iget-boolean v2, p0, LBg;->b:Z

    if-ne v1, v2, :cond_64

    iget-object v1, p0, LBg;->a:Ljava/lang/String;

    if-eqz v1, :cond_65

    iget-object v1, p0, LBg;->a:Ljava/lang/String;

    iget-object v2, p1, LBg;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    :goto_55
    iget-object v1, p0, LBg;->a:LBm;

    if-eqz v1, :cond_6a

    iget-object v1, p0, LBg;->a:LBm;

    iget-object v2, p1, LBg;->a:LBm;

    invoke-virtual {v1, v2}, LBm;->a(LBj;)Z

    move-result v1

    if-eqz v1, :cond_64

    :goto_63
    const/4 v0, 0x1

    .line 131
    :cond_64
    return v0

    .line 116
    :cond_65
    iget-object v1, p1, LBg;->a:Ljava/lang/String;

    if-nez v1, :cond_64

    goto :goto_55

    :cond_6a
    iget-object v1, p1, LBg;->a:LBm;

    if-nez v1, :cond_64

    goto :goto_63
.end method
