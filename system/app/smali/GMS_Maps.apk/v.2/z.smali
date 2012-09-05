.class Lv/z;
.super Lv/B;


# instance fields
.field public final a:Lv/d;


# direct methods
.method public constructor <init>(ILv/B;Lv/d;)V
    .registers 6

    iget-object v0, p3, Lv/d;->c:Lw/e;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lv/B;-><init>(ILw/e;Lv/B;I)V

    iput-object p3, p0, Lv/z;->a:Lv/d;

    return-void
.end method
