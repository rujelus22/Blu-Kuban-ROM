.class Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;
.super Ljava/lang/Object;
.source "EvObjectProc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TEXTOBJCTPT_INFO"
.end annotation


# instance fields
.field public nBarImg:I

.field public nEBarCY:I

.field public nNormalImg:I

.field public nSBarCY:I

.field public nSelectImg:I

.field public sEBarPos:Landroid/graphics/Point;

.field public sEPos:Landroid/graphics/Point;

.field public sSBarPos:Landroid/graphics/Point;

.field public sSPos:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;


# direct methods
.method private constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 62
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    .line 64
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    .line 65
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSBarPos:Landroid/graphics/Point;

    .line 66
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    .line 67
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nSBarCY:I

    .line 68
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nEBarCY:I

    .line 69
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nBarImg:I

    .line 70
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nNormalImg:I

    .line 71
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nSelectImg:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)V

    return-void
.end method


# virtual methods
.method public SetInit()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 75
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 76
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSBarPos:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 77
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 78
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nSBarCY:I

    .line 79
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nEBarCY:I

    .line 80
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nBarImg:I

    .line 81
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nNormalImg:I

    .line 82
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nSelectImg:I

    .line 83
    return-void
.end method
