.class Lcom/google/android/maps/driveabout/vector/bQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/da;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/maps/driveabout/vector/da;

.field private c:I

.field private d:Lr/Q;

.field private e:Ll/e;

.field private f:Ll/q;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/da;ILandroid/content/Context;Ll/q;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/bQ;->a:Landroid/content/Context;

    .line 678
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bQ;->b:Lcom/google/android/maps/driveabout/vector/da;

    .line 679
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bQ;->c:I

    .line 680
    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/bQ;->f:Ll/q;

    .line 681
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/dg;ZLcom/google/android/maps/driveabout/vector/df;)Lcom/google/android/maps/driveabout/vector/cJ;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 705
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-direct {v0, p1, p3}, Lcom/google/android/maps/driveabout/vector/cJ;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/df;)V

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;IZLcom/google/android/maps/driveabout/vector/df;)Lcom/google/android/maps/driveabout/vector/cY;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->b:Lcom/google/android/maps/driveabout/vector/da;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/da;->a(Lcom/google/android/maps/driveabout/vector/dg;IZLcom/google/android/maps/driveabout/vector/df;)Lcom/google/android/maps/driveabout/vector/cY;

    move-result-object v1

    .line 689
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->d:Lr/Q;

    if-nez v0, :cond_10

    .line 690
    invoke-static {}, Lr/Q;->b()Lr/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->d:Lr/Q;

    .line 692
    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->e:Ll/e;

    if-nez v0, :cond_1c

    .line 693
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->f:Ll/q;

    invoke-virtual {v0}, Ll/q;->j()Ll/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bQ;->e:Ll/e;

    .line 695
    :cond_1c
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bL;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bQ;->e:Ll/e;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bQ;->d:Lr/Q;

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bQ;->c:I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bQ;->f:Ll/q;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bL;-><init>(Lcom/google/android/maps/driveabout/vector/cY;Ll/e;Lr/Q;ILl/q;)V

    return-object v0
.end method
