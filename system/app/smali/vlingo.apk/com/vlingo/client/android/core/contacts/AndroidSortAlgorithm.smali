.class public Lcom/vlingo/client/android/core/contacts/AndroidSortAlgorithm;
.super Ljava/lang/Object;
.source "AndroidSortAlgorithm.java"

# interfaces
.implements Lcom/vlingo/client/core/util/SortAlgorithm;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sort([Ljava/lang/Object;II)V
    .registers 4
    .parameter "v"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 14
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 15
    return-void
.end method
