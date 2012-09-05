.class public Lcom/infraware/office/evengine/EV$SCREEN_INFO;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCREEN_INFO"
.end annotation


# instance fields
.field public nHeight:I

.field public nMapHeight:I

.field public nMapWidth:I

.field public nMapX:I

.field public nMapY:I

.field public nWidth:I

.field public nX:I

.field public nY:I

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 2
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$SCREEN_INFO;->this$0:Lcom/infraware/office/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 345
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/evengine/EV$SCREEN_INFO;->nMapHeight:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SCREEN_INFO;->nMapWidth:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SCREEN_INFO;->nMapY:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SCREEN_INFO;->nMapX:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SCREEN_INFO;->nHeight:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SCREEN_INFO;->nWidth:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SCREEN_INFO;->nY:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$SCREEN_INFO;->nX:I

    .line 346
    return-void
.end method
