.class public Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EDITOR_OBJECT_POINTARRAY"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;,
        Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public nObjPointCnt:I

.field public ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

.field public ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

.field final synthetic this$0:Lcom/infraware/office/evengine/EV;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 680
    const-class v0, Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/infraware/office/evengine/EV;)V
    .registers 5
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->this$0:Lcom/infraware/office/evengine/EV;

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    new-instance v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    invoke-direct {v0, p0}, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;-><init>(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    .line 684
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    iput-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    .line 688
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v1, 0x0

    new-instance v2, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    invoke-direct {v2, p0}, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;-><init>(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    aput-object v2, v0, v1

    .line 689
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v1, 0x1

    new-instance v2, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    invoke-direct {v2, p0}, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;-><init>(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    aput-object v2, v0, v1

    return-void
.end method


# virtual methods
.method clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 750
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->clear()V

    .line 751
    iput v1, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->nObjPointCnt:I

    .line 752
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->clear()V

    .line 753
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->clear()V

    .line 754
    return-void
.end method

.method setValue([I)Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;
    .registers 6
    .parameter "param"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 722
    sget-boolean v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    array-length v0, p1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 723
    :cond_11
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->startPoint:Landroid/graphics/Point;

    aget v1, p1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 724
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->startPoint:Landroid/graphics/Point;

    aget v1, p1, v3

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 725
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->endPoint:Landroid/graphics/Point;

    const/4 v1, 0x2

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 726
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->endPoint:Landroid/graphics/Point;

    const/4 v1, 0x3

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 728
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    const/4 v1, 0x4

    aget v1, p1, v1

    iput v1, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->nRotateAngle:I

    .line 729
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->ptEditingStart:Landroid/graphics/Point;

    const/4 v1, 0x5

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 730
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->ptEditingStart:Landroid/graphics/Point;

    const/4 v1, 0x6

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 731
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->ptEditingEnd:Landroid/graphics/Point;

    const/4 v1, 0x7

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 732
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->ptEditingEnd:Landroid/graphics/Point;

    const/16 v1, 0x8

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 733
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    const/16 v1, 0x9

    aget v1, p1, v1

    iput v1, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->nEditingAngle:I

    .line 734
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    const/16 v1, 0xa

    aget v1, p1, v1

    iput v1, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->bEditing:I

    .line 736
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->sObjectSize:Landroid/graphics/Point;

    const/16 v1, 0xb

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 737
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->sObjectSize:Landroid/graphics/Point;

    const/16 v1, 0xc

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 738
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    const/16 v1, 0xd

    aget v1, p1, v1

    iput v1, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->nObjectType:I

    .line 739
    const/16 v0, 0xe

    aget v0, p1, v0

    iput v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->nObjPointCnt:I

    .line 740
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    const/16 v1, 0xf

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 741
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    const/16 v1, 0x10

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 742
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v2

    const/16 v1, 0x11

    aget v1, p1, v1

    iput v1, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    .line 743
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    const/16 v1, 0x12

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 744
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    const/16 v1, 0x13

    aget v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 745
    iget-object v0, p0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v0, v0, v3

    const/16 v1, 0x14

    aget v1, p1, v1

    iput v1, v0, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    .line 746
    return-object p0
.end method
