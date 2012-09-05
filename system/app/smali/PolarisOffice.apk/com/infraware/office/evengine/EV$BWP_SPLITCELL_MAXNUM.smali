.class public Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BWP_SPLITCELL_MAXNUM"
.end annotation


# instance fields
.field public nCol:I

.field public nRow:I

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 2
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;->this$0:Lcom/infraware/office/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 459
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;->nCol:I

    iput v0, p0, Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;->nRow:I

    .line 460
    return-void
.end method
