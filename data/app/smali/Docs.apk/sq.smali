.class public abstract Lsq;
.super Ljava/lang/Object;
.source "OpenerOption.java"

# interfaces
.implements LpO;


# static fields
.field private static final a:Landroid/widget/SimpleAdapter$ViewBinder;


# instance fields
.field protected final a:Lss;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    new-instance v0, Lsr;

    invoke-direct {v0}, Lsr;-><init>()V

    sput-object v0, Lsq;->a:Landroid/widget/SimpleAdapter$ViewBinder;

    return-void
.end method

.method protected constructor <init>(Lss;)V
    .registers 3
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss;

    iput-object v0, p0, Lsq;->a:Lss;

    .line 121
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Landroid/widget/BaseAdapter;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lsq;",
            ">;)",
            "Landroid/widget/BaseAdapter;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 106
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsq;

    .line 108
    const-string v3, "key"

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 111
    :cond_20
    new-instance v0, Landroid/widget/SimpleAdapter;

    sget v3, LcU;->opener_option:I

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v4, v6

    new-array v5, v5, [I

    sget v1, LcS;->document_opener_option:I

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 113
    sget-object v1, Lsq;->a:Landroid/widget/SimpleAdapter$ViewBinder;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 114
    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lsq;->a:Lss;

    invoke-virtual {v0}, Lss;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
