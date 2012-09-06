.class Lr/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln/p;

.field public final b:Lr/O;


# direct methods
.method public constructor <init>(Ln/p;Lr/O;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lr/S;->a:Ln/p;

    .line 122
    iput-object p2, p0, Lr/S;->b:Lr/O;

    .line 123
    return-void
.end method
