.class final Lcom/anddoes/launcher/gs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/anddoes/launcher/y;

    check-cast p2, Lcom/anddoes/launcher/y;

    iget v0, p1, Lcom/anddoes/launcher/y;->a:I

    iget v1, p2, Lcom/anddoes/launcher/y;->a:I

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    iget v0, p1, Lcom/anddoes/launcher/y;->a:I

    iget v1, p2, Lcom/anddoes/launcher/y;->a:I

    if-le v0, v1, :cond_14

    const/4 v0, -0x1

    goto :goto_b

    :cond_14
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->h:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_b
.end method
