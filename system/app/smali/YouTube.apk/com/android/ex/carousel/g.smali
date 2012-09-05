.class public final Lcom/android/ex/carousel/g;
.super Landroid/renderscript/ScriptC;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:F

.field private C:I

.field private D:I

.field private E:Lcom/android/ex/carousel/l;

.field private F:Landroid/renderscript/ProgramStore;

.field private G:Landroid/renderscript/ProgramStore;

.field private H:Landroid/renderscript/ProgramFragment;

.field private I:Landroid/renderscript/ProgramFragment;

.field private J:Landroid/renderscript/ProgramFragment;

.field private K:Landroid/renderscript/ProgramFragment;

.field private L:Landroid/renderscript/ProgramVertex;

.field private M:Landroid/renderscript/ProgramRaster;

.field private N:Landroid/renderscript/Allocation;

.field private O:Landroid/renderscript/Allocation;

.field private P:Landroid/renderscript/Allocation;

.field private Q:Landroid/renderscript/Allocation;

.field private R:Landroid/renderscript/Allocation;

.field private S:Landroid/renderscript/Mesh;

.field private T:Landroid/renderscript/Mesh;

.field private U:Landroid/renderscript/Matrix4f;

.field private V:Lcom/android/ex/carousel/j;

.field private W:Landroid/renderscript/Sampler;

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/android/ex/carousel/h;

.field private i:F

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:F

.field private q:Z

.field private r:F

.field private s:F

.field private t:F

.field private u:I

.field private v:I

.field private w:F

.field private x:Landroid/renderscript/Float4;

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 17
    iput-boolean v0, p0, Lcom/android/ex/carousel/g;->a:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/ex/carousel/g;->b:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/ex/carousel/g;->c:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/ex/carousel/g;->d:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/ex/carousel/g;->e:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/ex/carousel/g;->f:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/ex/carousel/g;->g:Z

    .line 24
    iput v0, p0, Lcom/android/ex/carousel/g;->C:I

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 727
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/g;->invoke(I)V

    .line 728
    return-void
.end method

.method public final a(F)V
    .registers 3
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/android/ex/carousel/g;->i:F

    .line 85
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(IF)V

    .line 86
    return-void
.end method

.method public final a(FFFFFFFFF)V
    .registers 12
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
    .line 625
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 626
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 627
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 628
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 629
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 630
    invoke-virtual {v0, p5}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 631
    invoke-virtual {v0, p6}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 632
    invoke-virtual {v0, p7}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 633
    invoke-virtual {v0, p8}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 634
    invoke-virtual {v0, p9}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 635
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 636
    return-void
.end method

.method public final a(FFJ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 709
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 710
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 711
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 712
    invoke-virtual {v0, p3, p4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 713
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 714
    return-void
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 95
    iput p1, p0, Lcom/android/ex/carousel/g;->j:I

    .line 96
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(II)V

    .line 97
    return-void
.end method

.method public final a(IFFFFLandroid/renderscript/Allocation;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 649
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 650
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 651
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 652
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 653
    invoke-virtual {v0, p5}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 654
    invoke-virtual {v0, p6}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 655
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 656
    return-void
.end method

.method public final a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 617
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 618
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 619
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 620
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 621
    return-void
.end method

.method public final a(ILandroid/renderscript/Allocation;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 640
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 641
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 642
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 643
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 644
    return-void
.end method

.method public final a(ILandroid/renderscript/Mesh;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 678
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 679
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 680
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 681
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 682
    return-void
.end method

.method public final a(ILandroid/renderscript/ProgramStore;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 694
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 695
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 696
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 697
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 698
    return-void
.end method

.method public final a(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 660
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 661
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 662
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 663
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 664
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 665
    return-void
.end method

.method public final a(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/ex/carousel/g;->N:Landroid/renderscript/Allocation;

    .line 473
    const/16 v0, 0x2b

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 474
    return-void
.end method

.method public final a(Landroid/renderscript/Float4;)V
    .registers 4
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/ex/carousel/g;->x:Landroid/renderscript/Float4;

    .line 294
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 295
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 296
    const/16 v1, 0x1b

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 297
    return-void
.end method

.method public final a(Landroid/renderscript/Matrix4f;)V
    .registers 4
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/ex/carousel/g;->U:Landroid/renderscript/Matrix4f;

    .line 550
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 551
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 552
    const/16 v1, 0x32

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 553
    return-void
.end method

.method public final a(Landroid/renderscript/Mesh;)V
    .registers 3
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/ex/carousel/g;->S:Landroid/renderscript/Mesh;

    .line 528
    const/16 v0, 0x30

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 529
    return-void
.end method

.method public final a(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/ex/carousel/g;->H:Landroid/renderscript/ProgramFragment;

    .line 407
    const/16 v0, 0x25

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 408
    return-void
.end method

.method public final a(Landroid/renderscript/ProgramRaster;)V
    .registers 3
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/ex/carousel/g;->M:Landroid/renderscript/ProgramRaster;

    .line 462
    const/16 v0, 0x2a

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 463
    return-void
.end method

.method public final a(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/ex/carousel/g;->F:Landroid/renderscript/ProgramStore;

    .line 385
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 386
    return-void
.end method

.method public final a(Landroid/renderscript/ProgramVertex;)V
    .registers 3
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/ex/carousel/g;->L:Landroid/renderscript/ProgramVertex;

    .line 451
    const/16 v0, 0x29

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 452
    return-void
.end method

.method public final a(Landroid/renderscript/Sampler;)V
    .registers 3
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/ex/carousel/g;->W:Landroid/renderscript/Sampler;

    .line 601
    const/16 v0, 0x36

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 602
    return-void
.end method

.method public final a(Lcom/android/ex/carousel/h;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x7

    .line 72
    iput-object p1, p0, Lcom/android/ex/carousel/g;->h:Lcom/android/ex/carousel/h;

    .line 73
    if-nez p1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/g;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 75
    :goto_9
    return-void

    .line 74
    :cond_a
    invoke-virtual {p1}, Lcom/android/ex/carousel/h;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/g;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_9
.end method

.method public final a(Lcom/android/ex/carousel/j;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x35

    .line 588
    iput-object p1, p0, Lcom/android/ex/carousel/g;->V:Lcom/android/ex/carousel/j;

    .line 589
    if-nez p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/g;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 591
    :goto_a
    return-void

    .line 590
    :cond_b
    invoke-virtual {p1}, Lcom/android/ex/carousel/j;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/g;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_a
.end method

.method public final a(Lcom/android/ex/carousel/l;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x22

    .line 372
    iput-object p1, p0, Lcom/android/ex/carousel/g;->E:Lcom/android/ex/carousel/l;

    .line 373
    if-nez p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/g;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 375
    :goto_a
    return-void

    .line 374
    :cond_b
    invoke-virtual {p1}, Lcom/android/ex/carousel/l;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/g;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_a
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/android/ex/carousel/g;->o:Z

    .line 173
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(IZ)V

    .line 174
    return-void
.end method

.method public final b(F)V
    .registers 3
    .parameter

    .prologue
    .line 194
    iput p1, p0, Lcom/android/ex/carousel/g;->p:F

    .line 195
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(IF)V

    .line 196
    return-void
.end method

.method public final b(FFJ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 718
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 719
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 720
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 721
    invoke-virtual {v0, p3, p4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 722
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 723
    return-void
.end method

.method public final b(I)V
    .registers 3
    .parameter

    .prologue
    .line 128
    iput p1, p0, Lcom/android/ex/carousel/g;->k:I

    .line 129
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(II)V

    .line 130
    return-void
.end method

.method public final b(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 669
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 670
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 671
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 672
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 673
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 674
    return-void
.end method

.method public final b(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/ex/carousel/g;->O:Landroid/renderscript/Allocation;

    .line 484
    const/16 v0, 0x2c

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 485
    return-void
.end method

.method public final b(Landroid/renderscript/Mesh;)V
    .registers 3
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/ex/carousel/g;->T:Landroid/renderscript/Mesh;

    .line 539
    const/16 v0, 0x31

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 540
    return-void
.end method

.method public final b(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/ex/carousel/g;->I:Landroid/renderscript/ProgramFragment;

    .line 418
    const/16 v0, 0x26

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 419
    return-void
.end method

.method public final b(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/ex/carousel/g;->G:Landroid/renderscript/ProgramStore;

    .line 396
    const/16 v0, 0x24

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 397
    return-void
.end method

.method public final b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/android/ex/carousel/g;->q:Z

    .line 206
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(IZ)V

    .line 207
    return-void
.end method

.method public final c(F)V
    .registers 3
    .parameter

    .prologue
    .line 216
    iput p1, p0, Lcom/android/ex/carousel/g;->r:F

    .line 217
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(IF)V

    .line 218
    return-void
.end method

.method public final c(FFJ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 732
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 733
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 734
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 735
    invoke-virtual {v0, p3, p4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 736
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 737
    return-void
.end method

.method public final c(I)V
    .registers 3
    .parameter

    .prologue
    .line 139
    iput p1, p0, Lcom/android/ex/carousel/g;->l:I

    .line 140
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(II)V

    .line 141
    return-void
.end method

.method public final c(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/ex/carousel/g;->P:Landroid/renderscript/Allocation;

    .line 495
    const/16 v0, 0x2d

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 496
    return-void
.end method

.method public final c(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/ex/carousel/g;->J:Landroid/renderscript/ProgramFragment;

    .line 429
    const/16 v0, 0x27

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 430
    return-void
.end method

.method public final c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/android/ex/carousel/g;->A:Z

    .line 329
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(IZ)V

    .line 330
    return-void
.end method

.method public final d(F)V
    .registers 3
    .parameter

    .prologue
    .line 227
    iput p1, p0, Lcom/android/ex/carousel/g;->s:F

    .line 228
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(IF)V

    .line 229
    return-void
.end method

.method public final d(I)V
    .registers 3
    .parameter

    .prologue
    .line 150
    iput p1, p0, Lcom/android/ex/carousel/g;->m:I

    .line 151
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(II)V

    .line 152
    return-void
.end method

.method public final d(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/ex/carousel/g;->Q:Landroid/renderscript/Allocation;

    .line 506
    const/16 v0, 0x2e

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 507
    return-void
.end method

.method public final d(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/ex/carousel/g;->K:Landroid/renderscript/ProgramFragment;

    .line 440
    const/16 v0, 0x28

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 441
    return-void
.end method

.method public final e(F)V
    .registers 3
    .parameter

    .prologue
    .line 238
    iput p1, p0, Lcom/android/ex/carousel/g;->t:F

    .line 239
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(IF)V

    .line 240
    return-void
.end method

.method public final e(I)V
    .registers 3
    .parameter

    .prologue
    .line 161
    iput p1, p0, Lcom/android/ex/carousel/g;->n:I

    .line 162
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(II)V

    .line 163
    return-void
.end method

.method public final e(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/ex/carousel/g;->R:Landroid/renderscript/Allocation;

    .line 517
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 518
    return-void
.end method

.method public final f(F)V
    .registers 3
    .parameter

    .prologue
    .line 271
    iput p1, p0, Lcom/android/ex/carousel/g;->w:F

    .line 272
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(IF)V

    .line 273
    return-void
.end method

.method public final f(I)V
    .registers 3
    .parameter

    .prologue
    .line 249
    iput p1, p0, Lcom/android/ex/carousel/g;->u:I

    .line 250
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(II)V

    .line 251
    return-void
.end method

.method public final g(F)V
    .registers 3
    .parameter

    .prologue
    .line 317
    iput p1, p0, Lcom/android/ex/carousel/g;->z:F

    .line 318
    const/16 v0, 0x1d

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(IF)V

    .line 319
    return-void
.end method

.method public final g(I)V
    .registers 3
    .parameter

    .prologue
    .line 260
    iput p1, p0, Lcom/android/ex/carousel/g;->v:I

    .line 261
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(II)V

    .line 262
    return-void
.end method

.method public final h(F)V
    .registers 3
    .parameter

    .prologue
    .line 339
    iput p1, p0, Lcom/android/ex/carousel/g;->B:F

    .line 340
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(IF)V

    .line 341
    return-void
.end method

.method public final h(I)V
    .registers 3
    .parameter

    .prologue
    .line 306
    iput p1, p0, Lcom/android/ex/carousel/g;->y:I

    .line 307
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(II)V

    .line 308
    return-void
.end method

.method public final i(F)V
    .registers 4
    .parameter

    .prologue
    .line 610
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 611
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 612
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 613
    return-void
.end method

.method public final i(I)V
    .registers 3
    .parameter

    .prologue
    .line 350
    iput p1, p0, Lcom/android/ex/carousel/g;->C:I

    .line 351
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(II)V

    .line 352
    return-void
.end method

.method public final j(F)V
    .registers 4
    .parameter

    .prologue
    .line 702
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 703
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 704
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/g;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 705
    return-void
.end method

.method public final j(I)V
    .registers 3
    .parameter

    .prologue
    .line 361
    iput p1, p0, Lcom/android/ex/carousel/g;->D:I

    .line 362
    const/16 v0, 0x21

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/g;->setVar(II)V

    .line 363
    return-void
.end method
