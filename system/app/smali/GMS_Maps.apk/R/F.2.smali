.class Lr/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lr/E;

.field final b:Lr/D;

.field final c:I


# direct methods
.method constructor <init>(Lr/E;Lr/D;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1107
    iput-object p1, p0, Lr/F;->a:Lr/E;

    .line 1108
    iput-object p2, p0, Lr/F;->b:Lr/D;

    .line 1109
    iput p3, p0, Lr/F;->c:I

    .line 1110
    return-void
.end method
