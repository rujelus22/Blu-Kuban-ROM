.class public Lcom/samsung/upnp/media/server/object/SortCriterionList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "SortCriterionList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public getSortCriterion(I)Ljava/lang/String;
    .registers 3
    .parameter "n"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/SortCriterionList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
