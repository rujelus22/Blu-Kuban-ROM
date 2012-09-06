.class Lp/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lo/x;

.field b:I


# direct methods
.method public constructor <init>(Lo/x;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lp/s;->a:Lo/x;

    .line 195
    iput p2, p0, Lp/s;->b:I

    .line 196
    return-void
.end method
