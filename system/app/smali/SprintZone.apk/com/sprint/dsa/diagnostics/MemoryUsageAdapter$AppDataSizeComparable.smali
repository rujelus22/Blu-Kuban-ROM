.class Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataSizeComparable;
.super Ljava/lang/Object;
.source "MemoryUsageAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppDataSizeComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;


# direct methods
.method private constructor <init>(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataSizeComparable;->this$0:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataSizeComparable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataSizeComparable;-><init>(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;)I
    .registers 5
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 166
    iget v0, p1, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->pss:I

    iget v1, p2, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->pss:I

    if-le v0, v1, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    iget v0, p1, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->pss:I

    iget v1, p2, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->pss:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    goto :goto_7

    :cond_10
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;

    check-cast p2, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;

    invoke-virtual {p0, p1, p2}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataSizeComparable;->compare(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;)I

    move-result v0

    return v0
.end method
