.class Lcom/google/googlenav/aG;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/googlenav/aC;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 63
    new-instance v0, Lcom/google/googlenav/aC;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/aC;-><init>(Lcom/google/googlenav/aD;)V

    sput-object v0, Lcom/google/googlenav/aG;->a:Lcom/google/googlenav/aC;

    .line 65
    sget-object v0, Lcom/google/googlenav/aG;->a:Lcom/google/googlenav/aC;

    invoke-static {v0}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/h;)V

    .line 66
    return-void
.end method
