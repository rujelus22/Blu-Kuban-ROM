.class final Lcom/anddoes/launcher/gu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/anddoes/launcher/y;

    check-cast p2, Lcom/anddoes/launcher/y;

    iget-wide v0, p1, Lcom/anddoes/launcher/y;->e:J

    iget-wide v2, p2, Lcom/anddoes/launcher/y;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    iget-wide v0, p1, Lcom/anddoes/launcher/y;->e:J

    iget-wide v2, p2, Lcom/anddoes/launcher/y;->e:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    const/4 v0, -0x1

    goto :goto_d

    :cond_18
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->h:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_d
.end method
