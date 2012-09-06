.class public Lr/aK;
.super Lr/aP;
.source "SourceFile"


# static fields
.field public static final h:Lr/aO;


# instance fields
.field private j:Z

.field private volatile k:Lr/aO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lr/aL;

    invoke-direct {v0}, Lr/aL;-><init>()V

    sput-object v0, Lr/aK;->h:Lr/aO;

    return-void
.end method

.method public constructor <init>(Lac/p;Lcom/google/android/maps/driveabout/vector/dg;IFLjava/util/Locale;ZLjava/io/File;Lr/aO;Lr/t;)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lr/aP;-><init>(Lac/p;Lcom/google/android/maps/driveabout/vector/dg;IFLjava/util/Locale;ZLjava/io/File;Lr/t;)V

    .line 27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lr/aK;->j:Z

    .line 73
    move-object/from16 v0, p8

    iput-object v0, p0, Lr/aK;->k:Lr/aO;

    .line 74
    return-void
.end method

.method public static a(IZ)Lr/aO;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 135
    new-instance v0, Lr/aM;

    invoke-direct {v0, p0, p1}, Lr/aM;-><init>(IZ)V

    return-object v0
.end method

.method private b(Ln/am;Ln/aF;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lr/aK;->k:Lr/aO;

    if-nez v0, :cond_6

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lr/aK;->k:Lr/aO;

    invoke-interface {v0, p1, p2}, Lr/aO;->a(Ln/am;Ln/aF;)Z

    move-result v0

    goto :goto_5
.end method

.method public static n()Lr/aO;
    .registers 1

    .prologue
    .line 186
    new-instance v0, Lr/aN;

    invoke-direct {v0}, Lr/aN;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ln/am;Ln/aF;Lr/aF;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lr/aK;->b(Ln/am;Ln/aF;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 110
    invoke-super {p0, p1, p3}, Lr/aP;->a(Ln/am;Lr/aF;)V

    .line 114
    :goto_9
    return-void

    .line 112
    :cond_a
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p3, p1, v0, v1}, Lr/aF;->a(Ln/am;ILn/al;)V

    goto :goto_9
.end method

.method public a(Ln/am;Lr/aF;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lr/aK;->a(Ln/am;Ln/aF;Lr/aF;)V

    .line 97
    return-void
.end method

.method public a(Lr/aO;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lr/aK;->k:Lr/aO;

    .line 78
    return-void
.end method

.method public a(Ln/am;Ln/aF;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 104
    iget-boolean v0, p0, Lr/aK;->j:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, p2}, Lr/aK;->b(Ln/am;Ln/aF;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-boolean p1, p0, Lr/aK;->j:Z

    .line 92
    return-void
.end method
