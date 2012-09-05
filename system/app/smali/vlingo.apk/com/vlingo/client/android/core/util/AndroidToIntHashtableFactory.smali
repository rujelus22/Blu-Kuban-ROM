.class public Lcom/vlingo/client/android/core/util/AndroidToIntHashtableFactory;
.super Lcom/vlingo/client/core/util/ToIntHashtableFactory;
.source "AndroidToIntHashtableFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/vlingo/client/core/util/ToIntHashtable;
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;

    invoke-direct {v0}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;-><init>()V

    return-object v0
.end method

.method public create(I)Lcom/vlingo/client/core/util/ToIntHashtable;
    .registers 3
    .parameter "initialCapacity"

    .prologue
    .line 19
    new-instance v0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;

    invoke-direct {v0, p1}, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;-><init>(I)V

    return-object v0
.end method
