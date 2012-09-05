.class public Lcom/arcsoft/widget/OrientationMgr;
.super Ljava/lang/Object;
.source "OrientationMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OrientationMgr"


# instance fields
.field private mIBase:Lcom/arcsoft/widget/IBase;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mbRegistered:Z


# direct methods
.method public constructor <init>(Lcom/arcsoft/widget/IBase;)V
    .registers 3
    .parameter "iBase"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/arcsoft/widget/OrientationMgr;->mIBase:Lcom/arcsoft/widget/IBase;

    .line 27
    iput-object v0, p0, Lcom/arcsoft/widget/OrientationMgr;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/widget/OrientationMgr;->mbRegistered:Z

    .line 32
    iput-object p1, p0, Lcom/arcsoft/widget/OrientationMgr;->mIBase:Lcom/arcsoft/widget/IBase;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/arcsoft/widget/OrientationMgr;)Lcom/arcsoft/widget/IBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/arcsoft/widget/OrientationMgr;->mIBase:Lcom/arcsoft/widget/IBase;

    return-object v0
.end method


# virtual methods
.method public registerMgr(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 36
    iget-boolean v0, p0, Lcom/arcsoft/widget/OrientationMgr;->mbRegistered:Z

    if-ne v0, v1, :cond_6

    .line 56
    :goto_5
    return-void

    .line 38
    :cond_6
    iput-boolean v1, p0, Lcom/arcsoft/widget/OrientationMgr;->mbRegistered:Z

    .line 40
    iget-object v0, p0, Lcom/arcsoft/widget/OrientationMgr;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_13

    .line 41
    new-instance v0, Lcom/arcsoft/widget/OrientationMgr$1;

    invoke-direct {v0, p0, p1}, Lcom/arcsoft/widget/OrientationMgr$1;-><init>(Lcom/arcsoft/widget/OrientationMgr;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/arcsoft/widget/OrientationMgr;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 55
    :cond_13
    iget-object v0, p0, Lcom/arcsoft/widget/OrientationMgr;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_5
.end method

.method public unregisterMgr(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/arcsoft/widget/OrientationMgr;->mbRegistered:Z

    if-nez v0, :cond_5

    .line 66
    :cond_4
    :goto_4
    return-void

    .line 61
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/widget/OrientationMgr;->mbRegistered:Z

    .line 62
    iget-object v0, p0, Lcom/arcsoft/widget/OrientationMgr;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/arcsoft/widget/OrientationMgr;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/widget/OrientationMgr;->mOrientationListener:Landroid/view/OrientationEventListener;

    goto :goto_4
.end method
