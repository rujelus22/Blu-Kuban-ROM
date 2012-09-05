.class Lv/B;
.super Ljava/lang/Object;


# instance fields
.field public final b:Lw/e;

.field public c:I

.field public final d:I

.field public e:I

.field public f:Lv/B;

.field public g:Z


# direct methods
.method public constructor <init>(ILw/e;Lv/B;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv/B;->c:I

    iput-object p2, p0, Lv/B;->b:Lw/e;

    iput-object p3, p0, Lv/B;->f:Lv/B;

    iput p4, p0, Lv/B;->d:I

    iget v0, p0, Lv/B;->c:I

    iget v1, p0, Lv/B;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lv/B;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/B;->g:Z

    return-void
.end method
