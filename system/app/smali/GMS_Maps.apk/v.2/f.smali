.class Lv/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lt/L;

.field public final b:I

.field public final c:D

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Lt/L;IDZI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/f;->a:Lt/L;

    iput p2, p0, Lv/f;->b:I

    iput-wide p3, p0, Lv/f;->c:D

    iput-boolean p5, p0, Lv/f;->d:Z

    iput p6, p0, Lv/f;->e:I

    return-void
.end method
