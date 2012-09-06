.class public Lcom/google/googlenav/appwidget/traffic/a;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 23
    const/high16 v0, 0x3f80

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 24
    iput p1, p0, Lcom/google/googlenav/appwidget/traffic/a;->a:I

    .line 25
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/traffic/a;->size()I

    move-result v0

    .line 30
    iget v1, p0, Lcom/google/googlenav/appwidget/traffic/a;->a:I

    if-le v0, v1, :cond_f

    .line 31
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/traffic/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_f
    const/4 v0, 0x0

    return v0
.end method
