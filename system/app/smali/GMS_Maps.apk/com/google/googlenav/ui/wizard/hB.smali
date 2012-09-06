.class Lcom/google/googlenav/ui/wizard/hb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ha;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ha;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hb;->a:Lcom/google/googlenav/ui/wizard/ha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/cy;Lcom/google/googlenav/cy;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p1, Lcom/google/googlenav/cy;->c:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/googlenav/cy;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    check-cast p1, Lcom/google/googlenav/cy;

    check-cast p2, Lcom/google/googlenav/cy;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/hb;->a(Lcom/google/googlenav/cy;Lcom/google/googlenav/cy;)I

    move-result v0

    return v0
.end method
