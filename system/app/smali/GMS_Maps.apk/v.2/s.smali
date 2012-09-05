.class Lv/s;
.super Ljava/lang/Object;


# instance fields
.field a:Lu/x;

.field b:I


# direct methods
.method public constructor <init>(Lu/x;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/s;->a:Lu/x;

    iput p2, p0, Lv/s;->b:I

    return-void
.end method
