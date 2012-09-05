.class public Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "INVALID_DRAW_INFO"
.end annotation


# instance fields
.field public bInvalidFlag:I

.field public nBottom:I

.field public nLeft:I

.field public nRight:I

.field public nTop:I

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 2
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;->this$0:Lcom/infraware/office/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 472
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;->bInvalidFlag:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;->nBottom:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;->nTop:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;->nRight:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;->nLeft:I

    .line 473
    return-void
.end method
