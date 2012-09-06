.class Lcom/google/android/maps/driveabout/vector/dn;
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
    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 928
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dn;->a:Lcom/google/android/maps/driveabout/vector/dg;

    .line 929
    return-void
.end method


# virtual methods
.method public a(Ln/am;[BIJJ)Ln/al;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 933
    new-instance v0, LW/a;

    invoke-direct {v0, p2}, LW/a;-><init>([B)V

    .line 934
    invoke-virtual {v0, p3}, LW/a;->skipBytes(I)I

    .line 935
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dn;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {p1, v0, v1}, Ln/v;->a(Ln/am;Ljava/io/DataInput;Lcom/google/android/maps/driveabout/vector/dg;)Ln/v;

    move-result-object v0

    return-object v0
.end method
