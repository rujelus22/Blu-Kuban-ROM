.class Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;
.super Ljava/lang/Object;
.source "EvObjectProc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OBJCTPT_INFO"
.end annotation


# instance fields
.field public nNormalImg:I

.field public nSelectImg:I

.field public nType:I

.field public sPos:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;


# direct methods
.method private constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 48
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nType:I

    .line 50
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    .line 51
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 52
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)V

    return-void
.end method


# virtual methods
.method public SetInit()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 55
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nType:I

    .line 56
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 57
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 58
    iput v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    .line 59
    return-void
.end method
