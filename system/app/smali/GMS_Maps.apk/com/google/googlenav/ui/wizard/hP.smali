.class Lcom/google/googlenav/ui/wizard/hP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/gz;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hM;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hP;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Ljava/util/EnumSet;)V
    .registers 3

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0, p1}, LaN/b;->a(Ljava/util/EnumSet;)V

    return-void
.end method
