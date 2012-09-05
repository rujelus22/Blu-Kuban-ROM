.class Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataNameComparable;
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
    name = "AppDataNameComparable"
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
    .line 154
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataNameComparable;->this$0:Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataNameComparable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataNameComparable;-><init>(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;)I
    .registers 5
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 158
    iget-object v0, p1, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->appName:Ljava/lang/String;

    iget-object v1, p2, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;

    check-cast p2, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;

    invoke-virtual {p0, p1, p2}, Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppDataNameComparable;->compare(Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;Lcom/sprint/dsa/diagnostics/MemoryUsageAdapter$AppData;)I

    move-result v0

    return v0
.end method
