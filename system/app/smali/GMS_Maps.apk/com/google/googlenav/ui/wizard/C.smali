.class public Lcom/google/googlenav/ui/wizard/C;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/googlenav/ui/wizard/C;->a:Z

    iput p3, p0, Lcom/google/googlenav/ui/wizard/C;->b:I

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    return-void
.end method
