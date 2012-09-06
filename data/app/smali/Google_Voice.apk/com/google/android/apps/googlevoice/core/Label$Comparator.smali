.class public Lcom/google/android/apps/googlevoice/core/Label$Comparator;
.super Ljava/lang/Object;
.source "Label.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/core/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/apps/googlevoice/core/Label;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/apps/googlevoice/core/Label;Lcom/google/android/apps/googlevoice/core/Label;)I
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    .line 373
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Label;->getPriority()I

    move-result v0

    .line 374
    .local v0, aPriority:I
    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Label;->getPriority()I

    move-result v1

    .line 375
    .local v1, bPriority:I
    if-ge v0, v1, :cond_c

    .line 376
    const/4 v2, -0x1

    .line 380
    :goto_b
    return v2

    .line 377
    :cond_c
    if-le v0, v1, :cond_10

    .line 378
    const/4 v2, 0x1

    goto :goto_b

    .line 380
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 370
    check-cast p1, Lcom/google/android/apps/googlevoice/core/Label;

    .end local p1
    check-cast p2, Lcom/google/android/apps/googlevoice/core/Label;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/core/Label$Comparator;->compare(Lcom/google/android/apps/googlevoice/core/Label;Lcom/google/android/apps/googlevoice/core/Label;)I

    move-result v0

    return v0
.end method
