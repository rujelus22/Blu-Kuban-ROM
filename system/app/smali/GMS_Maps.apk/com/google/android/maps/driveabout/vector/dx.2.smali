.class Lcom/google/android/maps/driveabout/vector/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aB;


# instance fields
.field final a:Lcom/google/android/maps/driveabout/vector/dg;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/dg;)V
    .registers 2
    .parameter

    .prologue
    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dx;->a:Lcom/google/android/maps/driveabout/vector/dg;

    .line 915
    return-void
.end method


# virtual methods
.method public a(Ln/am;[BIJJ)Ln/al;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 919
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/dx;->a:Lcom/google/android/maps/driveabout/vector/dg;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Ln/aF;->a(Ln/am;[BILcom/google/android/maps/driveabout/vector/dg;JJ)Ln/aF;

    move-result-object v0

    return-object v0
.end method
