.class Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;
.super Ljava/lang/Object;
.source "EvObjectProc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RECTOBJCTPT_INFO"
.end annotation


# instance fields
.field public nNormalImg:I

.field public nSelectImg:I

.field public sPos:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;


# direct methods
.method private constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 86
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    .line 88
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->nNormalImg:I

    .line 89
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->nSelectImg:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)V

    return-void
.end method


# virtual methods
.method public SetInit()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 92
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 93
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->nNormalImg:I

    .line 94
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->nSelectImg:I

    .line 95
    return-void
.end method
