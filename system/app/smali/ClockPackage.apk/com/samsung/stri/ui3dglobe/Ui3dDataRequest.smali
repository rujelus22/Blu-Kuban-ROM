.class public Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
.super Ljava/lang/Object;
.source "Ui3dDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;
    }
.end annotation


# instance fields
.field public alignY:I

.field public cityLableX2d:I

.field public cityLableY2d:I

.field public cityX2d:I

.field public cityY2d:I

.field public field:I

.field public format:I

.field public height:I

.field public isProceed:Z

.field priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

.field public requestId:I

.field public row:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->requestId:I

    .line 17
    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->isProceed:Z

    .line 19
    sget-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eLast:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    .line 21
    return-void
.end method
